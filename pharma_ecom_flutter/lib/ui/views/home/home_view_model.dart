import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/cart/cart_refresh.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/category/category_bnav_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/dashboard/dashboard_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/my_order_bnav/my_order_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/prescription_bnav/prescription_bnav_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/main.dart';
import 'package:get/get.dart' as GetPackage;

class HomeViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  CartRefreshService _cartRefreshService = locator<CartRefreshService>();
  int _selectedIndex = 0;
  String _titleAppbar = getTranslatedValues("welcome");
  int get selectedIndex => _selectedIndex;
  String get titleAppbar => _titleAppbar;
  int _quentity = 0;
  int get quantity => _quentity;
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  int _index;
  int get index => _index;
  CartService _cartService = CartService.create();

  HomeViewModel() {
    _cartRefreshService.registerCallback(() {
      getCartResponse();
    });
  }

  loadData(int index) async {
    _selectedIndex = index;
    getCartResponse();
    String lang = await _storageServiceSharedPreferences.getLanguage();
    !lang.isNullOrBlank && lang.contains("en")
        ? MyApp.setLocale(GetPackage.Get.context, Locale("en", "US"))
        : MyApp.setLocale(GetPackage.Get.context, Locale("ar", "SA"));
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

  void updateIndex({int index}) {
    _selectedIndex = index;
    switch (index) {
      case 0:
        _titleAppbar = getTranslatedValues("welcome");
        break;
      case 1:
        _titleAppbar = getTranslatedValues("prescription");
        break;
      case 2:
        _titleAppbar = getTranslatedValues("category");
        break;
      case 3:
        _titleAppbar = getTranslatedValues("my_orders");
        break;
      default:
        break;
    }

    notifyListeners();
  }

  returnSelectedView() {
    switch (_selectedIndex) {
      case 0:
        return DashboardView();
        break;
      case 1:
        return Center(
          child: PrescriptionView(),
        );
        break;
      case 2:
        return CategoryBnavView();
        break;
      case 3:
        return Center(
          child: MyOrderView(),
        );
        break;
      default:
        return Center(
          child: Text("Bottom nav 1"),
        );
        break;
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
}
