// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$BrandsService extends BrandsService {
  _$BrandsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BrandsService;

  @override
  Future<Response<BrandsResponse>> getProductsBranads({BrandsRequest body}) {
    final $url = '/api/categories/getProductsOnBrands';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BrandsResponse, BrandsResponse>($request);
  }
}
