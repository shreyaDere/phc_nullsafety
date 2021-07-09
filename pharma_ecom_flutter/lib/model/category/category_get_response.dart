import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_get_response.g.dart';

abstract class CategoryGetResponse
    implements Built<CategoryGetResponse, CategoryGetResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  CategoryGetRequestData get data;
  @nullable
  String get message;

  CategoryGetResponse._();

  factory CategoryGetResponse([updates(CategoryGetResponseBuilder b)]) =
      _$CategoryGetResponse;

  static Serializer<CategoryGetResponse> get serializer =>
      _$categoryGetResponseSerializer;
}

abstract class CategoryGetRequestData
    implements Built<CategoryGetRequestData, CategoryGetRequestDataBuilder> {
  // fields go here
  @nullable
  BuiltList<CategoriesData> get categories;

  CategoryGetRequestData._();

  factory CategoryGetRequestData([updates(CategoryGetRequestDataBuilder b)]) =
      _$CategoryGetRequestData;

  static Serializer<CategoryGetRequestData> get serializer =>
      _$categoryGetRequestDataSerializer;
}

abstract class CategoriesData
    implements Built<CategoriesData, CategoriesDataBuilder> {
  // fields go here
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "name_ar")
  String get nameAr;
  @nullable
  String get slug;
  @nullable
  @BuiltValueField(wireName: "category_type")
  int get categoryType;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: "featured_image")
  String get featuredImage;
  @nullable
  @BuiltValueField(wireName: "cat_id")
  int get catId;

  CategoriesData._();

  factory CategoriesData([updates(CategoriesDataBuilder b)]) = _$CategoriesData;

  static Serializer<CategoriesData> get serializer =>
      _$categoriesDataSerializer;
}
