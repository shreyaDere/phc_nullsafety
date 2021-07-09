import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_prescription_response.g.dart';

abstract class UploadPrescriptionResponse
    implements
        Built<UploadPrescriptionResponse, UploadPrescriptionResponseBuilder> {
  // fields go here
  int get status;
  String get message;

  UploadPrescriptionResponse._();

  factory UploadPrescriptionResponse(
          [updates(UploadPrescriptionResponseBuilder b)]) =
      _$UploadPrescriptionResponse;

  static Serializer<UploadPrescriptionResponse> get serializer =>
      _$uploadPrescriptionResponseSerializer;
}
