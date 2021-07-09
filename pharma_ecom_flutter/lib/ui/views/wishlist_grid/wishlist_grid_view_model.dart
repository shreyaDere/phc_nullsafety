import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

class WishListGridViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  WishListService _wishListService = WishListService.create();
  CartService _cartService = CartService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SnackBarView _snackbarView = new SnackBarView();
  WishListResponse _wishListResponse;
  WishListResponse get wishListResponse => _wishListResponse;
  String _token;
  String get token => _token;
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  String lang;
  int _quentity = 0;
  int get quentity => _quentity;
  loadData() async {
    lang = await _storageServiceSharedPreferences.getLanguage();
    getWishList();
    getCartResponse();
  }

  onLoginClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.clearStackAndShow(Routes.loginView);
    }
  }

  getWishList() async {
    _token = await _storageServiceSharedPreferences.getToken();
    Response<WishListResponse> response = await runBusyFuture(
        _wishListService.getWishList(token: "Bearer $_token"));

    if (response.body.status == 200) {
      _wishListResponse = response.body;
      notifyListeners();
    } else {}
  }

  removeFromWishlist({String slugId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<DeleteItemFromWishListResponse> response = await runBusyFuture(
        _wishListService.deleteFromWishList(
            id: slugId, token: "Bearer $token"));
    if (response.body.status == 200) {
      getWishList();
      _snackbarView.showSuccessSnackBarUni(
          message: getTranslatedValues("snac_remove_wishlist"));
    } else {}
  }

  addToCart({String slugid, String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    AddToCartRequest request = AddToCartRequest((r) => r
      ..product_id = productId
      ..quantity = 1);
    Response<AddToCartResponse> response = await runBusyFuture(
        _cartService.addToCart(body: request, token: "Bearer $token"));
    if (response.body.status == 200) {
      removeFromWishlist(slugId: slugid);
      _snackbarView.showSuccessSnackBarUni(
          message: getTranslatedValues("snack_add_cart"));
      getCartResponse();
    } else {}
  }

  requestMoreData(int index) {}

  navigateToProductDetail(int index) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.productDetailView,
            arguments: ProductDetailViewArguments(
                slugId: _wishListResponse.data[index].sId));
    }
  }

  onCrossBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
    }
  }

  onMoveToCartBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
    }
  }

  getCartResponse() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<GetCartResponse> response =
            await _cartService.getCart(token: "Bearer $token");

        if (response.statusCode == 200) {
          _quentity = response.body.cart.length;
          notifyListeners();
        }
        _cartRefreshService.callback();
        notifyListeners();
    }
  }

  navigateCart() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.cartView);
    }
  }

  String getProductStatus({UniversalProduct productDetailsResponse}) {
    String temp = "";

    if (productDetailsResponse != null &&
        productDetailsResponse.manageStock != null &&
        productDetailsResponse.manageStock == 0) {
      productDetailsResponse.stockStatus != null &&
              productDetailsResponse.stockStatus == 1
          ? temp = getTranslatedValues("available")
          : temp = getTranslatedValues("unavailable");
    } else {
      if (productDetailsResponse != null &&
          productDetailsResponse.stockQuantity != null &&
          productDetailsResponse.stockQuantity <= 0) {
        if (productDetailsResponse != null &&
            productDetailsResponse.backorders != null) {
          switch (productDetailsResponse.backorders) {
            case 0:
              temp = getTranslatedValues("unavailable");
              break;
            case 1:
            case 2:
              temp = getTranslatedValues("available");
              break;
            default:
          }
        }
      } else {
        temp = getTranslatedValues("available");
      }
    }
    return temp;
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
