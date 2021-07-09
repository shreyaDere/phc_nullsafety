import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback_response.g.dart';

abstract class FeedBackResponse
    implements Built<FeedBackResponse, FeedBackResponseBuilder> {
  // fields go here
  int get status;
  FeedBackResponseData get data;
  String get message;

  FeedBackResponse._();

  factory FeedBackResponse([updates(FeedBackResponseBuilder b)]) =
      _$FeedBackResponse;

  static Serializer<FeedBackResponse> get serializer =>
      _$feedBackResponseSerializer;
}

abstract class FeedBackResponseData
    implements Built<FeedBackResponseData, FeedBackResponseDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  int get orderID;
  @nullable
  String get userID;
  @nullable
  int get rating;
  @nullable
  String get comment;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  FeedBackResponseData._();

  factory FeedBackResponseData([updates(FeedBackResponseDataBuilder b)]) =
      _$FeedBackResponseData;

  static Serializer<FeedBackResponseData> get serializer =>
      _$feedBackResponseDataSerializer;
}
