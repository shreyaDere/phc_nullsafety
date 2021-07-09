import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_addset_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_adset_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/upload_prescription/upload_prescription_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/addset/addset.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/main.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/dasahboard/dashboard_refresh.dart';

class DashboardViewModel extends ConnectivityAwareViewModel {
  DashboardViewModel() {
    _topCarousel = Adsets();
    _adBanner1 = Adsets();
    _shimmerFlag = false;
    _appDrawerTService.registerCallback(() => loadData());
    _uploadPrescriptionService.registerCallback(() {});
    _dashboardRefreshService.registerCallback(() => loadData());
    _cartRefreshService.registerCallback(() => loadData());
  }
  NavigationService _navigationService = locator<NavigationService>();
  final SnackBarView _snackbarView = new SnackBarView();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();
  DashboardRefreshService _dashboardRefreshService =
      locator<DashboardRefreshService>();
  AdsetsService _adsetsService = AdsetsService.create();
  CartService _cartService = CartService.create();
  WishListService _wishListService = WishListService.create();
  Logger logger = Logger();
  bool _shimmerFlag;
  bool get shimmerFlag => _shimmerFlag;
  GetMultipleAdsetsResponse _adsetsLocal;
  GetMultipleAdsetsResponse get adsetsLocal => _adsetsLocal;
  Adsets _topCarousel;
  Adsets get topCarousel => _topCarousel;
  Adsets _adBanner1;
  Adsets get populerDesigns => _adBanner1;
  String _popupflag = "0";
  String get popupflag => _popupflag;
  String _token;
  String get token => _token;
  List<String> _wishlistIdlist = new List<String>();
  List<String> get wishlistIdlist => _wishlistIdlist;
  final UploadPrescriptionReactiveService _uploadPrescriptionService =
      locator<UploadPrescriptionReactiveService>();
  String lang;
  BuiltList<UniversalProduct> _cartProduct = BuiltList<UniversalProduct>();
  BuiltList<UniversalProduct> get cartProduct => _cartProduct;
  GetCartResponse _getCartResponse;
  GetCartResponse get getCartResponseData => _getCartResponse;
  int _index;
  int get index => _index;

  loadData() async {
    initData();
    lang = await _storageServiceSharedPreferences.getLanguage();
  }

  initData() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        disablePopup();
        getMultipleAdsets();
        _shimmerFlag = true;
        _token = await _storageServiceSharedPreferences.getToken();
        String lang = await _storageServiceSharedPreferences.getLanguage();
        MyApp.setLocale(
            GetPackage.Get.context,
            Locale(lang == null && lang.isEmpty ? "en" : lang,
                lang.contains("ar") ? "SA" : "US"));
        notifyListeners();
    }
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

  disablePopup() {
    Future.delayed(Duration(seconds: 2), () async {
      _shimmerFlag = false;
      getPopUpDashboardStatus();
      notifyListeners();
    });
  }

  getMultipleAdsets() async {
    final token = await _storageServiceSharedPreferences.getToken();
    final MultipleAdsetsRequest request = MultipleAdsetsRequest(
      (b) => b..adsets.addAll(["categoriesabh", "genadset", "productabh"]),
    );

    Response<GetMultipleAdsetsResponse> response = await runBusyFuture(
        _adsetsService.getMultipleAdsets(
            body: request, token: "Bearer $token"));
    if (response.body.status == 200) {
      _adsetsLocal = response.body;
      getWishList();
      getCartResponse();
      notifyListeners();
    } else {}
  }

  getCartResponse() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<GetCartResponse> response =
            await runBusyFuture(_cartService.getCart(token: "Bearer $token"));
        _cartProduct = (_cartProduct.toBuilder()..clear()).build();
        if (response.statusCode == 200) {
          _getCartResponse = response.body;
          _cartProduct =
              (_cartProduct.toBuilder()..addAll(response.body.cart)).build();
          notifyListeners();
        }
    }
  }

  void onCarousalPageChanged(index, reason) {}
  navigateToCategory() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.categoryView);
    }
  }

  getWishList() async {
    _token = await _storageServiceSharedPreferences.getToken();
    Response<WishListResponse> response = await runBusyFuture(
        _wishListService.getWishList(token: "Bearer $_token"));

    if (response.body.status == 200) {
      _wishlistIdlist.clear();
      for (var item in response.body.data) {
        _wishlistIdlist.add(item.sId);
      }
      notifyListeners();
    } else {}
  }

  navigateToProductDetail({String slugId}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.productDetailView,
            arguments: ProductDetailViewArguments(slugId: slugId));
    }
  }

  removeFromCart({String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<UniversalResponse> response = await runBusyFuture(
        _cartService.removeFromCart(id: productId, token: "Bearer $token"));
    if (response.body.status == 200) {
      loadData();
    } else {
      _snackbarView.showErrorSnackBarUni(
          message: getTranslatedValues("snack_remove_cart"));
    }
  }

  onSearchClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.searchBarView);
    }
  }

  navigateToProductList({String slugId, String productName}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.productGridListView,
            arguments: ProductGridListViewArguments(
                slugId: slugId, categoryName: productName));
    }
  }

  actualProductPrise({int regPrice, int dis}) {
    double actualPrise = regPrice - (regPrice * (dis / 100));
    return actualPrise.toString();
  }

  addToCart({String productId, String slugid, int quantity}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        AddToCartRequest request = AddToCartRequest((r) => r
          ..product_id = productId
          ..quantity = quantity);
        Response<AddToCartResponse> response = await runBusyFuture(
            _cartService.addToCart(body: request, token: "Bearer $token"));
        if (response.body.status == 200) {
          removeFromWishlist(slugId: slugid);
          if (response.body.cart.quantity < 5) {
            _snackbarView.showSuccessSnackBarUni(
                message: getTranslatedValues("snack_add_cart"));
          } else {
            _snackbarView.showErrorSnackBarUni(
                message: getTranslatedValues("max_limit_msg"));
          }

          _cartRefreshService.callback();
          notifyListeners();
        } else {}
    }
  }

  addToWishlist({String slugId, String productId}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (_wishlistIdlist.contains(productId)) {
          removeFromWishlist(slugId: slugId);
        } else {
          final token = await _storageServiceSharedPreferences.getToken();
          Response<AddItemResponse> response = await runBusyFuture(
              _wishListService.addToWishList(
                  id: slugId, token: "Bearer $token"));

          if (response.body.status == 200) {
            _snackbarView.showSuccessSnackBarUni(
                message: getTranslatedValues("snack_add_wishlist"));
            _cartRefreshService.callback();
            notifyListeners();
            removeFromCart(productId: productId);
            notifyListeners();
          }
        }
    }
  }

  removeFromWishlist({String slugId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<DeleteItemFromWishListResponse> response = await runBusyFuture(
        _wishListService.deleteFromWishList(
            id: slugId, token: "Bearer $token"));
    if (response.body.status == 200) {
      loadData();
      notifyListeners();
    } else {}
  }

  onUploadPrescriptionPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.uploadPrescriptionView);
    }
  }

  getPopUpDashboardStatus() async {
    _popupflag = await _storageServiceSharedPreferences.getPopupHomeFlag();
    if (popupflag != null) {
      _popupflag = "1";
    } else {
      _popupflag = "0";
    }
  }

  closePopUpUpdateStatus() async {
    _storageServiceSharedPreferences.savePopupHomeFlag(status: "0");
    _popupflag = await _storageServiceSharedPreferences.getPopupHomeFlag();
    notifyListeners();
  }

  String getProductPrice({UniversalProduct product}) {
    double price;

    if (product.offerType != null && product.offerType == 0) {
      price = product.regularPrice -
          (product.regularPrice * product.productDiscount / 100);
    } else if (product != null) {
      price = product.regularPrice;
    }

    return "BD $price";
  }

  onCarousalTap({String slug}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
    }
  }

  bool addToCartStatus({UniversalProduct productDetailsResponse}) {
    bool temp = true;

    if (productDetailsResponse != null &&
        productDetailsResponse.manageStock != null &&
        productDetailsResponse.manageStock == 0) {
      productDetailsResponse.stockStatus != null &&
              productDetailsResponse.stockStatus == 1
          ? temp = true
          : temp = false;
    } else {
      if (productDetailsResponse != null &&
          productDetailsResponse.stockQuantity != null &&
          productDetailsResponse.stockQuantity <= 0) {
        if (productDetailsResponse.backorders != null) {
          switch (productDetailsResponse.backorders) {
            case 0:
              temp = false;
              break;
            case 1:
              temp = true;
              break;
            case 2:
              temp = true;
              break;
            default:
          }
        }
      } else {
        temp = false;
      }
    }
    return temp;
  }

  navigateToBestSellList({BuiltList<UniversalProduct> product}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.bestsellerGridListView,
            arguments: BestsellerGridListViewArguments(product: product));
        break;
    }
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
      temp = listItem.name;
    } else if (lang == "ar") {
      temp = listItem.nameAr;
    }
    return temp == null ? listItem.name : temp;
  }

  minus({int index, String slugId}) {
    if (_getCartResponse.cart[index].quantity > 1) {
      addToCart(
          productId: _getCartResponse.cart[index].sId,
          slugid: slugId,
          quantity: -1);
    } else {
      removeFromCart(productId: _getCartResponse.cart[index].sId);
    }
    notifyListeners();
  }

  add({int index, String slugId}) {
    if (_getCartResponse.cart[index].quantity < 5) {
      addToCart(
        productId: _getCartResponse.cart[index].sId,
        slugid: slugId,
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

  getIndex(int index) {
    _index = _cartProduct.indexWhere((uniProduct) =>
        uniProduct.sId == _adsetsLocal.data.adsets[2].products[index].sId);
    return _index;
  }
}
