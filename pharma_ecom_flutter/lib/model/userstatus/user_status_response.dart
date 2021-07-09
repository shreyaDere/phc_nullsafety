import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_status_response.g.dart';

abstract class UserStatusResponse
    implements Built<UserStatusResponse, UserStatusResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "active")
  bool get active;
  @nullable
  @BuiltValueField(wireName: "message")
  String get message;

  UserStatusResponse._();

  factory UserStatusResponse([updates(UserStatusResponseBuilder b)]) =
      _$UserStatusResponse;

  static Serializer<UserStatusResponse> get serializer =>
      _$userStatusResponseSerializer;
}
