// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PaymentService extends PaymentService {
  _$PaymentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaymentService;

  @override
  Future<Response<PaymentResponse>> payment(
      {PaymentRequest body, String token}) {
    final $url = '/api/checkout/payment';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<PaymentResponse, PaymentResponse>($request);
  }

  @override
  Future<Response<PaymentMethodResponse>> getPaymentMethods({String token}) {
    final $url = '/api/shipping/getShippingMethods';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PaymentMethodResponse, PaymentMethodResponse>($request);
  }
}
