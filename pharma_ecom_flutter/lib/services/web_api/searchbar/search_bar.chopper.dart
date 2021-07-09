// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$SearchBarService extends SearchBarService {
  _$SearchBarService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SearchBarService;

  @override
  Future<Response<SearchBarResponse>> getSearchString({SearchRequest body}) {
    final $url = '/api/products/search';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SearchBarResponse, SearchBarResponse>($request);
  }
}
