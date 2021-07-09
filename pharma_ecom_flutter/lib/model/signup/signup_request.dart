import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signup_request.g.dart';

abstract class SignupRequest
    implements Built<SignupRequest, SignupRequestBuilder> {
  // fields go here
  @BuiltValueField(wireName: "first_name")
  String get firstName;
  @BuiltValueField(wireName: "last_name")
  String get lastName;
  String get email;
  String get gender;

  SignupRequest._();

  factory SignupRequest([updates(SignupRequestBuilder b)]) = _$SignupRequest;

  static Serializer<SignupRequest> get serializer => _$signupRequestSerializer;
}
