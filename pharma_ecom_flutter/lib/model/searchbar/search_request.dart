import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_request.g.dart';

abstract class SearchRequest
    implements Built<SearchRequest, SearchRequestBuilder> {
  // fields go here
  @nullable
  String get search;

  SearchRequest._();

  factory SearchRequest([updates(SearchRequestBuilder b)]) = _$SearchRequest;

  static Serializer<SearchRequest> get serializer => _$searchRequestSerializer;
}
