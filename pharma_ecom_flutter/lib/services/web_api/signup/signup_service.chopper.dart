// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$SignUpService extends SignUpService {
  _$SignUpService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SignUpService;

  @override
  Future<Response<SignUpResponse>> signup({SignupRequest body}) {
    final $url = '/api/otpauth/verify?phoneNumber={phoneNumber}&code={code}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignUpResponse, SignUpResponse>($request);
  }
}
