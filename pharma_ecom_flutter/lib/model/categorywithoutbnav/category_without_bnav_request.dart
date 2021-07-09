import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_without_bnav_request.g.dart';

abstract class CategoryWithoutBnavRequest
    implements
        Built<CategoryWithoutBnavRequest, CategoryWithoutBnavRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  CategoryWithoutBnavRequest._();

  factory CategoryWithoutBnavRequest(
          [updates(CategoryWithoutBnavRequestBuilder b)]) =
      _$CategoryWithoutBnavRequest;

  static Serializer<CategoryWithoutBnavRequest> get serializer =>
      _$categoryWithoutBnavRequestSerializer;
}
