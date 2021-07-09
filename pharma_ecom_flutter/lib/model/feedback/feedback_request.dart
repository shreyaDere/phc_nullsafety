import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback_request.g.dart';

abstract class FeedBackRequest
    implements Built<FeedBackRequest, FeedBackRequestBuilder> {
  // fields go here
  @nullable
  int get orderID;
  @nullable
  double get rating;
  @nullable
  String get comment;

  FeedBackRequest._();

  factory FeedBackRequest([updates(FeedBackRequestBuilder b)]) =
      _$FeedBackRequest;

  static Serializer<FeedBackRequest> get serializer =>
      _$feedBackRequestSerializer;
}
