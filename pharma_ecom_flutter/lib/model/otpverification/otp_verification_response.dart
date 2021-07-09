import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'otp_verification_response.g.dart';

abstract class OtpVerificationResponse
    implements Built<OtpVerificationResponse, OtpVerificationResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  OtpResponseData get data;
  @nullable
  int get userStatus;
  @nullable
  String get message;

  OtpVerificationResponse._();

  factory OtpVerificationResponse([updates(OtpVerificationResponseBuilder b)]) =
      _$OtpVerificationResponse;

  static Serializer<OtpVerificationResponse> get serializer =>
      _$otpVerificationResponseSerializer;
}

abstract class OtpResponseData
    implements Built<OtpResponseData, OtpResponseDataBuilder> {
  // fields go here
  @nullable
  String get to;
  @nullable
  String get channel;
  @nullable
  String get status;
  @nullable
  bool get valid;
  @nullable
  String get token;
  @nullable
  String get dateUpdated;

  OtpResponseData._();

  factory OtpResponseData([updates(OtpResponseDataBuilder b)]) =
      _$OtpResponseData;

  static Serializer<OtpResponseData> get serializer =>
      _$otpResponseDataSerializer;
}
