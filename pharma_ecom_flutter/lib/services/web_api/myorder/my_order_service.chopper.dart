// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MyOrderService extends MyOrderService {
  _$MyOrderService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MyOrderService;

  @override
  Future<Response<MyOrderResponse>> getMyOrderData(
      {MyOrderRequest body, String token}) {
    final $url = '/api/checkout/myOrders';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<MyOrderResponse, MyOrderResponse>($request);
  }

  @override
  Future<Response<OrderDetailResponse>> getOrderDetail(
      {MyOrderRequest body, String token, String id}) {
    final $url = '/api/checkout/orderDetail/$id';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<OrderDetailResponse, OrderDetailResponse>($request);
  }

  @override
  Future<Response<TrackOrderResponse>> getTrackingDetails(
      {String token, String id}) {
    final $url = '/api/tracking/trackingDetails/$id';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<TrackOrderResponse, TrackOrderResponse>($request);
  }

  @override
  Future<Response<CancelOrderResponse>> cancelOrder(
      {CancelOrderRequest body, String token}) {
    final $url = '/api/checkout/cancelOrder';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<CancelOrderResponse, CancelOrderResponse>($request);
  }
}
