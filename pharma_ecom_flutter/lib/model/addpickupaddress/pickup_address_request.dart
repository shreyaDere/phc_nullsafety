import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/get_pickup_address_response.dart';

part 'pickup_address_request.g.dart';

abstract class PickUpAddressRequest
    implements Built<PickUpAddressRequest, PickUpAddressRequestBuilder> {
  // fields go here
  @nullable
  PickupBranch get pickupBranch;
  @nullable
  int get pickupCode;
  @nullable
  String get pickupPerson;
  @nullable
  int get pickupMobNumber;
  PickUpAddressRequest._();
  factory PickUpAddressRequest([updates(PickUpAddressRequestBuilder b)]) =
      _$PickUpAddressRequest;

  static Serializer<PickUpAddressRequest> get serializer =>
      _$pickUpAddressRequestSerializer;
}
