import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/coupon_code/coupon_code_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/product_detail/product_details_refresh.dart';

class CartViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  ApplyCouponCodeService _applyCouponCodeService =
      locator<ApplyCouponCodeService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  WishListService _wishListService = WishListService.create();
  final SnackBarView _snackbarView = new SnackBarView();
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  int _cartLen = 0;
  int get cartLen => _cartLen;
  double _rewardPointUser = 0;
  double get rewardPointUser => _rewardPointUser;
  String _couponSelected;
  String get couponSelected => _couponSelected;
  CartService _cartService = CartService.create();
  GetCartResponse _getCartResponse = new GetCartResponse();
  GetCartResponse get getCartResponse => _getCartResponse;
  CartTotResponse _cartTotResponse = new CartTotResponse();
  CartTotResponse get cartTotResponse => _cartTotResponse;
  BuiltList<String> _builtList = new BuiltList<String>();
  String _couponAmt = "0.0";
  String get couponAmt => _couponAmt;
  bool _chekReward = false;
  bool get chekReward => _chekReward;
  bool _emptyView = false;
  UserService _userService = UserService.create();
  String lang;
  ProductDetailsRefreshService _productDetailsRefreshService =
      locator<ProductDetailsRefreshService>();

  CartViewModel() {
    _applyCouponCodeService.registerCallback((Coupons coupon) {
      _builtList = (_builtList.toBuilder()..clear()).build();
      _couponSelected = coupon.code;
      _couponAmt = "${coupon.value}";
      _builtList = (_builtList.toBuilder()..add(coupon.code)).build();
      getCart();
      notifyListeners();
    });
  }

  loadData() async {
    lang = await _storageServiceSharedPreferences.getLanguage();
    getCart();
    getUserProfileData();
  }

  getCart() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<GetCartResponse> response =
            await runBusyFuture(_cartService.getCart(token: "Bearer $token"));

        if (response.statusCode == 200) {
          _getCartResponse = response.body;
          _cartLen = _getCartResponse.cart.length;
          _emptyView = true;
          getCalTot();
          notifyListeners();
        }
    }
  }

  getUserProfileData() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<EditProfileResponse> response = await runBusyFuture(
            _userService.getUserProfile(token: "Bearer $token"));

        if (response.body.status == 200) {
          _rewardPointUser = response.body.data.user.rewardPoints;
          notifyListeners();
        } else {}
    }
  }

  getCalTot() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();

        CartTotRequest request = CartTotRequest((r) => r
          ..deliveryType = 0
          ..coupons = _builtList.toBuilder()
          ..applyRewards = _chekReward ? 1 : 0
          ..uniqueCode = _getCartResponse.uniqueCode
          ..cartItems = _getCartResponse.cart.toBuilder());

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));

        if (response.statusCode == 200) {
          _cartTotResponse = response.body;
          notifyListeners();
        }
    }
  }

  add({int index}) {
    if (_getCartResponse.cart[index].quantity < 5) {
      addToCart(
        productId: _getCartResponse.cart[index].sId,
        quantity: 1,
      );
    } else {
      _snackbarView.showErrorSnackBarUni(
          message: getTranslatedValues("max_limit_msg"));
    }

    // if (addToCartIndex.elementAt(index).count == 5) return;
    // addToCartIndex.elementAt(index).count += 1;
    notifyListeners();
  }

  minus({int index}) {
    if (_getCartResponse.cart[index].quantity > 1) {
      addToCart(productId: _getCartResponse.cart[index].sId, quantity: -1);
    } else {
      removeFromCart(productId: _getCartResponse.cart[index].sId);
    }
    notifyListeners();
  }

  navigateWishlist() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.wishListGridView);
    }
  }

  navigateToSelfPickUp() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.pickupAddressView,
            arguments: PickupAddressViewArguments(
                deliveryType: 1,
                orderType: 1,
                productList: _getCartResponse.cart,
                cartTotResponse: _cartTotResponse));
        _navigationService.popRepeated(1);
    }
  }

  clearCouponData() {
    _couponSelected = "";
    _builtList = (_builtList.toBuilder()..clear()).build();
    _couponAmt = "0.0";
    getCalTot();
    notifyListeners();
  }

  navigateToDelivery() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.replaceWith(Routes.proceedToPayView,
            arguments: ProceedToPayViewArguments(
                orderType: 1,
                deliveryType: 0,
                productList: _getCartResponse.cart,
                uniqueCode: _getCartResponse.uniqueCode,
                cartTotResponse: _cartTotResponse));
        _navigationService.popRepeated(1);
    }
  }

  navigateToCouponPage() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.couponView);
    }
  }

  String getProductPrice({int index}) {
    double price;

    if (_getCartResponse.cart[index].offerType == 0) {
      price = _getCartResponse.cart[index].regularPrice -
          (_getCartResponse.cart[index].regularPrice *
              _getCartResponse.cart[index].productDiscount /
              100);
    } else if (_getCartResponse.cart[index] != null) {
      price = _getCartResponse.cart[index].regularPrice;
    }

    return "BD $price";
  }

  addItemInWishList({String slug, String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<AddItemResponse> response = await runBusyFuture(
        _wishListService.addToWishList(id: slug, token: "Bearer $token"));
    if (response.body.status == 200) {
      _snackbarView.showSuccessSnackBarUni(message: response.body.message);

      removeFromCart(productId: productId);
      notifyListeners();
    } else {}
  }

  addToCart({
    String productId,
    int quantity,
  }) async {
    final token = await _storageServiceSharedPreferences.getToken();
    AddToCartRequest request = AddToCartRequest((r) => r
      ..product_id = productId
      ..quantity = quantity);
    Response<AddToCartResponse> response = await runBusyFuture(
        _cartService.addToCart(body: request, token: "Bearer $token"));
    if (response.body.status == 200) {
      _cartRefreshService.callFunction();
      if (_productDetailsRefreshService != null) {
        _productDetailsRefreshService.callFunction();
      }
      print("item added to cart");
      loadData();
    } else {}
  }

  removeFromCart({String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<UniversalResponse> response = await runBusyFuture(
        _cartService.removeFromCart(id: productId, token: "Bearer $token"));
    if (response.body.status == 200) {
      _cartRefreshService.callFunction();
      _snackbarView.showSuccessSnackBarUni(
          message: getTranslatedValues("snack_remove_cart"));
      loadData();
      if (_productDetailsRefreshService != null) {
        _productDetailsRefreshService.callFunction();
      }
    } else {
      _snackbarView.showErrorSnackBarUni(message: response.body.message);
    }
  }

  changeChekReward({bool value}) {
    _chekReward = value;
    getCalTot();
    notifyListeners();
  }

  String getLanguageChangedText(var listItem, int type) {
    /*
        0- name,
        1- description,
        2- specification
        3- overview
         */
    String temp = "";
    if (lang == "en") {
      temp = type == 0
          ? listItem.name
          : type == 1
              ? listItem.description
              : type == 2
                  ? listItem.specifications
                  : listItem.overview;
    } else if (lang == "ar") {
      temp = type == 0
          ? listItem.nameAr
          : type == 1
              ? listItem.descriptionAr
              : type == 2
                  ? listItem.specificationsAr
                  : listItem.overviewAr;
      //listItem.nameAr;
    }
    return temp == null
        ? type == 0
            ? listItem.name
            : type == 1
                ? listItem.description
                : type == 2
                    ? listItem.specifications
                    : listItem.overview
        : temp;
  }
}
