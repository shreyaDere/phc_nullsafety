// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CartService extends CartService {
  _$CartService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CartService;

  @override
  Future<Response<AddToCartResponse>> addToCart(
      {AddToCartRequest body, String token}) {
    final $url = '/api/checkout/addToCart';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<AddToCartResponse, AddToCartResponse>($request);
  }

  @override
  Future<Response<UniversalResponse>> removeFromCart(
      {String id, String token}) {
    final $url = '/api/checkout/deleteFromCart/$id';
    final $headers = {'Authorization': token};
    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<UniversalResponse, UniversalResponse>($request);
  }

  @override
  Future<Response<GetCartResponse>> getCart({String token}) {
    final $url = '/api/checkout/getMyCart';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<GetCartResponse, GetCartResponse>($request);
  }

  @override
  Future<Response<CouponResponse>> getCoupons() {
    final $url = '/api/coupons/list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CouponResponse, CouponResponse>($request);
  }

  @override
  Future<Response<CartTotResponse>> getCartTotal(
      {String token, CartTotRequest body}) {
    final $url = '/api/checkout/calculateTotals';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<CartTotResponse, CartTotResponse>($request);
  }
}
