import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescriptiondetails/prescription_details_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/prescription/prescription_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';

class PrescriptionStatusDetailViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  final StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  PrescriptionData _presciptionData;
  PrescriptionData get presciptionData => _presciptionData;
  final logger = getLogger("prescription");
  PrescriptionService _prescriptionBnavService = PrescriptionService.create();
  CartService _cartService = CartService.create();
  PrescriptionDetailsData _prescriptionDetailsData;
  PrescriptionDetailsData get prescriptionDetailsData =>
      _prescriptionDetailsData;
  CartTotResponse _cartTotResponse;
  String lang;

  loadData({PrescriptionData presciptionData}) async {
    lang = await _storageServiceSharedPreferences.getLanguage();
    _presciptionData = presciptionData;
    getDetailPage();
    logger.d(presciptionData.lineItems);
  }

  getDetailPage() async {
    String token = await _storageServiceSharedPreferences.getToken();

    Response<PrescriptionDetailsResponse> response = await runBusyFuture(
        _prescriptionBnavService.getPrescriptionDetail(
            token: "Bearer $token", id: _presciptionData.sId));
    if (response.body.status == 200) {
      _prescriptionDetailsData = response.body.data;
    } else {}
  }

  getCalTotDel() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();

        CartTotRequest request = CartTotRequest((r) => r
          ..orderType = 0
          ..deliveryType = 0
          ..prescriptionId = _prescriptionDetailsData.sId
          ..cartItems = _prescriptionDetailsData.lineItems.toBuilder()
          ..uniqueCode = _prescriptionDetailsData.uniqueCode);

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));

        if (response.statusCode == 200) {
          _cartTotResponse = response.body;
          await _navigationService.navigateTo(Routes.proceedToPayView,
              arguments: ProceedToPayViewArguments(
                  deliveryType: 0,
                  orderType: 0,
                  uniqueCode: _prescriptionDetailsData.uniqueCode,
                  productList: _prescriptionDetailsData.lineItems,
                  cartTotResponse: _cartTotResponse));
        }
      // _emptyView = true;
    }
  }

  getCalTotPic() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();

        CartTotRequest request = CartTotRequest((r) => r
          ..orderType = 0
          ..deliveryType = 1
          ..prescriptionId = _prescriptionDetailsData.sId
          ..cartItems = _prescriptionDetailsData.lineItems.toBuilder()
          ..uniqueCode = _prescriptionDetailsData.uniqueCode);

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));

        if (response.statusCode == 200) {
          _cartTotResponse = response.body;
          await _navigationService.navigateTo(Routes.pickupAddressView,
              arguments: PickupAddressViewArguments(
                  orderType: 0,
                  deliveryType: 1,
                  productList: _prescriptionDetailsData.lineItems,
                  cartTotResponse: _cartTotResponse));
        }
      // _emptyView = true;
    }
  }

  btnCloseForDeniedAndProgress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.back();
    }
  }

  navigateToSelfPickUp() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.popRepeated(1);
        getCalTotPic();
    }
  }

  navigateToDelivery() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        _navigationService.popRepeated(1);
        getCalTotDel();
    }
  }

  String getLanguageChangedText(var listItem, int type) {
    /*
        0- name,
        1- description,
        2- specification
        3- overview
         */
    String temp = "";
    if (lang == "en") {
      temp = listItem.name;
    } else if (lang == "ar") {
      temp = listItem.nameAr;
    }
    return temp == null ? listItem.name : temp;
  }
}
