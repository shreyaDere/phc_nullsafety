import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/locator/locator.dart';
import '../../../app/router/router.gr.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/main.dart';

class LanguageScreenViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final StorageServiceSharedPreferences _sharedPreferences =
      locator<StorageServiceSharedPreferences>();

  loadData() async {}

  onEnglishSelected() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _sharedPreferences.saveLanguage(language: "en");
        MyApp.setLocale(GetPackage.Get.context, Locale("en", "US"));
        notifyListeners();
        await _navigationService.clearStackAndShow(Routes.onBordingFirstView);
    }
  }

  onArebicSelected() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _sharedPreferences.saveLanguage(language: "ar");
        MyApp.setLocale(GetPackage.Get.context, Locale("ar", 'SA'));
        notifyListeners();
        await _navigationService.clearStackAndShow(Routes.onBordingFirstView);
    }
  }
}
