import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_multiple_adset_request.g.dart';

abstract class MultipleAdsetsRequest
    implements Built<MultipleAdsetsRequest, MultipleAdsetsRequestBuilder> {
  // fields go here
  @nullable
  BuiltList<String> get adsets;
  MultipleAdsetsRequest._();

  factory MultipleAdsetsRequest([updates(MultipleAdsetsRequestBuilder b)]) =
      _$MultipleAdsetsRequest;

  static Serializer<MultipleAdsetsRequest> get serializer =>
      _$multipleAdsetsRequestSerializer;
}
