import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/get_pickup_address_response.dart';

part 'pickup_address_response.g.dart';

abstract class PickUpAddressResponse
    implements Built<PickUpAddressResponse, PickUpAddressResponseBuilder> {
  // fields go here

  int get status;
  @nullable
  PickUpAddressResponseData get data;
  String get message;

  PickUpAddressResponse._();

  factory PickUpAddressResponse([updates(PickUpAddressResponseBuilder b)]) =
      _$PickUpAddressResponse;

  static Serializer<PickUpAddressResponse> get serializer =>
      _$pickUpAddressResponseSerializer;
}

abstract class PickUpAddressResponseData
    implements
        Built<PickUpAddressResponseData, PickUpAddressResponseDataBuilder> {
  // fields go here
  @nullable
  String get sId;
  @nullable
  PickupBranch get pickupBranch;
  @nullable
  int get pickupCode;
  @nullable
  String get userID;
  @nullable
  int get pickupMobNumber;
  @nullable
  String get pickupPerson;
  @nullable
  String get updatedAt;

  PickUpAddressResponseData._();

  factory PickUpAddressResponseData(
          [updates(PickUpAddressResponseDataBuilder b)]) =
      _$PickUpAddressResponseData;

  static Serializer<PickUpAddressResponseData> get serializer =>
      _$pickUpAddressResponseDataSerializer;
}
