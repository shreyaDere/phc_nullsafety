import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_gridlist_request.g.dart';

abstract class ProductGridlistRequest
    implements Built<ProductGridlistRequest, ProductGridlistRequestBuilder> {
  // fields go here
  @nullable
  int get pageSize;
  @nullable
  int get currentPage;
  @nullable
  String get sort;
  @nullable
  BuiltList<int> get subcategories;
  @nullable
  BuiltList<AttributesFilters> get attributes;

  ProductGridlistRequest._();

  factory ProductGridlistRequest([updates(ProductGridlistRequestBuilder b)]) =
      _$ProductGridlistRequest;

  static Serializer<ProductGridlistRequest> get serializer =>
      _$productGridlistRequestSerializer;
}

abstract class AttributesFilters
    implements Built<AttributesFilters, AttributesFiltersBuilder> {
  // fields go here
  @nullable
  String get name;
  @nullable
  TermsAttributesFilters get terms;

  AttributesFilters._();

  factory AttributesFilters([updates(AttributesFiltersBuilder b)]) =
      _$AttributesFilters;

  static Serializer<AttributesFilters> get serializer =>
      _$attributesFiltersSerializer;
}

abstract class TermsAttributesFilters
    implements Built<TermsAttributesFilters, TermsAttributesFiltersBuilder> {
  // fields go here
  @nullable
  String get name;

  TermsAttributesFilters._();

  factory TermsAttributesFilters([updates(TermsAttributesFiltersBuilder b)]) =
      _$TermsAttributesFilters;

  static Serializer<TermsAttributesFilters> get serializer =>
      _$termsAttributesFiltersSerializer;
}
