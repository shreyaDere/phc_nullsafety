import 'package:basic_utils/basic_utils.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/userstatus/user_status_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class OtpVerifiactionViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  UserService _otpVerificationService = UserService.create();
  final formKey = GlobalKey<FormState>();
  final SnackBarView _snackbarView = new SnackBarView();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();

  String _otp;
  int _phoneNumber;
  int get phoneNumber => _phoneNumber;
  String lang;
  loadData(int phoneNumber) async {
    _phoneNumber = phoneNumber;
    lang = await _storageServiceSharedPreferences.getLanguage();
    notifyListeners();
  }

  validateOtpNumber({String value}) {
    if (StringUtils.isNullOrEmpty(value)) {
      return "Please Enter Otp";
    } else if (value.length != 6) {
      return "Please Enter 6 digit Otp";
    }
    return null;
  }

  setOtp({String otpString}) {
    _otp = otpString;
  }

  verifyOtpPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (!formKey.currentState.validate()) return;
        OtpVerificationRequest request = OtpVerificationRequest((r) => r
          ..phoneNumber = _phoneNumber
          ..code = _otp);

        Response<OtpVerificationResponse> response = await runBusyFuture(
            _otpVerificationService.otpVerification(body: request));
        if (response != null && response.body.status == 200) {
          getUserStatus(responseUser: response.body);
        } else {
          _snackbarView.showErrorSnackBarUni(
              message: getTranslatedValues("msg_check_id_otp"));
        }
    }
  }

  getUserStatus({OtpVerificationResponse responseUser}) async {
    final Response<UserStatusResponse> response = await runBusyFuture(
            _otpVerificationService.checkActiveStatus(
                token: "Bearer ${responseUser.data.token}"))
        as Response<UserStatusResponse>;

    if (response.body.status == 200 && response.body.active) {
      getUserProfileData(
          token: responseUser.data.token, userStatus: responseUser.userStatus);
    } else {
      _snackbarView.showErrorSnackBarUni(message: response.body.message);
      _navigationService.back();
    }
  }

  callFcmApi(String token) async {
    var newFcmToken = await _storageServiceSharedPreferences.getFcmToken();

    FcmRequest fcmRequest = FcmRequest((r) => r..fcmToken = newFcmToken);
    await _otpVerificationService.updateFcm(
        body: fcmRequest, token: "Bearer $token");
  }

  getUserProfileData({String token, int userStatus}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        Response<EditProfileResponse> response = await runBusyFuture(
            _otpVerificationService.getUserProfile(token: "Bearer $token"));

        if (response.body.status == 200) {
          callFcmApi(token);
          _storageServiceSharedPreferences.saveToken(token: token);
          _storageServiceSharedPreferences.saveContactNumber(
              contactNumber: response.body.data.user.phoneNumber);
          _storageServiceSharedPreferences.saveUsername(
              username:
                  "${response.body.data.user.firstName} ${response.body.data.user.lastName}");
          _storageServiceSharedPreferences.saveEmail(
              email: response.body.data.user.email);
          _storageServiceSharedPreferences.saveProfilePicture(
              profilePicture: response.body.data.user.profilePicture);
          _storageServiceSharedPreferences.saveLanguage(
              language: response.body.data.user.language);
          userStatus == 1
              ? await _navigationService.clearStackAndShow(Routes.homeView)
              : await _navigationService.navigateTo(Routes.signUpView);
        } else {}
    }
  }

  onYesClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        BuiltEmailLoginRequest request = BuiltEmailLoginRequest((r) => r
          ..phoneNumber = _phoneNumber
          ..channel = "sms");

        Response<BuiltEmailLoginResponse> response =
            await _otpVerificationService.emailLogin(body: request);
        if (response.body.status == 200) {
          _snackbarView.showSuccessSnackBarUni(
              message: getTranslatedValues("otp_resend_message"));
        } else {
          _snackbarView.showErrorSnackBarUni(message: response.body.message);
        }
    }
  }

  onbackPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.back();
    }
  }
}
