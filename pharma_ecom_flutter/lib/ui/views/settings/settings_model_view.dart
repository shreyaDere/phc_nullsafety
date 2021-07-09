import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/main.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dio/dio.dart' show Dio, FormData, Options;
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';

AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();

class SettingsViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();

  bool _enableVibrateValue = false;
  bool get enableVibrateValue => _enableVibrateValue;

  bool _changeLanguage;
  bool get changeLanguage => _changeLanguage;
  var logger = getLogger("settings");

  loadData() async {
    String lang = await _storageServiceSharedPreferences.getLanguage();
    if (lang != null && lang.isNotEmpty) {
      _changeLanguage = lang.contains("en") ? true : false;
    } else {
      _changeLanguage = true;
    }
    notifyListeners();
  }

  onEnglishPressed({bool isChangeToEr}) {
    _changeLanguage = isChangeToEr;
    _storageServiceSharedPreferences.saveLanguage(language: "ar");
    MyApp.setLocale(GetPackage.Get.context, Locale("ar", 'SA'));
    // _appDrawerTService.callFunction();
    updateProfileDetails("ar");
    notifyListeners();
  }

  onArebicPressed({bool isChangeToEr}) {
    _changeLanguage = isChangeToEr;
    _storageServiceSharedPreferences.saveLanguage(language: "en");
    MyApp.setLocale(GetPackage.Get.context, Locale("en", "US"));
    updateProfileDetails("en");
    // _appDrawerTService.callFunction();
    // _navigationService.back();
    notifyListeners();
  }

  updateProfileDetails(String lang) async {
    final token = await _storageServiceSharedPreferences.getToken();
    FormData formData = FormData.fromMap({
      "language": lang,
    });
    Dio dio = new Dio();
    runBusyFuture(dio.post("$BASE_URL/api/users/profileData",
        onSendProgress: (int sent, int total) {
      logger.d("$sent $total");
    },
        data: formData,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ))).then((response) async {
      if (response.data["status"] == 200) {
        logger.d(
          response.data["message"],
          response.data["user"]["language"],
        );
        // _navigationService.back();
      }
    });
  }

  changeToggleValue(bool value) {
    _enableVibrateValue = value;
    notifyListeners();
  }
}
