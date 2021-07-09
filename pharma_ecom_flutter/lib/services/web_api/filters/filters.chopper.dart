// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$FilterService extends FilterService {
  _$FilterService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FilterService;

  @override
  Future<Response<FilterResponse>> getFilters({FilterRequest body}) {
    final $url = '/api/auth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<FilterResponse, FilterResponse>($request);
  }
}
