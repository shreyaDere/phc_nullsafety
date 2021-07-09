import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/order_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/track_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/myorder/my_order_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';

class TrackOrderViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();

  // MyOrderService _trackOrderService = MyOrderService.create();

  MyOrderService _myOrderService = MyOrderService.create();

  String _orderId = "";
  String get orderId => _orderId;

  String _orderType = "";
  String get orderType => _orderType;

  String _deliveryDate = "";
  String get deliveryDate => _deliveryDate;

  TrackOrderData _trackOrderData;
  TrackOrderData get trackOrderData => _trackOrderData;
  OrderDetailResponse _orderDetailResponse = new OrderDetailResponse();
  OrderDetailResponse get orderDetailResponse => _orderDetailResponse;

  BuiltList<OrderTrackingMyOrder> _orderTrackingAry =
      new BuiltList<OrderTrackingMyOrder>();
  BuiltList<OrderTrackingMyOrder> get orderTrackingAry => _orderTrackingAry;

  final logger = getLogger("track");

  loadData(int orderId, int orderType) {
    _orderId = orderId.toString();
    _orderType = orderType.toString();
    getOrderDetails(orderId, orderType);
  }

  // getOrderDetails(int orderId) async {
  //   final token = await _storageServiceSharedPreferences.getToken();

  //   Response<TrackOrderResponse> response = await runBusyFuture(
  //       _trackOrderService.getTrackingDetails(
  //           token: "Bearer $token", id: "$orderId"));
  //   if (response.body.status == 200) {
  //     _trackOrderData = response.body.data;
  //     notifyListeners();
  //   } else {}
  // }

  getDate() {
    var arr = _trackOrderData.createdAt.split("T");
    return arr[0];
  }

  getOrderTimeStatusData(int index) {
    var arr;
    var time;
    switch (index) {
      case 0:
        if (_trackOrderData.orderComments.isNotEmpty) {
          arr = _trackOrderData.orderComments[0].time.split("T");
          time = arr[1].toString().split(":");
        } else {
          arr = _trackOrderData.createdAt.split("T");
          time = arr[1].toString().split(":");
        }
        return _trackOrderData.orderComments.isNotEmpty
            ? "${arr[0]} | ${time[0]}:${time[1]}"
            : "${arr[0]} | ${time[0]}:${time[1]}";
        break;
      case 1:
        if (_trackOrderData.packedComments.isNotEmpty) {
          arr = _trackOrderData.packedComments[0].time.split("T");
          time = arr[1].toString().split(":");
        }
        return _trackOrderData.packedComments.isNotEmpty
            ? "${arr[0]} | ${time[0]}:${time[1]}"
            : "";
        break;
      case 2:
        if (_trackOrderData.shippedComments.isNotEmpty) {
          arr = _trackOrderData.shippedComments[0].time.split("T");
          time = arr[1].toString().split(":");
        }
        return _trackOrderData.shippedComments.isNotEmpty
            ? "${arr[0]} | ${time[0]}:${time[1]}"
            : "";
        break;
      case 3:
        if (_trackOrderData.deliveryComments.isNotEmpty) {
          arr = _trackOrderData.deliveryComments[0].time.split("T");
          time = arr[1].toString().split(":");
        }
        return _trackOrderData.deliveryComments.isNotEmpty
            ? "${arr[0]} | ${time[0]}: ${time[1]}"
            : "";
        break;
      default:
    }
  }

  getColorOnOrder(int index) {
    switch (index) {
      case 0:
        return _trackOrderData.orderComments.length > 0
            ? COLOR_PRIMARY
            : Colors.white;
        break;
      case 1:
        return _trackOrderData.packedComments.length > 0
            ? COLOR_PRIMARY
            : Colors.white;
        break;
      case 2:
        return _trackOrderData.shippedComments.length > 0
            ? COLOR_PRIMARY
            : Colors.white;
        break;
      case 3:
        return _trackOrderData.deliveryComments.length > 0
            ? COLOR_PRIMARY
            : Colors.white;
        break;
      default:
    }
  }

  Widget getIconForTrackingStatus(int index) {
    switch (index) {
      case 0:
        return _trackOrderData.orderComments.length != 0
            ? SvgPicture.asset(
                'assets/icons/radiobutton.svg',
                width: 18,
                color: COLOR_PRIMARY,
              )
            : SvgPicture.asset(
                'assets/icons/radiobutton.svg',
                width: 18,
                color: COLOR_PRIMARY,
              );
        break;
      case 1:
        return _trackOrderData.packedComments.length > 0
            ? SvgPicture.asset(
                'assets/icons/radiobutton.svg',
                width: 18,
                color: COLOR_PRIMARY,
              )
            : Container();
        break;
      case 2:
        return _trackOrderData.shippedComments.length > 0
            ? SvgPicture.asset(
                'assets/icons/radiobutton.svg',
                width: 18,
                color: COLOR_PRIMARY,
              )
            : Container();
        break;
      case 3:
        return _trackOrderData.deliveryComments.length > 0
            ? SvgPicture.asset(
                'assets/icons/radiobutton.svg',
                width: 18,
                color: COLOR_PRIMARY,
              )
            : Container();
        break;
      default:
        return Container();
    }

    // if (index == (3)) {
    //   return SvgPicture.asset(
    //     'assets/icons/radiobutton.svg',
    //     width: 18,
    //     color: COLOR_GRAY_BLACK,
    //   );
    // } else if (index == (2)) {
    //   return SvgPicture.asset(
    //     'assets/icons/radiobutton.svg',
    //     width: 18,
    //     color: COLOR_GRAY_BLACK,
    //   );
    // } else {
    //   return SvgPicture.asset(
    //     'assets/icons/radiobutton.svg',
    //     width: 18,
    //     color: COLOR_PRIMARY,
    //   );
    // }
  }

  String getOrderStatusComment(int index) {
    switch (index) {
      case 0:
        return _trackOrderData.orderComments.length != 0
            ? _trackOrderData.orderComments[0].comment
            : "Order Placed";
        break;
      case 1:
        return _trackOrderData.packedComments.length != 0
            ? _trackOrderData.packedComments[0].comment
            : "";
        break;
      case 2:
        return _trackOrderData.shippedComments.length != 0
            ? _trackOrderData.shippedComments[0].comment
            : "";
        break;
      case 3:
        return _trackOrderData.deliveryComments.length != 0
            ? _trackOrderData.deliveryComments[0].comment
            : "";
        break;
      default:
        return "";
        break;
    }
  }

  getOrderDetails(int orderId, int orderType) async {
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
          _deliveryDate = _orderDetailResponse.orders.deliveryDate;
          _orderTrackingAry = (_orderTrackingAry.toBuilder()
                ..addAll(_orderDetailResponse.orders.orderTracking))
              .build();
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
}
