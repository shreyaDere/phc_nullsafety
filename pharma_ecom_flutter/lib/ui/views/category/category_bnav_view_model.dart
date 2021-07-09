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
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';

class CategoryBnavViewModel extends ConnectivityAwareViewModel {
  CategoryBnavViewModel() {
    _appDrawerTService.registerCallback(() => loadData());
  }
  NavigationService _navigationService = locator<NavigationService>();
  int _selectedCategoryIndex = 1;
  int get selectedCategoryIndex => _selectedCategoryIndex;
  CategoriesService _categoriesService = CategoriesService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();
  CategoryGetResponse _categoryGetResponse;
  CategoryGetResponse get categoryResponse => _categoryGetResponse;
  CategoriesDetailsBrandsResponse _categoriesDetailsBrandsResponse;
  CategoriesDetailsBrandsResponse get getSubCategoryResponse =>
      _categoriesDetailsBrandsResponse;
  String lang;
  loadData() async {
    lang = await _storageServiceSharedPreferences.getLanguage();

    getAllCategories();
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

  onBrandClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
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
}
