import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selfpickup/selfpickup_response.dart';

part 'update_selfpickup_request.g.dart';

abstract class UpdateSelfPickUpRequest
    implements Built<UpdateSelfPickUpRequest, UpdateSelfPickUpRequestBuilder> {
  // fields go here
  @nullable
  PickupBranchSelfPichUpResponseGetApi get pickupBranch;
  @nullable
  int get pickupCode;
  @nullable
  String get pickupPerson;
  @nullable
  int get pickupMobNumber;

  UpdateSelfPickUpRequest._();

  factory UpdateSelfPickUpRequest([updates(UpdateSelfPickUpRequestBuilder b)]) =
      _$UpdateSelfPickUpRequest;

  static Serializer<UpdateSelfPickUpRequest> get serializer =>
      _$updateSelfPickUpRequestSerializer;
}
