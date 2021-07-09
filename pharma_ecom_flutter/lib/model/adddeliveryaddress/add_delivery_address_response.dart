import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_delivery_address_response.g.dart';

abstract class AddDeliveryAddressResponse
    implements
        Built<AddDeliveryAddressResponse, AddDeliveryAddressResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  UniversalResponseAddress get data;
  @nullable
  String get message;
  AddDeliveryAddressResponse._();

  factory AddDeliveryAddressResponse(
          [updates(AddDeliveryAddressResponseBuilder b)]) =
      _$AddDeliveryAddressResponse;

  static Serializer<AddDeliveryAddressResponse> get serializer =>
      _$addDeliveryAddressResponseSerializer;
}

abstract class UniversalResponseAddress
    implements
        Built<UniversalResponseAddress, UniversalResponseAddressBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  String get phoneNumber;
  @nullable
  int get label;
  @nullable
  String get name;
  @nullable
  String get city;
  @nullable
  String get state;
  @nullable
  String get country;
  @nullable
  int get defaultAddress;
  @nullable
  String get zip;
  @nullable
  String get address1;
  @nullable
  String get address2;

  UniversalResponseAddress._();

  factory UniversalResponseAddress(
          [updates(UniversalResponseAddressBuilder b)]) =
      _$UniversalResponseAddress;

  static Serializer<UniversalResponseAddress> get serializer =>
      _$universalResponseAddressSerializer;
}
