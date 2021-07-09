// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onBording_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$OnBordingService extends OnBordingService {
  _$OnBordingService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OnBordingService;

  @override
  Future<Response<OnBordingResponse>> getOnboardings() {
    final $url = '/api/boarding/getBoardingScreen';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<OnBordingResponse, OnBordingResponse>($request);
  }
}
