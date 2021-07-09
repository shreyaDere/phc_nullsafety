import 'package:built_collection/built_collection.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/my_order/my_order_cancel_btn_status.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/myorder/my_order_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';

class MyOrderViewModel extends ConnectivityAwareViewModel {
  MyOrderViewModel() {
    _expandList = BuiltList<ExpandIndex>();
    _cancelBtnService.registerCallback(() => loadData());
    _appDrawerTService.registerCallback(() => loadData());
  }
  CancelBtnService _cancelBtnService = locator<CancelBtnService>();
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();
  MyOrderService _myOrderService = MyOrderService.create();
  final logger = getLogger("my order");
  final formKey = GlobalKey<FormState>();
  bool emptyView = false;
  int _orderType = 1;
  // BuiltList<Orders> _ordersList = BuiltList<Orders>();
  BuiltList<Orders> _reverseordersList = BuiltList<Orders>();
  BuiltList<ExpandIndex> _expandList;
  int get orderType => _orderType;
  // BuiltList<Orders> get ordersList => _ordersList;
  BuiltList<Orders> get reverseordersList => _reverseordersList;
  BuiltList<ExpandIndex> get expandList => _expandList;
  String lang;
  loadData() async {
    lang = await _storageServiceSharedPreferences.getLanguage();
    getMyOrders(orderType: 1);
    notifyListeners();
  }

  getMyOrders({int orderType}) async {
    emptyView = false;
    notifyListeners();
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        MyOrderRequest request =
            MyOrderRequest((r) => r..orderType = orderType);
        Response<MyOrderResponse> response = await runBusyFuture(_myOrderService
            .getMyOrderData(body: request, token: "Bearer $token"));
        // _ordersList = (_ordersList.toBuilder()..clear()).build();
        if (response.body.status == 200) {
          // _ordersList = response.body.orders;
          _reverseordersList =
              (response.body.orders.toBuilder()..reverse()).build();
          for (var i = 0; i < response.body.orders.length; i++) {
            _expandList =
                (_expandList.toBuilder()..add(ExpandIndex(index: i))).build();
            notifyListeners();
          }
          emptyView = true;
        } else {
          emptyView = true;
        }
    }
  }

  getDate(int index) {
    var arr = _reverseordersList[index].createdAt.split("T");
    return arr[0];
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

  onNonPrescriptionPressed() {
    _orderType = 1;
    getMyOrders(orderType: 1);
    notifyListeners();
  }

  onPrescriptionPressed() {
    _orderType = 0;
    getMyOrders(orderType: 0);
    notifyListeners();
  }

  expandNonPrescriptedview(int index) {
    if (_expandList[index].isExpanded)
      _expandList.forEach((element) => element.isExpanded = false);
    else
      _expandList[index].isExpanded = true;

    notifyListeners();
  }

  onViewSummeryClick({int orderId}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.orderSummeryView,
            arguments: OrderSummeryViewArguments(
                orderType: orderType, orderId: orderId));
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

class ExpandIndex {
  int index;
  bool isExpanded;
  ExpandIndex({this.index, this.isExpanded = false});
}
