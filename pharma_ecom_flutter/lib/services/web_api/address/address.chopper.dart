// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AddressService extends AddressService {
  _$AddressService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AddressService;

  @override
  Future<Response<AddDeliveryAddressResponse>> updateAddress(
      {AddDeliveryAddressRequest body, String token, String id}) {
    final $url = '/api/address/addAddress/$id';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<AddDeliveryAddressResponse, AddDeliveryAddressResponse>($request);
  }

  @override
  Future<Response<GetAddressResponse>> getAllAddress({String token}) {
    final $url = '/api/address/getAddress';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<GetAddressResponse, GetAddressResponse>($request);
  }

  @override
  Future<Response<DeleteAddressResponse>> deleteAddress(
      {String token, String id}) {
    final $url = '/api/address/deleteAddress/$id';
    final $headers = {'Authorization': token};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<DeleteAddressResponse, DeleteAddressResponse>($request);
  }

  @override
  Future<Response<AddDeliveryAddressResponse>> addDeliveryAddress(
      {AddDeliveryAddressRequest body, String token}) {
    final $url = '/api/address/addAddress/New';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<AddDeliveryAddressResponse, AddDeliveryAddressResponse>($request);
  }

  @override
  Future<Response<GetPickUpAddressResponse>> getPickUpAddress({String token}) {
    final $url = '/api/selfPickup/getselfPickup';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<GetPickUpAddressResponse, GetPickUpAddressResponse>($request);
  }

  @override
  Future<Response<PickUpAddressResponse>> addPickUpAddressDetail(
      {String token, PickUpAddressRequest body}) {
    final $url = '/api/selfPickup/update';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<PickUpAddressResponse, PickUpAddressResponse>($request);
  }
}
