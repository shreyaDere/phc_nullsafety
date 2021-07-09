// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Product_grid_list.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProductGridListService extends ProductGridListService {
  _$ProductGridListService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductGridListService;

  @override
  Future<Response<ProductGridListResponse>> productGridList(
      {String id, String token, ProductGridlistRequest body}) {
    final $url = '/api/categories/categoryData/$id';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ProductGridListResponse, ProductGridListResponse>($request);
  }
}
