import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selfpickup_response.g.dart';

abstract class SelfPichUpResponseGetApi
    implements
        Built<SelfPichUpResponseGetApi, SelfPichUpResponseGetApiBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  String get message;
  @nullable
  DataSelfPichUpResponseGetApi get data;

  SelfPichUpResponseGetApi._();

  factory SelfPichUpResponseGetApi(
          [updates(SelfPichUpResponseGetApiBuilder b)]) =
      _$SelfPichUpResponseGetApi;

  static Serializer<SelfPichUpResponseGetApi> get serializer =>
      _$selfPichUpResponseGetApiSerializer;
}

abstract class DataSelfPichUpResponseGetApi
    implements
        Built<DataSelfPichUpResponseGetApi,
            DataSelfPichUpResponseGetApiBuilder> {
  // fields go here
  @nullable
  BuiltList<PickupBranchSelfPichUpResponseGetApi> get pickupBranch;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  int get pickupCode;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  DataSelfPichUpResponseGetApi._();

  factory DataSelfPichUpResponseGetApi(
          [updates(DataSelfPichUpResponseGetApiBuilder b)]) =
      _$DataSelfPichUpResponseGetApi;

  static Serializer<DataSelfPichUpResponseGetApi> get serializer =>
      _$dataSelfPichUpResponseGetApiSerializer;
}

abstract class PickupBranchSelfPichUpResponseGetApi
    implements
        Built<PickupBranchSelfPichUpResponseGetApi,
            PickupBranchSelfPichUpResponseGetApiBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "phone_number")
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

  PickupBranchSelfPichUpResponseGetApi._();

  factory PickupBranchSelfPichUpResponseGetApi(
          [updates(PickupBranchSelfPichUpResponseGetApiBuilder b)]) =
      _$PickupBranchSelfPichUpResponseGetApi;

  static Serializer<PickupBranchSelfPichUpResponseGetApi> get serializer =>
      _$pickupBranchSelfPichUpResponseGetApiSerializer;
}
