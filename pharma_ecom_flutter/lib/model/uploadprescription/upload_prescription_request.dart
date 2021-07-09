import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_prescription_request.g.dart';

abstract class UploadPrescriptionRequest
    implements
        Built<UploadPrescriptionRequest, UploadPrescriptionRequestBuilder> {
  // fields go here
  String get email;
  String get password;
  UploadPrescriptionRequest._();

  factory UploadPrescriptionRequest(
          [updates(UploadPrescriptionRequestBuilder b)]) =
      _$UploadPrescriptionRequest;

  static Serializer<UploadPrescriptionRequest> get serializer =>
      _$uploadPrescriptionRequestSerializer;
}
