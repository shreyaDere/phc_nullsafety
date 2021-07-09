import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_delivery_address_request.g.dart';

abstract class AddDeliveryAddressRequest
    implements
        Built<AddDeliveryAddressRequest, AddDeliveryAddressRequestBuilder> {
  // fields go here
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
  int get zip;
  @nullable
  String get address1;
  @nullable
  String get address2;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  String get phoneNo;

  AddDeliveryAddressRequest._();

  factory AddDeliveryAddressRequest(
          [updates(AddDeliveryAddressRequestBuilder b)]) =
      _$AddDeliveryAddressRequest;

  static Serializer<AddDeliveryAddressRequest> get serializer =>
      _$addDeliveryAddressRequestSerializer;
}
