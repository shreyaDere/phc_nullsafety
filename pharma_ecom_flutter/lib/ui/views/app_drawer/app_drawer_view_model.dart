import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/social_media_sign_in/social_media_sign_in.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/main.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';
import 'package:dio/dio.dart' show Dio, FormData, Options;
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';

class AppDrawerViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  bool _changeLanguage;
  bool get changeLanguage => _changeLanguage;
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SocialMediaSignIn _socialMediaSignIn = locator<SocialMediaSignIn>();
  AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();
  UserService _editProfileService = UserService.create();

  String _userName;
  String get userName => _userName;
  double _rewardPoint;
  double get rewardPoint => _rewardPoint;
  String _token;
  String get token => _token;
  String _email;
  String get email => _email;
  String _contactNumber;
  String get contactNumber => _contactNumber;
  String _profilePic;
  String get profilePic => _profilePic;
  Logger logger = getLogger("AppBar");

  loadData() async {
    String lang = await _storageServiceSharedPreferences.getLanguage();
    if (lang != null && lang.isNotEmpty) {
      _changeLanguage = lang.contains("en") ? true : false;
    } else {
      _changeLanguage = true;
    }
    addDataFromSharePreferances();

    getUserProfileData();
  }

  getUserProfileData() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<EditProfileResponse> response = await runBusyFuture(
            _editProfileService.getUserProfile(token: "Bearer $token"));

        if (response.body.status == 200) {
          _rewardPoint = response.body.data.user.rewardPoints;

          notifyListeners();
        } else {}
    }
  }

  addDataFromSharePreferances() async {
    _userName = await _storageServiceSharedPreferences.getUsername();
    _email = await _storageServiceSharedPreferences.getEmail();
    _contactNumber = await _storageServiceSharedPreferences.getContactNumber();
    _token = await _storageServiceSharedPreferences.getToken();
    _profilePic = await _storageServiceSharedPreferences.getProfilePicture();
    logger.d(
        "UserName :- $_userName , Email:- $_email , contact number :- $_contactNumber,profile:$_profilePic");
    notifyListeners();
  }

  // void onLocaleChange(Locale locale) {
  //   _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
  //   _newLocaleDelegate.load(locale);
  //   notifyListeners();
  // }

  onEditPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.editProfileView);
        //   } else {
        //     showErrorSnackBar(message: response.body.message);
        //   }
        // }
        break;
    }
  }

  onLoginPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.clearStackAndShow(Routes.loginView);
        break;
    }
  }

  onNotificationClicked() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.notificationView);
        break;
    }
  }

  onSettingsClicked() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.settingsView);
        break;
    }
  }

  onEnglishPressed({bool isChangeToEr}) {
    _changeLanguage = isChangeToEr;
    _storageServiceSharedPreferences.saveLanguage(language: "ar");
    MyApp.setLocale(GetPackage.Get.context, Locale("ar", 'SA'));
    updateProfileDetails("ar");
    _appDrawerTService.callFunction();
    _navigationService.back();
    notifyListeners();
  }

  onArebicPressed({bool isChangeToEr}) {
    _changeLanguage = isChangeToEr;
    _storageServiceSharedPreferences.saveLanguage(language: "en");
    MyApp.setLocale(GetPackage.Get.context, Locale("en", "US"));
    updateProfileDetails("en");
    _appDrawerTService.callFunction();
    _navigationService.back();
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
        logger.d(response.data["message"]);
        // _navigationService.back();
      }
    });
  }

  logoutUser() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _storageServiceSharedPreferences.clearAllValues();
        _socialMediaSignIn.signOutGoogle();
        await _navigationService.clearStackAndShow(Routes.loginView);
        break;
    }
  }

  Future<bool> getUserStatus() async {
    final token = await _storageServiceSharedPreferences.getToken();
    if (token != null && token.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  onManageAddressPress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.selectAddressView,
            arguments: SelectAddressViewArguments(proceesToPayFalg: false));
        break;
    }
  }

  navigateMyOrders() {}
}
