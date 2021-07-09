import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/get_pickup_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/address/address.dart';
import 'package:get/get.dart' as GetPackage;

class PickupAddressViewModel extends ConnectivityAwareViewModel {
  PickupAddressViewModel() {
    addressArray = List<String>();
  }
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final formKey = GlobalKey<FormState>();

  String _personName = "";
  String _mobileNo = "";
  List<String> addressArray;
  String _address = "";
  String _selectedAddressValue;
  String _addressHint = "Select Address";
  String get personName => _personName;
  String get mobileNo => _mobileNo;
  String get address => _address;
  String get selectedAddressValue => _selectedAddressValue;
  String get addressHint => _addressHint;
  AddressService _addressService = AddressService.create();
  Logger logger = getLogger("pick loc");
  AddressData _addressData;
  AddressData get addressData => _addressData;
  PickupBranch _pickedAddress;

  int _orderType;
  int get orderType => _orderType;
  int _deliveryType;
  int get deliveryType => _deliveryType;
  BuiltList<UniversalProduct> _productList;
  BuiltList<UniversalProduct> get productList => _productList;
  CartTotResponse _cartTotResponse;
  CartTotResponse get cartTotResponse => _cartTotResponse;

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  loadData(
      {int orderType,
      int deliveryType,
      BuiltList<UniversalProduct> productList,
      CartTotResponse cartTotResponse}) async {
    _orderType = orderType;
    _deliveryType = deliveryType;
    _productList = productList;
    _cartTotResponse = cartTotResponse;
    getPickUpAddressList();
  }

  getPickUpAddressList() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<GetPickUpAddressResponse> response = await runBusyFuture(
            _addressService.getPickUpAddress(token: "Bearer $token"));
        if (response.body.status == 200) {
          _addressData = response.body.data;
          for (var item in response.body.data.pickupBranch) {
            addressArray.add(
                "${item.name},\n${item.addressLine1},${item.addressLine2},\n${item.addressLine3},${item.area},${item.landmark},\n${item.city},${item.zip} ,\n${item.phoneNumber.toString()}");
          }
        } else {}
    }
  }

  selectedDropDownValue() {
    var arr = _address.split(',');

    for (var item in _addressData.pickupBranch) {
      if (item.name.contains(arr[0])) {
        _pickedAddress = item;
      }
    }

    return _pickedAddress;
  }

  updateAddress(String value) {
    _address = value;
    selectedDropDownValue();
  }

  updatePhoneNumber(String value) {
    _mobileNo = value;
  }

  updatePersonName(String value) {
    _personName = value;
  }

  onSubmitBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        PickUpAddressRequest request = PickUpAddressRequest((r) => r
          ..pickupBranch = selectedDropDownValue().toBuilder()
          ..pickupMobNumber = int.parse(_mobileNo)
          ..pickupPerson = _personName
          ..pickupCode = _addressData.pickupCode);
        await _navigationService.navigateTo(Routes.proceedToPayView,
            arguments: ProceedToPayViewArguments(
                orderType: _orderType,
                deliveryType: _deliveryType,
                productList: productList,
                cartTotResponse: _cartTotResponse,
                uniqueCode: _addressData.pickupCode,
                pickupAddressRequest: request));
    }
  }
}
