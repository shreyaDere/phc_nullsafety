import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';

part 'brands_request.g.dart';

abstract class BrandsRequest
    implements Built<BrandsRequest, BrandsRequestBuilder> {
  // fields go here
  @nullable
  int get pageSize;
  @nullable
  int get currentPage;
  @nullable
  String get sort;
  @nullable
  String get brandName;
  @nullable
  String get categorySlug;
  @nullable
  BuiltList<int> get subcategories;
  @nullable
  BuiltList<AttributesFilters> get attributes;
  BrandsRequest._();

  factory BrandsRequest([updates(BrandsRequestBuilder b)]) = _$BrandsRequest;

  static Serializer<BrandsRequest> get serializer => _$brandsRequestSerializer;
}
