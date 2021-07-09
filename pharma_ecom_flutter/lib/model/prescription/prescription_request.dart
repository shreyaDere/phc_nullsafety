import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prescription_request.g.dart';

abstract class PrescriptionRequest
    implements Built<PrescriptionRequest, PrescriptionRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  PrescriptionRequest._();

  factory PrescriptionRequest([updates(PrescriptionRequestBuilder b)]) =
      _$PrescriptionRequest;

  static Serializer<PrescriptionRequest> get serializer =>
      _$prescriptionRequestSerializer;
}
