import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/search_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/searchbar_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/searchbar/search_bar.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:flutter/material.dart';

class SearchBarViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  SearchBarService _searchBarService = SearchBarService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  CartService _cartService = CartService.create();
  BuiltList<SerarchProducts> _productList = new BuiltList<SerarchProducts>();
  BuiltList<SearchBrands> _brandList = new BuiltList<SearchBrands>();
  BuiltList<SearchBrands> get brandList => _brandList;
  BuiltList<SerarchProducts> get productList => _productList;
  Logger logger = getLogger("search view");
  int _quentity = 0;
  int get quantity => _quentity;
  String _searchString;
  String get searchString => _searchString;
  TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;
  int flag = 0;

  loadData() async {
    getCartResponse();
  }

  getSearchResponse({String search}) async {
    flag += 1;
    SearchRequest searchReq = new SearchRequest();
    searchReq = SearchRequest((r) => r..search = search);
    Response<SearchBarResponse> response =
        await runBusyFuture(_searchBarService.getSearchString(body: searchReq));
    if (response.body.status == 200) {
      _brandList = (_brandList.toBuilder()..clear()).build();
      _productList = (_productList.toBuilder()..clear()).build();
      for (var i = 0; i < response.body.data.brands.length; i++) {
        if (i < 5) {
          _brandList = (_brandList.toBuilder()
                ..add(response.body.data.brands[i]))
              .build();
        } else {
          break;
        }
      }
      for (var i = 0; i < response.body.data.products.length; i++) {
        if (i < 10) {
          _productList = (_productList.toBuilder()
                ..add(response.body.data.products[i]))
              .build();
        } else {
          break;
        }
      }
      _controller.text = _searchString;
      logger.d(
          "BrandList:- ${_brandList.length}, ProductList:- ${_productList.length}");
      notifyListeners();
    } else {}
  }

  changeSearchValue(String value) {
    _searchString = value;
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
        }
    }
  }

  navigateProductDetailView(String slug) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.replaceWith(Routes.productDetailView,
            arguments: ProductDetailViewArguments(slugId: slug));
    }
  }

  navigateToBrandPage(String name) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.brandGridListView,
            arguments: BrandGridListViewArguments(brandName: name));
    }
  }

  navigateWishlist() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.replaceWith(Routes.wishListGridView);
    }
  }

  navigateCart() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.replaceWith(Routes.cartView);
    }
  }

  clearList() {
    flag = 0;
    _searchString = "";
    _brandList = (_brandList.toBuilder()..clear()).build();
    _productList = (_productList.toBuilder()..clear()).build();
  }
}

// BuiltList<ProductList> _suggesstedProducts = new BuiltList<ProductList>();
// BuiltList<ProductList> get suggesstedProducts => _suggesstedProducts;
// BuiltList<ProductList> _totalproductList = BuiltList<ProductList>();
// BuiltList<ProductList> get totalproductList => _totalproductList;
// _totalproductList = (_totalproductList.toBuilder()
//       ..add(ProductList(
//           response.body.data.brands[i].sId,
//           response.body.data.brands[i].name,
//           response.body.data.brands[i].slug)))
//     .build();
// FutureOr<Iterable<dynamic>> getSuggestions(String pattern) {
//   clearList();
//   getSearchResponse(search: pattern);
// }

// BuiltList<ProductList> callPattern(String pattern) {
//   // _suggesstedProducts = (_suggesstedProducts.toBuilder()
//   //       ..addAll(_totalproductList.where(
//   //           (x) => x.name.toLowerCase().startsWith(pattern.toLowerCase()))))
//   //     .build();
//   if (_suggesstedProducts.length <= 0) {
//     _suggesstedProducts =
//         (_suggesstedProducts.toBuilder()..addAll(_totalproductList)).build();
//   }
//   for (var item in _suggesstedProducts) {
//     logger.d("Pattern ${item.name}");
//   }
//   return _suggesstedProducts;
// }

// FutureOr<Iterable<dynamic>> getClearSuggestions(String pattern) {
//   clearList();
//   return _suggesstedProducts;
// }

// void clearList() {
//   _suggesstedProducts = (_suggesstedProducts.toBuilder()..clear()).build();
// }
// _totalproductList = (_totalproductList.toBuilder()
//       ..add(ProductList([]
//           response.body.data.products[i].sId,
//           response.body.data.products[i].name,
//           response.body.data.products[i].slug)))
//     .build();
