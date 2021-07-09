import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_order_response.g.dart';

abstract class TrackOrderResponse
    implements Built<TrackOrderResponse, TrackOrderResponseBuilder> {
  // fields go here
  int get status;
  @nullable
  TrackOrderData get data;
  String get message;

  TrackOrderResponse._();

  factory TrackOrderResponse([updates(TrackOrderResponseBuilder b)]) =
      _$TrackOrderResponse;

  static Serializer<TrackOrderResponse> get serializer =>
      _$trackOrderResponseSerializer;
}

abstract class TrackOrderData
    implements Built<TrackOrderData, TrackOrderDataBuilder> {
  // fields go here
  @nullable
  BuiltList<CommentData> get orderComments;
  @nullable
  BuiltList<CommentData> get packedComments;
  @nullable
  BuiltList<CommentData> get shippedComments;
  @nullable
  BuiltList<CommentData> get deliveryComments;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get userID;
  @nullable
  int get orderID;
  @nullable
  int get orderStatus;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  TrackOrderData._();

  factory TrackOrderData([updates(TrackOrderDataBuilder b)]) = _$TrackOrderData;

  static Serializer<TrackOrderData> get serializer =>
      _$trackOrderDataSerializer;
}

abstract class CommentData implements Built<CommentData, CommentDataBuilder> {
  // fields go here
  @nullable
  String get comment;
  @nullable
  String get time;

  CommentData._();

  factory CommentData([updates(CommentDataBuilder b)]) = _$CommentData;

  static Serializer<CommentData> get serializer => _$commentDataSerializer;
}
