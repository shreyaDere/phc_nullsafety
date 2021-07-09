import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get/get.dart' as GetPackage;

class BillingAddressViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  String _mobileNo;
  String _houseBlockFlat;
  String _landMark;
  String _zipCode;
  String get mobileNo => _mobileNo;
  String get houseBlockFlat => _houseBlockFlat;
  String get landMark => _landMark;
  String get zipCode => _zipCode;

  loadData() {}

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  updateMobile(String value) {
    _mobileNo = value;
  }

  updateHouseBlockFlat(String value) {
    _houseBlockFlat = value;
  }

  updateLandMark(String value) {
    _landMark = value;
  }

  updateZipCode(String value) {
    _zipCode = value;
  }

  onSubmitPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.back();
        break;
    }
  }
}
