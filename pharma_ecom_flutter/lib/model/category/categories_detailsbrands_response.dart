import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'categories_detailsbrands_response.g.dart';

abstract class CategoriesDetailsBrandsResponse
    implements
        Built<CategoriesDetailsBrandsResponse,
            CategoriesDetailsBrandsResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  DataCategoriesDetailsBrandsResponse get data;
  @nullable
  String get message;

  CategoriesDetailsBrandsResponse._();

  factory CategoriesDetailsBrandsResponse(
          [updates(CategoriesDetailsBrandsResponseBuilder b)]) =
      _$CategoriesDetailsBrandsResponse;

  static Serializer<CategoriesDetailsBrandsResponse> get serializer =>
      _$categoriesDetailsBrandsResponseSerializer;
}

abstract class DataCategoriesDetailsBrandsResponse
    implements
        Built<DataCategoriesDetailsBrandsResponse,
            DataCategoriesDetailsBrandsResponseBuilder> {
  // fields go here
  @nullable
  BuiltList<CategoriesListInDetailsResponse> get categories;
  @nullable
  @BuiltValueField(wireName: "Brands")
  BuiltList<BrandsListInDetailsResponse> get brands;

  DataCategoriesDetailsBrandsResponse._();

  factory DataCategoriesDetailsBrandsResponse(
          [updates(DataCategoriesDetailsBrandsResponseBuilder b)]) =
      _$DataCategoriesDetailsBrandsResponse;

  static Serializer<DataCategoriesDetailsBrandsResponse> get serializer =>
      _$dataCategoriesDetailsBrandsResponseSerializer;
}

abstract class CategoriesListInDetailsResponse
    implements
        Built<CategoriesListInDetailsResponse,
            CategoriesListInDetailsResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
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
  int get parent;
  @nullable
  @BuiltValueField(wireName: "parent_name")
  String get parentName;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: "featured_image")
  String get featuredImage;
  @nullable
  @BuiltValueField(wireName: "cat_id")
  int get catId;

  CategoriesListInDetailsResponse._();

  factory CategoriesListInDetailsResponse(
          [updates(CategoriesListInDetailsResponseBuilder b)]) =
      _$CategoriesListInDetailsResponse;

  static Serializer<CategoriesListInDetailsResponse> get serializer =>
      _$categoriesListInDetailsResponseSerializer;
}

abstract class BrandsListInDetailsResponse
    implements
        Built<BrandsListInDetailsResponse, BrandsListInDetailsResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "name_ar")
  String get nameAr;
  @nullable
  @BuiltValueField(wireName: "Brand_cover_pic")
  String get brandCoverPic;

  BrandsListInDetailsResponse._();

  factory BrandsListInDetailsResponse(
          [updates(BrandsListInDetailsResponseBuilder b)]) =
      _$BrandsListInDetailsResponse;

  static Serializer<BrandsListInDetailsResponse> get serializer =>
      _$brandsListInDetailsResponseSerializer;
}
