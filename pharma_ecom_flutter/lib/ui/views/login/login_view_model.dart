import 'package:basic_utils/basic_utils.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class LoginViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  final formKey = GlobalKey<FormState>();

  String _phoneNumber = "";
  bool _checkBoxValue = false;
  String _countryCode = '+973';
  String _countryInitial = "BH";
  bool _isThroughEtrror = false;
  String get phoneNumber => _phoneNumber;
  bool get checkBoxValue => _checkBoxValue;
  String get countryCode => _countryCode;
  String get countryInitial => _countryInitial;
  bool get isThroughEtrror => _isThroughEtrror;
  final SnackBarView _snackbarView = new SnackBarView();

  final logger = getLogger("Login");

  UserService _loginService = UserService.create();

  loadData() {}

  onCountryChanged(selectedCountry) {
    _countryCode = selectedCountry.dialCode;
    _countryInitial = selectedCountry.code;
  }

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  updatePhoneNumber(String value) {
    _phoneNumber = value;
  }

  changeCheckBoxValue(bool value) {
    _checkBoxValue = value;
    notifyListeners();
  }

  validatePhoneNumber({String value}) {
    if (StringUtils.isNullOrEmpty(value)) {
      _isThroughEtrror = true;
      notifyListeners();
      return "Please Enter valid mobile number";
    }
    _isThroughEtrror = false;
    return null;
  }

  sendOtp() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (!formKey.currentState.validate()) return;

        int phoneNumWithCountryCode = int.parse(_countryCode + _phoneNumber);
        if (_checkBoxValue) {
          BuiltEmailLoginRequest request = BuiltEmailLoginRequest((r) => r
            ..phoneNumber = phoneNumWithCountryCode
            ..channel = "sms");

          Response<BuiltEmailLoginResponse> response =
              await runBusyFuture(_loginService.emailLogin(body: request));
          if (response != null && response.body.status == 200) {
            await _navigationService.navigateTo(Routes.otpVerificationView,
                arguments: OtpVerificationViewArguments(
                    phoneNumber: phoneNumWithCountryCode));
          } else {
            _snackbarView.showErrorSnackBarUni(
                message: getTranslatedValues("mobile_check_msg"));
          }
        } else {
          _snackbarView.showErrorSnackBarUni(
              message: getTranslatedValues("msg_tearms_condition"));
        }
    }
  }

  onSkipPressed() async {
    await _navigationService.clearStackAndShow(Routes.homeView);
  }
}
