import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_pickup_address_response.g.dart';

abstract class GetPickUpAddressResponse
    implements
        Built<GetPickUpAddressResponse, GetPickUpAddressResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  AddressData get data;
  GetPickUpAddressResponse._();

  factory GetPickUpAddressResponse(
          [updates(GetPickUpAddressResponseBuilder b)]) =
      _$GetPickUpAddressResponse;

  static Serializer<GetPickUpAddressResponse> get serializer =>
      _$getPickUpAddressResponseSerializer;
}

abstract class AddressData implements Built<AddressData, AddressDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  BuiltList<PickupBranch> get pickupBranch;
  @nullable
  int get pickupCode;
  @nullable
  String get userID;

  AddressData._();

  factory AddressData([updates(AddressDataBuilder b)]) = _$AddressData;

  static Serializer<AddressData> get serializer => _$addressDataSerializer;
}

abstract class PickupBranch
    implements Built<PickupBranch, PickupBranchBuilder> {
  @BuiltValueField(wireName: "_id")
  @nullable
  String get sId;
  @nullable
  String get name;
  @BuiltValueField(wireName: "phone_number")
  @nullable
  int get phoneNumber;
  @nullable
  String get addressLine1;
  @nullable
  String get addressLine2;
  @nullable
  String get addressLine3;
  @nullable
  String get area;
  @nullable
  String get landmark;
  @nullable
  String get city;
  @nullable
  int get zip;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  PickupBranch._();

  factory PickupBranch([updates(PickupBranchBuilder b)]) = _$PickupBranch;

  static Serializer<PickupBranch> get serializer => _$pickupBranchSerializer;
}
