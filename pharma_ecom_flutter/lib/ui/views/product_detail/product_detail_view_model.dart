import 'package:carousel_slider/carousel_slider.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/productdetails/product_details.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/bestseller/best_seller_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/product_grid/product_grid_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/product_detail/product_details_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/dasahboard/dashboard_refresh.dart';

class ProductDetailsViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SnackBarView _snackbarView = new SnackBarView();
  BestSellService _bestSellService = locator<BestSellService>();
  ProductGridService _productGridService = locator<ProductGridService>();
  ProductDetailsRefreshService _productDetailsRefreshService =
      locator<ProductDetailsRefreshService>();
  Logger logger = getLogger("product detail");
  ProductDetailResponse _productDetailsResponse;
  ProductDetailResponse get productDetailsResponse => _productDetailsResponse;
  WishListService _wishListService = WishListService.create();
  int _selectOfferIndex = -1;
  int _currentIndexCarousel = 0;
  int get selectOfferIndex => _selectOfferIndex;
  int get currentIndexCarousel => _currentIndexCarousel;
  ProductDetailsService _productDetailsService = ProductDetailsService.create();
  CartService _cartService = CartService.create();
  double actualPrice;
  int _itemCount = 1;
  int _quantity = 0;
  int get quantity => _quantity;
  int get count => _itemCount;
  bool _cartStatus = false;
  bool get cartStatus => _cartStatus;
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  DashboardRefreshService _dashboardRefreshService =
      locator<DashboardRefreshService>();
  String lang;
  GetCartResponse _getCartResponse;
  GetCartResponse get getCartResponseData => _getCartResponse;
  BuiltList<UniversalProduct> _cartProduct = BuiltList<UniversalProduct>();
  BuiltList<UniversalProduct> get cartProduct => _cartProduct;
  int _index = 0;
  int get index => index;

  ProductDetailsViewModel() {
    _productDetailsRefreshService.registerCallback(() => loadData());
  }

  loadData({String slugId}) async {
    lang = await _storageServiceSharedPreferences.getLanguage();
    getCartResponse();
    getProductDetails(slugId: slugId);
  }

  getProductDetails({String slugId}) async {
    // final token = await _storageServiceSharedPreferences.getToken();
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        Response<ProductDetailResponse> response = await runBusyFuture(
            _productDetailsService.productDetails(id: "$slugId"));
        if (response.body.status == 200) {
          _productDetailsResponse = response.body;
          _itemCount = 1;
          getWishListItems();
          notifyListeners();
        } else {}
    }
    actualProductPrise();
  }

  getIndex() {
    _index = _cartProduct.indexWhere((uniProduct) =>
        uniProduct.sId == _productDetailsResponse.data.product.sId);
    logger.d(_index);
    return _index;
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
          _quantity = response.body.cart.length;
          _getCartResponse = response.body;
          _cartProduct =
              (_cartProduct.toBuilder()..addAll(response.body.cart)).build();

          notifyListeners();
        }
    }
  }

  actualProductPrise() {
    double price = _productDetailsResponse.data.product.regularPrice;
    int discount = _productDetailsResponse.data.product.discount;
    actualPrice = discount != null ? price - (price * (discount / 100)) : price;
  }

  void onCarousalPageChanged(int index, CarouselPageChangedReason reason) {
    _currentIndexCarousel = index;
    notifyListeners();
  }

  selectOffer({int index}) {
    if (_selectOfferIndex == index) {
      _selectOfferIndex = -1;
    } else {
      _selectOfferIndex = index;
    }
    notifyListeners();
  }

  navigateToProductList() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.productGridListView);
    }
  }

  addToCart({String productId, int quantity}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        AddToCartRequest request = AddToCartRequest((r) => r
          ..product_id = _productDetailsResponse.data.product.sId
          ..quantity = quantity);

        Response<AddToCartResponse> response = await runBusyFuture(
            _cartService.addToCart(body: request, token: "Bearer $token"));
        if (response.body.status == 200) {
          deleteWishListItem();
          _snackbarView.showSuccessSnackBarUni(
              message: getTranslatedValues("snack_add_cart"));
          getCartResponse();
          if (_cartRefreshService != null) {
            _cartRefreshService.callback();
          }
          if (_bestSellService != null) {
            _bestSellService.callFunction();
          }
          if (_productGridService != null) {
            _productGridService.callFunction();
          }
          if (_dashboardRefreshService != null) {
            _dashboardRefreshService.callFunction();
          }
        } else {}
    }
  }

  addItemInWishList() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<AddItemResponse> response = await runBusyFuture(
        _wishListService.addToWishList(
            id: _productDetailsResponse.data.product.slug,
            token: "Bearer $token"));
    if (response.body.status == 200) {
      _cartStatus = true;
      removeFromCart(productId: _productDetailsResponse.data.product.sId);
      _snackbarView.showSuccessSnackBarUni(
          message: getTranslatedValues("snack_add_wishlist"));
      getCartResponse();
      notifyListeners();
    } else {}
  }

  getWishListItems() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<WishListResponse> response = await runBusyFuture(
        _wishListService.getWishList(token: "Bearer $token"));
    if (response.body.status == 200) {
      // logger.d(response.body.data.length);
      for (var slugIds in response.body.data) {
        if (slugIds.slug == _productDetailsResponse.data.product.slug) {
          //_productDetailsResponse.data.product.slug
          _cartStatus = true;
          notifyListeners();
        }
      }
    } else {}
  }

  removeFromCart({String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<UniversalResponse> response = await runBusyFuture(
        _cartService.removeFromCart(id: productId, token: "Bearer $token"));
    if (response.body.status == 200) {
      if (_cartRefreshService != null) {
        _cartRefreshService.callFunction();
      }
      if (_dashboardRefreshService != null) {
        _dashboardRefreshService.callFunction();
      }
      _snackbarView.showSuccessSnackBarUni(
          message: getTranslatedValues("snack_remove_cart"));
      loadData();
    } else {
      _snackbarView.showErrorSnackBarUni(message: response.body.message);
    }
  }

  deleteWishListItem() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<DeleteItemFromWishListResponse> response = await runBusyFuture(
        _wishListService.deleteFromWishList(
            id: _productDetailsResponse.data.product.slug,
            token: "Bearer $token"));
    if (response.body.status == 200) {
      _cartStatus = false;
      getCartResponse();
      notifyListeners();
    } else {}
  }

  navigateToAllComments() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.allCommentsView,
            arguments: AllCommentsViewArguments(
                productDetailResponse: _productDetailsResponse));
    }
  }

  navigateToNewComments() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.addCommentsView,
            arguments: AddCommentsViewArguments(
                productDetails: _productDetailsResponse));
    }
  }

  navigateToCategory(int index) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        getProductDetails(
            slugId: _productDetailsResponse.data.product.upsellIds[index].slug);
    }
  }

  navigateSearch() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.searchBarView);
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

/*
  add() {
    if (_itemCount == 5) return;
    _itemCount += 1;
    notifyListeners();
    logger.d("Add:- $count");
  }

  minus() {
    if (_itemCount == 1) return;
    _itemCount -= 1;
    notifyListeners();
    logger.d("minus:- $count");
  }
*/
  minus({int index}) {
    if (_getCartResponse.cart[index].quantity > 1) {
      addToCart(productId: _getCartResponse.cart[index].sId, quantity: -1);
    } else {
      removeFromCart(productId: _getCartResponse.cart[index].sId);
    }

    notifyListeners();
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

  addToWishList() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _cartStatus ? deleteWishListItem() : addItemInWishList();
    }
  }

  double getHeightCommentView({int length}) {
    switch (length) {
      case 1:
        return 50;
        break;
      case 2:
        return 100;
        break;
      case 3:
        return 170;
        break;
      default:
        return 1;
        break;
    }
  }

  bool getInfoStockMessageStatus() {
    bool temp = false;

    if (productDetailsResponse != null &&
        productDetailsResponse.data.product.manageStock != null &&
        productDetailsResponse.data.product.manageStock == 0) {
      productDetailsResponse.data.product.stockStatus != null &&
              productDetailsResponse.data.product.stockStatus == 1
          ? temp = false
          : temp = false;
    } else {
      if (productDetailsResponse != null &&
          productDetailsResponse.data.product.stockQuantity != null &&
          productDetailsResponse.data.product.stockQuantity <= 0) {
        if (productDetailsResponse.data.product.backorders != null) {
          switch (productDetailsResponse.data.product.backorders) {
            case 0:
              temp = false;
              break;
            case 1:
              temp = true;
              break;
            case 2:
              temp = false;
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

  String getProductStatus() {
    String temp = "";

    if (productDetailsResponse != null &&
        productDetailsResponse.data.product.manageStock != null &&
        productDetailsResponse.data.product.manageStock == 0) {
      productDetailsResponse.data.product.stockStatus != null &&
              productDetailsResponse.data.product.stockStatus == 1
          ? temp = getTranslatedValues("available")
          : temp = getTranslatedValues("unavailable");
    } else {
      if (productDetailsResponse != null &&
          productDetailsResponse.data.product.stockQuantity != null &&
          productDetailsResponse.data.product.stockQuantity <= 0) {
        if (productDetailsResponse != null &&
            productDetailsResponse.data.product.backorders != null) {
          switch (productDetailsResponse.data.product.backorders) {
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

  bool addToCartStatus() {
    bool temp = true;

    if (productDetailsResponse != null &&
        productDetailsResponse.data.product.manageStock != null &&
        productDetailsResponse.data.product.manageStock == 0) {
      productDetailsResponse.data.product.stockStatus != null &&
              productDetailsResponse.data.product.stockStatus == 1
          ? temp = true
          : temp = false;
    } else {
      if (productDetailsResponse != null &&
          productDetailsResponse.data.product.stockQuantity != null &&
          productDetailsResponse.data.product.stockQuantity <= 0) {
        if (productDetailsResponse.data.product.backorders != null) {
          switch (productDetailsResponse.data.product.backorders) {
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

  String getProductPrice() {
    double dPrice = 0;

    if (_productDetailsResponse != null &&
        _productDetailsResponse.data != null &&
        _productDetailsResponse.data.product.offerType == 0) {
      dPrice = _productDetailsResponse.data.product.regularPrice -
          (_productDetailsResponse.data.product.regularPrice *
              _productDetailsResponse.data.product.productDiscount /
              100);
    } else {
      dPrice = _productDetailsResponse.data.product.regularPrice;
    }

    return "BD $dPrice";
  }

  String getOfferCode() {
    String offerCode = "";
    if (_productDetailsResponse != null &&
        _productDetailsResponse.data != null &&
        _productDetailsResponse.data.product.offerType == 1) {
      switch (_productDetailsResponse.data.product.bogoOffer) {
        case "0":
          offerCode = getTranslatedValues("boneg");
          break;
        case "1":
          offerCode = getTranslatedValues("btwog");
          break;
        case "2":
          offerCode = getTranslatedValues("bonegfifty");
          break;
        default:
          break;
      }
    }
    return offerCode;
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

  getDiscountText() {
    if (_productDetailsResponse != null &&
        _productDetailsResponse.data != null &&
        _productDetailsResponse.data.product.productDiscount != 0) {
      return "BD ${_productDetailsResponse.data.product.regularPrice.toString()}";
    } else {
      return "";
    }
  }
}
