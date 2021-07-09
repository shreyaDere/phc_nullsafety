import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'otp_verification_request.g.dart';

abstract class OtpVerificationRequest
    implements Built<OtpVerificationRequest, OtpVerificationRequestBuilder> {
  // fields go here
  int get phoneNumber;
  String get code;

  OtpVerificationRequest._();

  factory OtpVerificationRequest([updates(OtpVerificationRequestBuilder b)]) =
      _$OtpVerificationRequest;

  static Serializer<OtpVerificationRequest> get serializer =>
      _$otpVerificationRequestSerializer;
}
