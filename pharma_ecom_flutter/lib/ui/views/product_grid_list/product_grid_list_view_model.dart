import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/productgridlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/filters/apply_filters_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/wishlist/wish_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/productgridlist/Product_grid_list.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/product_grid/product_grid_service.dart';

class ProductGridListViewModel extends ConnectivityAwareViewModel {
  Logger logger = getLogger("product grid list");
  List<String> _sortByOptions = [
    "Sort by",
    "Price - High to Low",
    "Price - Low to High",
    "Alphabaticaly - A to Z",
    "Alphabaticaly - Z to A"
  ];
  final SnackBarView _snackbarView = new SnackBarView();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  NavigationService _navigationService = locator<NavigationService>();
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  ApplyFiltersService _applyFiltersService = locator<ApplyFiltersService>();
  ProductGridService _productGridService = locator<ProductGridService>();

  CartService _cartService = CartService.create();
  ProductGridListService _productGridListService =
      ProductGridListService.create();
  WishListService _wishListService = WishListService.create();

  int _quentity = 0;
  int get quantity => _quentity;
  int _selectedSortByOptionIndex = 0;
  List<String> get sortByOptions => _sortByOptions;
  int get selectedSortByOptionIndex => _selectedSortByOptionIndex;
  ProductGridListResponse _productGridListResponse;
  ProductGridListResponse get productGridListResponse =>
      _productGridListResponse;
  String _token;
  String get token => _token;
  String _sortString;
  String _slugId;
  String lang;
  int _pageNo = 1;
  int _pageSize = 20;
  String _categoryName;
  int flag = 0;
  int _index = 0;
  int get index => index;

  List<String> _wishlistIdlist = new List<String>();
  List<String> get wishlistIdlist => _wishlistIdlist;
  // BuiltList<UniversalProduct> _scrollList = new BuiltList<UniversalProduct>();
  // BuiltList<UniversalProduct> get scrollList => _scrollList;
  BuiltList<UniversalProduct> _productScrollGridList;
  BuiltList<UniversalProduct> get productScrollGridList =>
      _productScrollGridList;
  List<UniversalProduct> newItems = new List<UniversalProduct>();
  BuiltList<int> selectedCategory = new BuiltList<int>();
  GetCartResponse _getCartResponse;
  GetCartResponse get getCartResponseData => _getCartResponse;
  BuiltList<UniversalProduct> _cartProduct = BuiltList<UniversalProduct>();
  BuiltList<UniversalProduct> get cartProduct => _cartProduct;

  final PagingController<int, UniversalProduct> pagingController =
      PagingController(firstPageKey: 0);

  ProductGridListViewModel() {
    _productGridService
        .registerCallback(() => loadData(_slugId, _categoryName));
  }

  loadData(String slugId, String categoryName) async {
    pagingController.addPageRequestListener((pageKey) {
      fetchPage(_slugId, pageKey);
    });
    _applyFiltersService.registerCallback((BuiltList<int> selectedCat,
        BuiltList<AttributesFilters> selectedAttributes) {
      getProductListFilters(
          selectedCat: selectedCat, selectedAttributes: selectedAttributes);
    });
    getWishList();
    getCartResponse();
    _slugId = slugId;
    _categoryName = categoryName;
    lang = await _storageServiceSharedPreferences.getLanguage();
  }

  Future<void> fetchPage(String slugId, int pageKey) async {
    try {
      getAllProducts(slugId: _slugId);
      ProductGridlistRequest request = ProductGridlistRequest((r) => r
        ..sort = _sortString
        ..currentPage = ((pageKey / 10) + 1).truncate()
        ..pageSize = 10
        ..subcategories = selectedCategory.toBuilder());
      Response<ProductGridListResponse> response = await runBusyFuture(
          _productGridListService.productGridList(
              id: slugId, token: "Bearer $_token", body: request));
      _pageNo = pageKey;
      _productGridListResponse = response.body;
      _productScrollGridList = response.body.data.products;
      newItems = response.body.data.products.toList();
      if (flag == 1)
        _pageSize = response.body.data.products.length < 9 ? 1 : 20;
      final isLastPage = newItems.length >= _pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        pagingController.appendPage(newItems, nextPageKey);
      }
      notifyListeners();
    } catch (error) {
      pagingController.error = error;
    }
  }

  int getProductCount() {
    return _pageNo + 10;
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
          _getCartResponse = response.body;
          _cartProduct =
              (_cartProduct.toBuilder()..addAll(response.body.cart)).build();
          notifyListeners();
        }
    }
  }

  getAllProducts({String slugId}) async {
    Response<ProductGridListResponse> response = await runBusyFuture(
        _productGridListService.productGridList(
            id: slugId, token: "Bearer $_token"));
    logger.d("_pageSize -$_pageSize");
    // _scrollList =
    //     (_scrollList.toBuilder()..addAll(response.body.data.products)).build();
    _pageSize = (response.body.data.products.length / 10).truncate();
    notifyListeners();
  }

  minus({int index, String slug}) {
    if (_getCartResponse.cart[index].quantity > 1) {
      addProductToCart(_getCartResponse.cart[index].sId, slug, -1);
    } else {
      removeFromCart(productId: _getCartResponse.cart[index].sId);
    }
    newItems = new List<UniversalProduct>();
    _productScrollGridList = new BuiltList<UniversalProduct>();
    fetchPage(_slugId, 0);
    pagingController.refresh();
    notifyListeners();
  }

  add({int index, String slug}) {
    if (_getCartResponse.cart[index].quantity < 5) {
      addProductToCart(
        _getCartResponse.cart[index].sId,
        slug,
        1,
      );
    } else {
      _snackbarView.showErrorSnackBarUni(
          message: getTranslatedValues("max_limit_msg"));
    }
    // if (addToCartIndex.elementAt(index).count == 5) return;
    // addToCartIndex.elementAt(index).count += 1;
    newItems = new List<UniversalProduct>();
    _productScrollGridList = new BuiltList<UniversalProduct>();
    fetchPage(_slugId, 0);
    pagingController.refresh();
    notifyListeners();
  }

  getIndex(String sId) {
    _index = _cartProduct.indexWhere((uniProduct) => uniProduct.sId == sId);
    logger.d("quantity: ${_cartProduct[0].quantity}");
    return _index;
  }

/*
  getProductList({String slugId, int page}) async {
    _token = await _storageServiceSharedPreferences.getToken();
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        ProductGridlistRequest request = ProductGridlistRequest((r) => r
          ..sort = _sortString
          ..currentPage = page
          ..pageSize = 10);
        Response<ProductGridListResponse> response = await runBusyFuture(
            _productGridListService.productGridList(
                id: slugId, token: "Bearer $_token", body: request));
        if (response.body.status == 200) {
          _productGridListResponse = response.body;
          _productGridList = (_productGridList.toBuilder()..clear()).build();
          _productGridList = (_productGridList.toBuilder()
                ..addAll(response.body.data.products))
              .build();
          notifyListeners();
        } else {}
    }
  }
*/
  getProductListFilters(
      {BuiltList<int> selectedCat,
      BuiltList<AttributesFilters> selectedAttributes}) {
    // ProductGridlistRequest request = ProductGridlistRequest((r) => r
    //   ..sort = _sortString
    //   ..attributes = selectedAttributes.toBuilder()
    //   ..subcategories = selectedCat.toBuilder());
    // Response<ProductGridListResponse> response = await runBusyFuture(
    //     _productGridListService.productGridList(
    //         id: _slugId, token: "Bearer $_token", body: request));

    // if (response.body.status == 200) {
    //   _productGridListResponse = response.body;
    //   notifyListeners();
    // } else {}
    flag = 1;
    selectedCategory =
        (selectedCategory.toBuilder()..addAll(selectedCat)).build();
    newItems = new List<UniversalProduct>();
    _pageNo = 1;
    _productScrollGridList = new BuiltList<UniversalProduct>();
    fetchPage(_slugId, 0);
    pagingController.refresh();
    notifyListeners();
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
      _wishlistIdlist.clear();
      for (var item in response.body.data) {
        _wishlistIdlist.add(item.sId);
      }
    } else {}
    notifyListeners();
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

  actualProductPrise(int index) {
    double actualPrice;
    double price = _productGridListResponse.data.products[index].regularPrice;
    double discount = _productGridListResponse.data.products[index].discount;
    actualPrice = discount == null ? price : price - (price * (discount / 100));
    return actualPrice.toString();
  }

  addProductToCart(String id, String slugid, int qantity) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        AddToCartRequest request = AddToCartRequest((r) => r
          ..product_id = id //_productGridListResponse.data.products[index].sId
          ..quantity = qantity);

        Response<AddToCartResponse> response = await runBusyFuture(
            _cartService.addToCart(body: request, token: "Bearer $token"));
        if (response.body.status == 200) {
          removeFromWishlist(slugId: slugid);
          getCartResponse();
          qantity == -1
              ? _snackbarView.showErrorSnackBarUni(
                  message: getTranslatedValues("snack_remove_cart"))
              : _snackbarView.showSuccessSnackBarUni(
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
    if (response != null && response.body.status == 200) {
      getWishList();
      pagingController.refresh();
    } else {}
  }

  requestMoreData(int index) async {}

  selectedSortByOption(int index) {
    if (index == _selectedSortByOptionIndex) {
      _selectedSortByOptionIndex = 0;
    } else {
      switch (index) {
        case 1:
          _sortString = "phl";
          break;
        case 2:
          _sortString = "plh";
          break;
        case 3:
          _sortString = "az";
          break;
        case 4:
          _sortString = "za";
          break;
        default:
          _sortString = "";
          break;
      }
      newItems = new List<UniversalProduct>();
      _pageNo = 1;
      _productScrollGridList = new BuiltList<UniversalProduct>();
      fetchPage(_slugId, 0);
      pagingController.refresh();
      _selectedSortByOptionIndex = index;
    }
    notifyListeners();
  }

  navigateToFilters() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.filtersView,
            arguments: FiltersViewArguments(
                productGridListResponse: _productGridListResponse));
    }
  }

  removeFromCart({String productId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<UniversalResponse> response = await runBusyFuture(
        _cartService.removeFromCart(id: productId, token: "Bearer $token"));
    if (response.body.status == 200) {
      loadData(_slugId, "");
      getCartResponse();
    } else {
      _snackbarView.showErrorSnackBarUni(
          message: getTranslatedValues("snack_remove_cart"));
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

    return price == null ? "" : "BD $price";
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
