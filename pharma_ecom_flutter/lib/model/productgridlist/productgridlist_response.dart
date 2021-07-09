import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'productgridlist_response.g.dart';

abstract class ProductGridListResponse
    implements Built<ProductGridListResponse, ProductGridListResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  @BuiltValueField(wireName: "data")
  ProductGridListData get data;
  @nullable
  String get message;
  ProductGridListResponse._();

  factory ProductGridListResponse([updates(ProductGridListResponseBuilder b)]) =
      _$ProductGridListResponse;

  static Serializer<ProductGridListResponse> get serializer =>
      _$productGridListResponseSerializer;
}

abstract class ProductGridListData
    implements Built<ProductGridListData, ProductGridListDataBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "Total")
  double get total;
  @nullable
  @BuiltValueField(wireName: "products")
  BuiltList<UniversalProduct> get products;
  @nullable
  Filters get filters;
  @nullable
  Category get category;

  ProductGridListData._();

  factory ProductGridListData([updates(ProductGridListDataBuilder b)]) =
      _$ProductGridListData;

  static Serializer<ProductGridListData> get serializer =>
      _$productGridListDataSerializer;
}

abstract class Filters implements Built<Filters, FiltersBuilder> {
  // fields go here
  @nullable
  BuiltList<Subcategories> get subcategories;
  @nullable
  BuiltList<Attributes> get attributes;
  Filters._();

  factory Filters([updates(FiltersBuilder b)]) = _$Filters;

  static Serializer<Filters> get serializer => _$filtersSerializer;
}

abstract class Subcategories
    implements Built<Subcategories, SubcategoriesBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get name;
  @nullable
  String get slug;
  @nullable
  @BuiltValueField(wireName: "category_type")
  int get categoryType;
  @nullable
  int get parent;
  @nullable
  String get parentName;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: "featured_image")
  String get featuredImage;
  @nullable
  @BuiltValueField(wireName: "cat_id")
  int get catId;
  Subcategories._();

  factory Subcategories([updates(SubcategoriesBuilder b)]) = _$Subcategories;

  static Serializer<Subcategories> get serializer => _$subcategoriesSerializer;
}

abstract class Attributes implements Built<Attributes, AttributesBuilder> {
  // fields go here
  @nullable
  String get name;
  @nullable
  String get id;
  @nullable
  BuiltList<Terms> get terms;

  Attributes._();

  factory Attributes([updates(AttributesBuilder b)]) = _$Attributes;

  static Serializer<Attributes> get serializer => _$attributesSerializer;
}

abstract class Terms implements Built<Terms, TermsBuilder> {
  // fields go here
  @nullable
  String get name;
  @nullable
  String get id;
  Terms._();

  factory Terms([updates(TermsBuilder b)]) = _$Terms;

  static Serializer<Terms> get serializer => _$termsSerializer;
}

abstract class Category implements Built<Category, CategoryBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get name;
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
  int get catId;
  Category._();

  factory Category([updates(CategoryBuilder b)]) = _$Category;

  static Serializer<Category> get serializer => _$categorySerializer;
}
