// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proceed_to_pay.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProceedToPayService extends ProceedToPayService {
  _$ProceedToPayService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProceedToPayService;

  @override
  Future<Response<ProceedToPayResponse>> proceedToPayDetails(
      {ProceedToPayRequest body}) {
    final $url = '/api/auth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ProceedToPayResponse, ProceedToPayResponse>($request);
  }
}
