import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_without_bnav_response.g.dart';

abstract class CategoryWithoutBnavResponse
    implements
        Built<CategoryWithoutBnavResponse, CategoryWithoutBnavResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  CategoryWithoutBnavResponse._();

  factory CategoryWithoutBnavResponse(
          [updates(CategoryWithoutBnavResponseBuilder b)]) =
      _$CategoryWithoutBnavResponse;

  static Serializer<CategoryWithoutBnavResponse> get serializer =>
      _$categoryWithoutBnavResponseSerializer;
}
