import 'dart:io';
import 'package:basic_utils/basic_utils.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/social_media_sign_in/social_media_sign_in.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:stacked_services/stacked_services.dart';
import 'package:path/path.dart' as path;
import 'package:dio/dio.dart' show Dio, FormData, MultipartFile, Options;

class SignUpViewViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final formKey = GlobalKey<FormState>();
  final SocialMediaSignIn _socialMediaSignIn = locator<SocialMediaSignIn>();
  final logger = getLogger("Sign up");

  var image;
  File _pickedImage;
  File get pickedImage => _pickedImage;
  final picker = ImagePicker();

  int _genderStatus = 0;
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  int get genderStatus => _genderStatus;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();

  loadData() {}

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  updateFirstName(String value) {
    _firstName = value;
  }

  updateLastName(String value) {
    _lastName = value;
  }

  updateEmail(String value) {
    _email = value;
  }

  saveBtn() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (!formKey.currentState.validate()) return;
        final token = await _storageServiceSharedPreferences.getToken();
        FormData formData = FormData.fromMap({
          "profile_picture": _pickedImage != null && _pickedImage.path != null
              ? await MultipartFile.fromFile(_pickedImage.path,
                  filename: path.basename(_pickedImage.path))
              : "",
          "first_name": _firstName != null ? _firstName : "",
          "last_name": _lastName != null ? _lastName : "",
          "email": _email != null ? _email : "",
          "gender": _genderStatus != null
              ? _genderStatus == 1
                  ? "Male"
                  : _genderStatus == 2
                      ? "Female"
                      : ""
              : ""
        });
        Dio dio = new Dio();
        runBusyFuture(dio.post("$BASE_URL/api/users/profileData",
            data: formData,
            options: Options(
              headers: {"Authorization": "Bearer $token"},
            ))).then((response) async {
          if (response.data["status"] == 200) {
            logger.d(
                "username :- ${response.data["data"]["user"]["first_name"]} ${response.data["data"]["user"]["last_name"]} , email: ${response.data["data"]["user"]["email"]} , contactNumber: ${response.data["data"]["user"]["phone_number"]}");
            _storageServiceSharedPreferences.saveUsername(
                username:
                    "${response.data["data"]["user"]["first_name"]} ${response.data["data"]["user"]["last_name"]}");
            _storageServiceSharedPreferences.saveEmail(
                email: response.data["data"]["user"]["email"]);
            _storageServiceSharedPreferences.saveContactNumber(
                contactNumber: response.data["data"]["user"]["phone_number"]);
            // _storageServiceSharedPreferences.saveProfilePicture(
            //     profilePicture:
            //         "http://15.184.81.164/${response.data["data"]["user"]["profile_picture"]}");
            await _navigationService.clearStackAndShow(Routes.homeView);
          }
        });
    }
  }

  onSkipPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.clearStackAndShow(Routes.homeView);
    }
  }

  clickGender({int gendarStatus}) {
    if (_genderStatus == gendarStatus) {
      _genderStatus = 0;
    } else {
      _genderStatus = gendarStatus;
    }
    notifyListeners();
  }

  Future getImageFromCamera() async {
    image = await ImagePicker().getImage(source: ImageSource.camera);
    _pickedImage = File(image.path);
    notifyListeners();
  }

  Future getImageFromGallary() async {
    image = await ImagePicker().getImage(source: ImageSource.gallery);
    _pickedImage = File(image.path);
    notifyListeners();
  }

  validateEmail({String value}) {
    if (!EmailUtils.isEmail(value)) {
      return "Please Enter valid Email";
    }
    return null;
  }

  signupGoogle() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        UserCredential googleUserCred =
            await _socialMediaSignIn.signInWithGoogle();
        logger.d(googleUserCred);

        final token = await _storageServiceSharedPreferences.getToken();
        FormData formData = FormData.fromMap({
          // "profile_picture": _pickedImage != null && _pickedImage.path != null
          //     ? await MultipartFile.fromFile(_pickedImage.path,
          //         filename: path.basename(_pickedImage.path))
          //     : "",
          "first_name": googleUserCred.user.displayName != null
              ? googleUserCred.user.displayName
              : "",
          "last_name": "",
          "email": googleUserCred.user.email != null
              ? googleUserCred.user.email
              : "",
          "gender": ""
        });
        Dio dio = new Dio();
        runBusyFuture(dio.post("$BASE_URL/api/users/profileData",
            data: formData,
            options: Options(
              headers: {"Authorization": "Bearer $token"},
            ))).then((response) async {
          if (response.data["status"] == 200) {
            _storageServiceSharedPreferences.saveUsername(
                username:
                    "${response.data["data"]["user"]["first_name"]} ${response.data["data"]["user"]["last_name"]}");
            _storageServiceSharedPreferences.saveEmail(
                email: response.data["data"]["user"]["email"]);
            _storageServiceSharedPreferences.saveContactNumber(
                contactNumber: response.data["data"]["user"]["phone_number"]);
            // _storageServiceSharedPreferences.saveProfilePicture(
            //     profilePicture:
            //         "http://15.184.81.164/${response.data["data"]["user"]["profile_picture"]}");
            await _navigationService.clearStackAndShow(Routes.homeView);
          }
        });

      //await _navigationService.clearStackAndShow(Routes.homeView);
    }
  }

  //Facebook login
  String your_client_id = "400763637768443";
  String your_redirect_url =
      "https://pharma-phc-ecom-configured.firebaseapp.com/__/auth/handler";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  loginWithFacebook({BuildContext context}) async {
    String result =
        await _navigationService.navigateTo(Routes.signUpCustomWebView,
            arguments: SignUpCustomWebViewArguments(
              selectedUrl:
                  'https://www.facebook.com/dialog/oauth?client_id=$your_client_id&redirect_uri=$your_redirect_url&response_type=token&scope=email,public_profile,',
            ));
    // await Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => CustomWebView(
    //               selectedUrl:
    //                   'https://www.facebook.com/dialog/oauth?client_id=$your_client_id&redirect_uri=$your_redirect_url&response_type=token&scope=email,public_profile,',
    //             ),
    //         maintainState: true));
    if (result != null) {
      try {
        final facebookAuthCred = FacebookAuthProvider.credential(result);
        final user = await _auth.signInWithCredential(facebookAuthCred);
        logger.d(user);
      } catch (e) {}
    }
  }
}
