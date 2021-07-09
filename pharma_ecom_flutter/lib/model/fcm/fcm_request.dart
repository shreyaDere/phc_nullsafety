import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fcm_request.g.dart';

abstract class FcmRequest implements Built<FcmRequest, FcmRequestBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "fcm_token")
  String get fcmToken;

  FcmRequest._();

  factory FcmRequest([updates(FcmRequestBuilder b)]) = _$FcmRequest;

  static Serializer<FcmRequest> get serializer => _$fcmRequestSerializer;
}
