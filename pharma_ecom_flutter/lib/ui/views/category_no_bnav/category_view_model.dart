import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/categories_detailsbrands_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/category_get_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/category/categories_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
// import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/categor/category_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';

class CategoryViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  int _selectedCategoryIndex = 1;
  int get selectedCategoryIndex => _selectedCategoryIndex;
  CategoriesService _categoriesService = CategoriesService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  CategoryGetResponse _categoryGetResponse;
  CategoryGetResponse get categoryResponse => _categoryGetResponse;
  CategoriesDetailsBrandsResponse _categoriesDetailsBrandsResponse;
  CategoriesDetailsBrandsResponse get getSubCategoryResponse =>
      _categoriesDetailsBrandsResponse;
  // CategoryService _categoryService = locator<CategoryService>();

  String lang;
  int _quentity = 0;
  int get quantity => _quentity;
  CartService _cartService = CartService.create();
  final logger = getLogger("category");
  CategoryViewModel() {
    // _categoryService.registerCallback(() => loadData());
  }

  loadData() async {
    getAllCategories();
    getCartResponse();
    lang = await _storageServiceSharedPreferences.getLanguage();
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

  getAllCategories() async {
    final token = await _storageServiceSharedPreferences.getToken();
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        Response<CategoryGetResponse> response = await runBusyFuture(
            _categoriesService.getAllCategories(token: "Bearer $token"));

        if (response.body.status == 200) {
          _categoryGetResponse = response.body;
          getCategoryDetail(
              catId:
                  response.body.data.categories[_selectedCategoryIndex].slug);
        } else {}
    }
  }

  getCategoryDetail({String catId}) async {
    final token = await _storageServiceSharedPreferences.getToken();
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        Response<CategoriesDetailsBrandsResponse> response =
            await runBusyFuture(_categoriesService.getCategoryDetails(
                id: catId, token: "Bearer $token"));

        if (response.body.status == 200) {
          _categoriesDetailsBrandsResponse = response.body;
        } else {}
    }
  }

  onCategorySelected({int currentIndex}) {
    _selectedCategoryIndex = currentIndex;
    getCategoryDetail(
        catId:
            _categoryGetResponse.data.categories[_selectedCategoryIndex].slug);
    notifyListeners();
  }

  requestMoreData(int index) {}

  onSearchClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.searchBarView);
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

  navigateToBrandsGridList() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.brandGridListView,
            arguments: BrandGridListViewArguments(brandName: "GARNIER"));
    }
  }
}
