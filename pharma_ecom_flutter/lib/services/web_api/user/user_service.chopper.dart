// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UserService extends UserService {
  _$UserService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserService;

  @override
  Future<Response<SignUpResponse>> signup({SignupRequest body}) {
    final $url = '/api/otpauth/verify?phoneNumber={phoneNumber}&code={code}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignUpResponse, SignUpResponse>($request);
  }

  @override
  Future<Response<BuiltEmailLoginResponse>> emailLogin(
      {BuiltEmailLoginRequest body}) {
    final $url = '/api/otpauth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<BuiltEmailLoginResponse, BuiltEmailLoginResponse>($request);
  }

  @override
  Future<Response<OtpVerificationResponse>> otpVerification(
      {OtpVerificationRequest body}) {
    final $url = '/api/otpauth/verify';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<OtpVerificationResponse, OtpVerificationResponse>($request);
  }

  @override
  Future<Response<EditProfileResponse>> getUserProfile({String token}) {
    final $url = '/api/users/me/';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<EditProfileResponse, EditProfileResponse>($request);
  }

  @override
  Future<Response<FcmResponse>> updateFcm({String token, FcmRequest body}) {
    final $url = '/api/users/updateFcmToken';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<FcmResponse, FcmResponse>($request);
  }

  @override
  Future<Response<UserStatusResponse>> checkActiveStatus({String token}) {
    final $url = '/api/checkActiveStatus';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<UserStatusResponse, UserStatusResponse>($request);
  }
}
