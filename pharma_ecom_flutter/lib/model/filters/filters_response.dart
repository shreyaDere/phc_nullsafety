import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filters_response.g.dart';

abstract class FilterResponse
    implements Built<FilterResponse, FilterResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  FilterResponse._();

  factory FilterResponse([updates(FilterResponseBuilder b)]) = _$FilterResponse;

  static Serializer<FilterResponse> get serializer =>
      _$filterResponseSerializer;
}
