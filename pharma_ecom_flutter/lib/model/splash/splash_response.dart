import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'splash_response.g.dart';

abstract class SplashResponse
    implements Built<SplashResponse, SplashResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  BuiltList<SplashData> get data;
  @nullable
  String get message;

  SplashResponse._();

  factory SplashResponse([updates(SplashResponseBuilder b)]) = _$SplashResponse;

  static Serializer<SplashResponse> get serializer =>
      _$splashResponseSerializer;
}

abstract class SplashData implements Built<SplashData, SplashDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get splashScreenName;
  @nullable
  String get splashScreenSlug;
  @nullable
  String get splashScreenDescription;
  @nullable
  String get splashScreenImage;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  SplashData._();

  factory SplashData([updates(SplashDataBuilder b)]) = _$SplashData;

  static Serializer<SplashData> get serializer => _$splashDataSerializer;
}
