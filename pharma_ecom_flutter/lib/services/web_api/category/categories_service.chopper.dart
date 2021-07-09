// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CategoriesService extends CategoriesService {
  _$CategoriesService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CategoriesService;

  @override
  Future<Response<CategoryGetResponse>> getAllCategories({String token}) {
    final $url = '/api/categories/getAllCategories';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<CategoryGetResponse, CategoryGetResponse>($request);
  }

  @override
  Future<Response<CategoriesDetailsBrandsResponse>> getCategoryDetails(
      {String id, String token}) {
    final $url = '/api/categories/getSubCategories/$id';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<CategoriesDetailsBrandsResponse,
        CategoriesDetailsBrandsResponse>($request);
  }
}
