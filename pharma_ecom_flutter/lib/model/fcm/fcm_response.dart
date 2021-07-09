import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fcm_response.g.dart';

abstract class FcmResponse implements Built<FcmResponse, FcmResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  // @nullable
  // @BuiltValueField(wireName: "data")
  // String get fcmData;
  @nullable
  String get message;

  FcmResponse._();

  factory FcmResponse([updates(FcmResponseBuilder b)]) = _$FcmResponse;

  static Serializer<FcmResponse> get serializer => _$fcmResponseSerializer;
}
