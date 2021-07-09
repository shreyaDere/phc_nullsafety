import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filters_request.g.dart';

abstract class FilterRequest
    implements Built<FilterRequest, FilterRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  FilterRequest._();

  factory FilterRequest([updates(FilterRequestBuilder b)]) = _$FilterRequest;

  static Serializer<FilterRequest> get serializer => _$filterRequestSerializer;
}
