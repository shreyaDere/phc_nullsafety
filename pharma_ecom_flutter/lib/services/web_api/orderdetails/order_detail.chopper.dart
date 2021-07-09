// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$OrderDetailsService extends OrderDetailsService {
  _$OrderDetailsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OrderDetailsService;

  @override
  Future<Response<OrderDetailsResponse>> orderDetails(
      {OrderDetailsRequest body}) {
    final $url = '/api/auth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<OrderDetailsResponse, OrderDetailsResponse>($request);
  }
}
