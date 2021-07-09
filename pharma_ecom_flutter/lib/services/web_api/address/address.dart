import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/delete_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/get_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/get_pickup_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_response.dart';
part 'address.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class AddressService extends ChopperService {
  @Post(path: 'api/address/addAddress/{id}')
  Future<Response<AddDeliveryAddressResponse>> updateAddress(
      {@Body() AddDeliveryAddressRequest body,
      @Header("Authorization") String token,
      @Path() String id});

  @Get(path: 'api/address/getAddress')
  Future<Response<GetAddressResponse>> getAllAddress({
    @Header("Authorization") String token,
  });

  @Post(path: 'api/address/deleteAddress/{id}')
  Future<Response<DeleteAddressResponse>> deleteAddress(
      {@Header("Authorization") String token, @Path() String id});

  @Post(path: 'api/address/addAddress/New')
  Future<Response<AddDeliveryAddressResponse>> addDeliveryAddress(
      {@Body() AddDeliveryAddressRequest body,
      @Header("Authorization") String token});
  @Get(path: 'api/selfPickup/getselfPickup')
  Future<Response<GetPickUpAddressResponse>> getPickUpAddress(
      {@Header("Authorization") String token});
  @Post(path: 'api/selfPickup/update')
  Future<Response<PickUpAddressResponse>> addPickUpAddressDetail(
      {@Header("Authorization") String token,
      @Body() PickUpAddressRequest body});

  static AddressService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$AddressService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$AddressService(client);
  }
}
