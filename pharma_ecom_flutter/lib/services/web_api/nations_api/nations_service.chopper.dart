// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nations_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NationsService extends NationsService {
  _$NationsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NationsService;

  @override
  Future<Response<BuildCountriesListResponse>> getCountries() {
    final $url = '/getCountries';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BuildCountriesListResponse, BuildCountriesListResponse>($request);
  }

  @override
  Future<Response<BuildStateListResponse>> getStates({String id}) {
    final $url = '/getStatesForCountry/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BuildStateListResponse, BuildStateListResponse>($request);
  }

  @override
  Future<Response<BuildCitiesListResponse>> getCities(
      {String cid, String sid}) {
    final $url = '/getCitiesForState/$cid/$sid';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BuildCitiesListResponse, BuildCitiesListResponse>($request);
  }
}
