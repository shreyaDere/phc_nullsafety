import 'dart:io';
import 'package:basic_utils/basic_utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:dio/dio.dart' show Dio, FormData, MultipartFile, Options;
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:path/path.dart' as path;
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/upload_prescription/upload_prescription_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class UploadPrescriptionViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  String _titleForPrescription = "";
  String _commentForPrescription = "";
  bool _insuranceFlag = false;
  BuiltList<File> _listOfPrescriptionList = BuiltList();
  String get titleForPrescription => _titleForPrescription;
  String get commentForPrescription => _commentForPrescription;
  bool get insuranceFlag => _insuranceFlag;
  BuiltList<File> get listOfPrescriptionList => _listOfPrescriptionList;
  Logger logger = getLogger("Upload Prescription");
  final UploadPrescriptionReactiveService _uploadPrescriptionService =
      locator<UploadPrescriptionReactiveService>();
  final SnackBarView _snackbarView = new SnackBarView();

  File imageFromCamera, imageFromGallary, image;
  File _insuranceImage, _memberId;
  File get insuranceImage => _insuranceImage;
  File get memberId => _memberId;
  bool _showError = false;
  bool get showError => _showError;
  final picker = ImagePicker();
  final formKey = GlobalKey<FormState>();

  loadData() {}

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  updateTitleForPrescription(String value) {
    _titleForPrescription = value;
  }

  updateCommentForPrescription(String value) {
    _commentForPrescription = value;
  }

  updateInsuranceFlag({bool insuranceFlag}) {
    _insuranceFlag = insuranceFlag;
    notifyListeners();
  }

  Future getImageFromCamera(bool isArrayOfImage, int flag) async {
    //2 for insurance ,1 for memberId ,0 for uploadPrescripion
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (flag == 0) {
      if (pickedFile != null) {
        isArrayOfImage
            ? imageFromCamera = File(pickedFile.path)
            : image = File(pickedFile.path);
        if (isArrayOfImage)
          _listOfPrescriptionList = (_listOfPrescriptionList.toBuilder()
                ..add(imageFromCamera))
              .build();
      }
    } else if (flag == 1) {
      _memberId = File(pickedFile.path);
    } else if (flag == 2) {
      _insuranceImage = File(pickedFile.path);
    }
    notifyListeners();
  }

  Future getImageFromGallary(bool isArrayOfImage, int flag) async {
    // 2 for insurance ,1 for memberId ,0 for uploadPrescripion
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (flag == 0) {
      if (pickedFile != null) {
        isArrayOfImage
            ? imageFromGallary = File(pickedFile.path)
            : image = File(pickedFile.path);

        if (isArrayOfImage)
          _listOfPrescriptionList = (_listOfPrescriptionList.toBuilder()
                ..add(imageFromGallary))
              .build();
      }
    } else if (flag == 1) {
      _memberId = File(pickedFile.path);
    } else if (flag == 2) {
      _insuranceImage = File(pickedFile.path);
    }
    notifyListeners();
  }

  onSubmitBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (_memberId.isNullOrBlank) {
          _showError = true;
          notifyListeners();
        } else {
          if (!formKey.currentState.validate()) return;
          _showError = false;
          final token = await _storageServiceSharedPreferences.getToken();
          FormData formData = FormData.fromMap({
            "prescriptionTitle":
                StringUtils.isNullOrEmpty(_titleForPrescription)
                    ? ""
                    : _titleForPrescription,
            "prescriptionComment":
                StringUtils.isNullOrEmpty(_commentForPrescription)
                    ? ""
                    : _commentForPrescription,
            "prescriptionType": _insuranceFlag ? 1 : 2,
            "insuranceImage":
                _insuranceImage != null && _insuranceImage.path != null
                    ? await MultipartFile.fromFile(_insuranceImage.path,
                        filename: path.basename(_insuranceImage.path))
                    : "",
            "uploadTime": DateTime.now().toString(),
            // "prescriptionImage": _listOfPrescriptionList != null
            //     ? [
            //   await MultipartFile.fromFile(_pickedImage.path,
            //         filename: path.basename(_pickedImage.path))

            // ]:[],
            "memberId": _memberId != null && _memberId.path != null
                ? await MultipartFile.fromFile(_memberId.path,
                    filename: path.basename(_memberId.path))
                : "",
          });
          for (var file in _listOfPrescriptionList) {
            formData.files.addAll([
              MapEntry(
                  "prescriptionImage", await MultipartFile.fromFile(file.path)),
            ]);
          }
          Dio dio = new Dio();
          runBusyFuture(
              dio.post("$BASE_URL/api/prescription/createPrescription",
                  data: formData,
                  options: Options(
                    headers: {"Authorization": "Bearer $token"},
                  ))).then((response) async {
            if (response.data["status"] == 200) {
              logger.d(response.data);
              _snackbarView.showSuccessSnackBarUni(
                  message: getTranslatedValues("prescription_msg"));
              if (_uploadPrescriptionService != null) {
                _uploadPrescriptionService.callFunction();
              }
              _navigationService.back();
            } else {
              _navigationService.back();
            }
            notifyListeners();
          });
        }
    }
  }

  deletePicture(int index) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _listOfPrescriptionList =
            (_listOfPrescriptionList.toBuilder()..removeAt(index)).build();
        notifyListeners();
    }
  }

  validateName({String value}) {
    if (StringUtils.isNullOrEmpty(value)) {
      return "Please Enter prescription name";
    }
    return null;
  }
}
