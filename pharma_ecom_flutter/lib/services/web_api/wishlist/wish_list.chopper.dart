// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$WishListService extends WishListService {
  _$WishListService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WishListService;

  @override
  Future<Response<WishListResponse>> getWishList({String token}) {
    final $url = '/api/wishlist/getWishlist';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<WishListResponse, WishListResponse>($request);
  }

  @override
  Future<Response<DeleteItemFromWishListResponse>> deleteFromWishList(
      {String id, String token}) {
    final $url = '/api/wishlist/removeFromWishlist/$id';
    final $headers = {'Authorization': token};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<DeleteItemFromWishListResponse,
        DeleteItemFromWishListResponse>($request);
  }

  @override
  Future<Response<AddItemResponse>> addToWishList({String id, String token}) {
    final $url = '/api/wishlist/addToWishlist/$id';
    final $headers = {'Authorization': token};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<AddItemResponse, AddItemResponse>($request);
  }
}
