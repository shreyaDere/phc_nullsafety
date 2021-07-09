import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_comment_response.g.dart';

abstract class AllCommentResponse
    implements Built<AllCommentResponse, AllCommentResponseBuilder> {
  // fields go here
  int get status;
  @nullable
  BuiltList<AllCommentResponseData> get data;
  String get message;
  AllCommentResponse._();

  factory AllCommentResponse([updates(AllCommentResponseBuilder b)]) =
      _$AllCommentResponse;

  static Serializer<AllCommentResponse> get serializer =>
      _$allCommentResponseSerializer;
}

abstract class AllCommentResponseData
    implements Built<AllCommentResponseData, AllCommentResponseDataBuilder> {
  // fields go here
  @nullable
  BuiltList<String> get media;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  int get rating;
  @nullable
  String get review;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  String get username;
  @nullable
  @BuiltValueField(wireName: "product_id")
  String get productId;

  AllCommentResponseData._();

  factory AllCommentResponseData([updates(AllCommentResponseDataBuilder b)]) =
      _$AllCommentResponseData;

  static Serializer<AllCommentResponseData> get serializer =>
      _$allCommentResponseDataSerializer;
}
