// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$SplashService extends SplashService {
  _$SplashService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SplashService;

  @override
  Future<Response<SplashResponse>> getSplashData() {
    final $url = '/api/splash/getSplashScreen';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<SplashResponse, SplashResponse>($request);
  }
}
