import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/bestseller/best_seller_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';

class BestsellerGridListViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final SnackBarView _snackbarView = new SnackBarView();
  CartService _cartService = CartService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  WishListService _wishListService = WishListService.create();
  Logger logger = getLogger("product grid list");
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  BestSellService _bestSellService = locator<BestSellService>();
  List<String> _wishlistIdlist = new List<String>();
  List<String> get wishlistIdlist => _wishlistIdlist;
  String _token;
  String get token => _token;
  BuiltList<UniversalProduct> _productGridListResponse =
      BuiltList<UniversalProduct>();
  BuiltList<UniversalProduct> get productGridListResponse =>
      _productGridListResponse;
  String lang;
  int _quentity = 0;
  int get quantity => _quentity;
  BestsellerGridListViewModel() {
    _bestSellService.registerCallback(() => loadData(_productGridListResponse));
  }

  loadData(BuiltList<UniversalProduct> product) async {
    _productGridListResponse = product;
    getWishList();
    getCartResponse();
    lang = await _storageServiceSharedPreferences.getLanguage();
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

  getCartResponse() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<GetCartResponse> response =
            await runBusyFuture(_cartService.getCart(token: "Bearer $token"));

        if (response.statusCode == 200 && response.body.cart != null) {
          _quentity = response.body.cart.length;
          notifyListeners();
        }
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

  addToWishlist({String slugId, String productId}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        if (_wishlistIdlist.contains(productId)) {
          removeFromWishlist(slugId: slugId);
        } else {
          Response<AddItemResponse> response = await runBusyFuture(
              _wishListService.addToWishList(
                  id: slugId, token: "Bearer $token"));
          if (response.body.status == 200) {
            removeFromCart(productId: productId);
            _snackbarView.showSuccessSnackBarUni(
                message: getTranslatedValues("snack_add_wishlist"));
            notifyListeners();
          } else {}
        }
        getWishList();
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

  removeFromCart({String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<UniversalResponse> response = await runBusyFuture(
        _cartService.removeFromCart(id: productId, token: "Bearer $token"));
    if (response.body.status == 200) {
      getCartResponse();
    } else {
      _snackbarView.showErrorSnackBarUni(
          message: getTranslatedValues("snack_remove_cart"));
    }
  }

  addProductToCart(int index, String slugid) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        AddToCartRequest request = AddToCartRequest((r) => r
          ..product_id = _productGridListResponse[index].sId
          ..quantity = 1);

        Response<AddToCartResponse> response = await runBusyFuture(
            _cartService.addToCart(body: request, token: "Bearer $token"));
        if (response.body.status == 200) {
          removeFromWishlist(slugId: slugid);
          getCartResponse();

          _snackbarView.showSuccessSnackBarUni(
              message: getTranslatedValues("snack_add_cart"));
          _cartRefreshService.callback();
        } else {}
    }
  }

  removeFromWishlist({String slugId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<DeleteItemFromWishListResponse> response = await runBusyFuture(
        _wishListService.deleteFromWishList(
            id: slugId, token: "Bearer $token"));
    if (response.body.status == 200) {
      getWishList();
    } else {}
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

  navigateCart() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.cartView);
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
}
