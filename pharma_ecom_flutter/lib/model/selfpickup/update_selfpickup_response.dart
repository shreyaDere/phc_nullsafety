import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selfpickup/selfpickup_response.dart';

part 'update_selfpickup_response.g.dart';

abstract class UpdateSelfPickupResponse
    implements
        Built<UpdateSelfPickupResponse, UpdateSelfPickupResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  DataUpdateSelfPickupResponse get data;
  @nullable
  String get message;

  UpdateSelfPickupResponse._();

  factory UpdateSelfPickupResponse(
          [updates(UpdateSelfPickupResponseBuilder b)]) =
      _$UpdateSelfPickupResponse;

  static Serializer<UpdateSelfPickupResponse> get serializer =>
      _$updateSelfPickupResponseSerializer;
}

abstract class DataUpdateSelfPickupResponse
    implements
        Built<DataUpdateSelfPickupResponse,
            DataUpdateSelfPickupResponseBuilder> {
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
  @nullable
  int get pickupMobNumber;
  @nullable
  String get pickupPerson;

  DataUpdateSelfPickupResponse._();

  factory DataUpdateSelfPickupResponse(
          [updates(DataUpdateSelfPickupResponseBuilder b)]) =
      _$DataUpdateSelfPickupResponse;

  static Serializer<DataUpdateSelfPickupResponse> get serializer =>
      _$dataUpdateSelfPickupResponseSerializer;
}
