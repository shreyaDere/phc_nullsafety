import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'universal_response.g.dart';

abstract class UniversalResponse
    implements Built<UniversalResponse, UniversalResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "message")
  String get message;

  UniversalResponse._();

  factory UniversalResponse([updates(UniversalResponseBuilder b)]) =
      _$UniversalResponse;

  static Serializer<UniversalResponse> get serializer =>
      _$universalResponseSerializer;
}
