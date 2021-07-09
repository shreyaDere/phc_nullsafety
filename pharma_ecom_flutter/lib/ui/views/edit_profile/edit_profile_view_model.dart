import 'dart:io';

import 'package:basic_utils/basic_utils.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/custom_snackbar/custom_snackbar.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:stacked_services/stacked_services.dart';
import 'package:dio/dio.dart' show Dio, FormData, MultipartFile, Options;

class EditProfileViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  UserService _editProfileService = UserService.create();
  final formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  Logger l = getLogger("profile");

  List<String> genderArray = ["Male", "Female"];
  File _pickedImage;
  File get pickedImage => _pickedImage;
  String _firstName = "";
  String _lastName = "";
  String _dateOfBirth = "";
  String _email = "";
  String _phoneNumber = "";
  String _genderHint = "Gender";
  String _selectedGenderValue;
  bool _isErrorThrough = false;
  int _favProductNumber = 00;
  int _order = 00;
  String _imageUrl;
  String get imageUrl => _imageUrl;
  int get favProductNumber => _favProductNumber;
  int get orders => _order;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get dateOfBirth => _dateOfBirth;
  String get email => _email;
  String get phoneNumber => _phoneNumber;
  String get selectedGenderValue => _selectedGenderValue;
  String get genderHint => _genderHint;
  bool get isErrorThrough => _isErrorThrough;
  double _rewardPoint;
  double get rewardPoint => _rewardPoint;

  DateTime dateTime = DateTime.now();
  var myFormat = DateFormat('d-MM-yyyy');
  EditProfileResponse _userDataLocal = new EditProfileResponse();
  EditProfileResponse get userDataLocal => _userDataLocal;
  DefaultCacheManager manager = new DefaultCacheManager();
  Logger logger = getLogger("profile");
  loadData() async {
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
          logger.d(response.body.data.user.language);
          _userDataLocal = response.body;
          _firstName =
              StringUtils.isNotNullOrEmpty(response.body.data.user.firstName)
                  ? response.body.data.user.firstName
                  : "Name";
          _lastName =
              StringUtils.isNotNullOrEmpty(response.body.data.user.lastName)
                  ? response.body.data.user.lastName
                  : "Lastname";
          _email = response.body.data.user.email;
          _phoneNumber = "+${response.body.data.user.phoneNumber}";
          _dateOfBirth = response.body.data.user.dob;
          _order = response.body.data.orders;
          _favProductNumber = response.body.data.favouriteProduct;
          _selectedGenderValue =
              StringUtils.isNotNullOrEmpty(response.body.data.user.gender)
                  ? response.body.data.user.gender
                  : "";
          _imageUrl = response.body.data.user.profilePicture;
          _rewardPoint = response.body.data.user.rewardPoints;

          // l.d("$BASE_URL/profile_pictures/${response.body.data.user.profilePicture}");
          l.d(_imageUrl);
          notifyListeners();
        } else {}
    }
  }

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  updateFirstName(String value) {
    _firstName = value;
  }

  updateLastName(String value) {
    _lastName = value;
  }

  updateDateOfBirth(String value) {
    _dateOfBirth = value;
  }

  updateEmail(String value) {
    _email = value;
  }

  updatePhoneNumber(String value) {
    _phoneNumber = value;
  }

  updateGender(String value) {
    _selectedGenderValue = value;
  }

  DateTime initialDate() {
    return DateTime(DateTime.now().year - 18);
  }

  void changeDate(DateTime newDateTime) {
    if (newDateTime != null) {
      dateTime = newDateTime;
      _dateOfBirth = myFormat.format(newDateTime);
    }
    notifyListeners();
  }

  Future getImageFromCamera() async {
    // image = await picker.getImage(source: ImageSource.camera, imageQuality: 70);
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) _pickedImage = File(pickedFile.path);
    notifyListeners();
  }

  Future getImageFromGallary() async {
    // image = await picker.getImage(source: ImageSource.gallery);
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) _pickedImage = File(pickedFile.path);
    notifyListeners();
  }

  onUpdatePressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (!formKey.currentState.validate()) return;
        updateProfileDetails();
        break;
    }
  }

  updateProfileDetails() async {
    final token = await _storageServiceSharedPreferences.getToken();
    FormData formData = FormData.fromMap({
      "profile_picture": _pickedImage != null && _pickedImage.path != null
          ? await MultipartFile.fromFile(_pickedImage.path,
              filename: path.basename(_pickedImage.path))
          : "",
      "first_name": _firstName,
      "last_name": _lastName,
      "email": _email,
      "dob": _dateOfBirth,
      "gender": _selectedGenderValue == "Gender" ? "" : _selectedGenderValue
    });
    Dio dio = new Dio();
    runBusyFuture(dio.post("$BASE_URL/api/users/profileData",
        onSendProgress: (int sent, int total) {
      l.d("$sent $total");
    },
        data: formData,
        options: Options(
          headers: {"Authorization": "Bearer $token"},
        ))).then((response) async {
      if (response.data["status"] == 200) {
        l.d("After Upload:- ${response.data["data"]["user"]["profile_picture"]}");
        _storageServiceSharedPreferences.saveUsername(
            username: "$_firstName $lastName");
        _storageServiceSharedPreferences.saveEmail(email: _email);
        _storageServiceSharedPreferences.saveContactNumber(
            contactNumber: _phoneNumber);
        _storageServiceSharedPreferences.saveProfilePicture(
            profilePicture: response.data["data"]["user"]["profile_picture"]);
        // _storageServiceSharedPreferences.saveProfilePicture(
        //     profilePicture:
        //         "http://15.184.81.164/${response.data["data"]["user"]["profile_picture"]}");
        //await _navigationService.clearStackAndShow(Routes.homeView);
        manager.emptyCache();
        getUserProfileData();
        _navigationService.back();
      }
    });
  }

  validateEmail({String value}) {
    if (!EmailUtils.isEmail(value)) {
      _isErrorThrough = true;
      notifyListeners();
      return "Please Enter Email";
    }
    _isErrorThrough = false;
    return null;
  }

  void showErrorSnackBar({String message}) {
    _snackbarService.showCustomSnackBar(
      message: message,
      title: "Error",
      duration: Duration(seconds: 2),
      onTap: (_) {
        print('snackbar tapped');
      },
      mainButtonTitle: 'Ok',
      onMainButtonTapped: () => print('Undo the action!'),
      customData: SnackbarType.redAndWhite,
    );
  }
}
