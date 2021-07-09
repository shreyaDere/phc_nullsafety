import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/order_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/my_order/my_order_cancel_btn_status.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/myorder/my_order_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderSummeryViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SnackBarView _snackbarView = new SnackBarView();
  CancelBtnService _cancelBtnService = locator<CancelBtnService>();
  MyOrderService _myOrderService = MyOrderService.create();
  final logger = getLogger("order summery");

  int _orderType;
  int get orderType => _orderType;
  int _orderId;
  int get orderId => _orderId;
  OrderDetailResponse _orderDetailResponse = new OrderDetailResponse();
  OrderDetailResponse get orderDetailResponse => _orderDetailResponse;
  String lang;
  loadData({int orderType, int orderId}) async {
    _orderType = orderType;
    _orderId = orderId;
    lang = await _storageServiceSharedPreferences.getLanguage();
    getOrderDetails();
  }

  getDate() {
    var arr = _orderDetailResponse.orders.createdAt.split("T");
    return arr[0];
  }

  onRateOrderClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.orderStatusView,
            arguments: OrderStatusViewArguments(orderId: orderId));
    }
  }

  onTrackClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.trackOrderView,
            arguments: TrackOrderViewArguments(
                orderId: _orderId, orderType: orderType));
    }
  }

  onCancelPress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        CancelOrderRequest request = new CancelOrderRequest((r) => r
          ..orderID = orderId
          ..orderStatus = 5);
        Response<CancelOrderResponse> response = await runBusyFuture(
            _myOrderService.cancelOrder(body: request, token: "Bearer $token"));
        if (response.body.status == 200) {
          _snackbarView.showSuccessSnackBarUni(
              message: getTranslatedValues("cancel_msg"));
          getOrderDetails();
          _cancelBtnService.callback();
          notifyListeners();
        } else {}
    }
  }

  String getOrderStatus({int status}) {
    switch (status) {
      case 0:
        return getTranslatedValues("pending");
        break;
      case 1:
        return getTranslatedValues("paid_processing");
        break;
      case 2:
        return getTranslatedValues("assign_to_shipping");
        break;
      case 3:
        return getTranslatedValues("shipped");
        break;
      case 4:
        return getTranslatedValues("delivered");
        break;
      case 5:
        return getTranslatedValues("cancelled");
        break;
      default:
        return "";
        break;
    }
  }

  getOrderDetails() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        MyOrderRequest request =
            MyOrderRequest((r) => r..orderType = orderType);
        Response<OrderDetailResponse> response = await runBusyFuture(
            _myOrderService.getOrderDetail(
                body: request, token: "Bearer $token", id: "$orderId"));
        if (response.body.status == 200) {
          _orderDetailResponse = response.body;
          notifyListeners();
        } else {}
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
