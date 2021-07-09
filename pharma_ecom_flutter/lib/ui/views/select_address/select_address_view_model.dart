import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/delete_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/get_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/address/add_address_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/address/select_address_sercive.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/address/address.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class SelectAddressViewModel extends ConnectivityAwareViewModel {
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  NavigationService _navigationService = locator<NavigationService>();
  AddAddressTService _addAddressTService = locator<AddAddressTService>();
  SelectAddressTService _selectAddressTService =
      locator<SelectAddressTService>();
  AddressService _addressService = AddressService.create();
  final SnackBarView _snackbarView = new SnackBarView();
  int _selectedCheckBoxIndex = -1;
  int get selectedCheckBoxIndex => _selectedCheckBoxIndex;
  GetAddressResponse _addressResponseLocal;
  GetAddressResponse get addressResponseLocal => _addressResponseLocal;
  Logger logger = getLogger("select address");
  // bool _proceedToPay;

  SelectAddressViewModel() {
    _addAddressTService.registerCallback(() => loadData());
    // _deleteAddressTService.registerCallback(() => loadData());
  }
  loadData({bool proceedtoPay}) async {
    // _proceedToPay = proceedtoPay;
    getAllAddress();
  }

  getAllAddress() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<GetAddressResponse> response = await runBusyFuture(
        _addressService.getAllAddress(token: "Bearer $token"));
    if (response.body.status == 200) {
      for (var i = 0; i < response.body.data.length; i++) {
        if (response.body.data[i].defaultAddress == 1)
          _selectedCheckBoxIndex = i;
      }

      _addressResponseLocal = response.body;
      notifyListeners();
    } else {}
  }

  //Maps
  GoogleMapController mapController;

  final LatLng center = const LatLng(45.521563, -122.677433);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  updateCheckBoxPosition({int index}) {
    if (index != _selectedCheckBoxIndex) {
      _selectedCheckBoxIndex = index;
      notifyListeners();
    }
  }

  onSelectAddressBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        if (_selectedCheckBoxIndex != -1) {
          AddDeliveryAddressRequest request =
              AddDeliveryAddressRequest((r) => r..defaultAddress = 1);
          Response<AddDeliveryAddressResponse> response = await runBusyFuture(
              _addressService.updateAddress(
                  body: request,
                  token: "Bearer $token",
                  id: _addressResponseLocal.data[_selectedCheckBoxIndex].id));

          if (response.body.status == 200) {
            _snackbarView.showSuccessSnackBarUni(
                message: getTranslatedValues("address_update"));
            if (_selectAddressTService.callback != null) {
              _selectAddressTService.callFunction(
                  address: _addressResponseLocal.data[_selectedCheckBoxIndex]);
            }
            _navigationService.back();
          } else {}
        }
      //_navigationService.back();
    }
  }

  btnAddNewAddress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(
          Routes.addDeliveryAddressView,
        );
    }
  }

  editAddressPressed(int index) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.addDeliveryAddressView,
            arguments: AddDeliveryAddressViewArguments(
                address: _addressResponseLocal.data[index]));
    }
  }

  onDeletePressed(String id) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<DeleteAddressResponse> response = await runBusyFuture(
            _addressService.deleteAddress(token: "Bearer $token", id: id));
        if (response.body.status == 200) {
          loadData();
        } else {}
    }
  }

  String getLabel({int label}) {
    switch (label) {
      case 1:
        return "Home";
        break;
      case 2:
        return "Office";
        break;
      case 3:
        return "Other";
        break;
      default:
        return "Other";
        break;
    }
  }
}
