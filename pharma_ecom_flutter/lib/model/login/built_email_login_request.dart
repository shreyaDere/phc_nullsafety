import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_email_login_request.g.dart';

abstract class BuiltEmailLoginRequest
    implements Built<BuiltEmailLoginRequest, BuiltEmailLoginRequestBuilder> {
  // fields go here
  int get phoneNumber;
  String get channel;

  BuiltEmailLoginRequest._();

  factory BuiltEmailLoginRequest([updates(BuiltEmailLoginRequestBuilder b)]) =
      _$BuiltEmailLoginRequest;

  static Serializer<BuiltEmailLoginRequest> get serializer =>
      _$builtEmailLoginRequestSerializer;
}
