import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'on_bording_response.g.dart';

abstract class OnBordingResponse
    implements Built<OnBordingResponse, OnBordingResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  BuiltList<BoardData> get data;
  @nullable
  String get message;
  OnBordingResponse._();

  factory OnBordingResponse([updates(OnBordingResponseBuilder b)]) =
      _$OnBordingResponse;

  static Serializer<OnBordingResponse> get serializer =>
      _$onBordingResponseSerializer;
}

abstract class BoardData implements Built<BoardData, BoardDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get boardingScreenName;
  @nullable
  String get boardingScreenSlug;
  @nullable
  String get boardingScreenDescription;
  @nullable
  String get boardingScreenImage;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;
  BoardData._();

  factory BoardData([updates(BoardDataBuilder b)]) = _$BoardData;

  static Serializer<BoardData> get serializer => _$boardDataSerializer;
}
