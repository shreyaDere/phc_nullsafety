// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addset.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AdsetsService extends AdsetsService {
  _$AdsetsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AdsetsService;

  @override
  Future<Response<GetMultipleAdsetsResponse>> getMultipleAdsets(
      {MultipleAdsetsRequest body, String token}) {
    final $url = '/api/adsets/getMultipleAdsets';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<GetMultipleAdsetsResponse, GetMultipleAdsetsResponse>($request);
  }
}
