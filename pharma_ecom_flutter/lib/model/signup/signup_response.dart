import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signup_response.g.dart';

abstract class SignUpResponse
    implements Built<SignUpResponse, SignUpResponseBuilder> {
  // fields go here
  int get status;
  String get message;

  SignUpResponse._();

  factory SignUpResponse([updates(SignUpResponseBuilder b)]) = _$SignUpResponse;

  static Serializer<SignUpResponse> get serializer =>
      _$signUpResponseSerializer;
}
