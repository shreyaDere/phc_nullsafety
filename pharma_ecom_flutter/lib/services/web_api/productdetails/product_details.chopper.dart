// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProductDetailsService extends ProductDetailsService {
  _$ProductDetailsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProductDetailsService;

  @override
  Future<Response<ProductDetailResponse>> productDetails({String id}) {
    final $url = '/api/products/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProductDetailResponse, ProductDetailResponse>($request);
  }
}
