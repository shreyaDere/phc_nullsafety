import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'brand_response.g.dart';

abstract class BrandsResponse
    implements Built<BrandsResponse, BrandsResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  BuiltList<ResponseData> get data;
  @nullable
  String get message;

  BrandsResponse._();

  factory BrandsResponse([updates(BrandsResponseBuilder b)]) = _$BrandsResponse;

  static Serializer<BrandsResponse> get serializer =>
      _$brandsResponseSerializer;
}

abstract class ResponseData
    implements Built<ResponseData, ResponseDataBuilder> {
  // fields go here
  @nullable
  int get productAccess;
  @nullable
  @BuiltValueField(wireName: "stock_status")
  int get stockStatus;
  @nullable
  @BuiltValueField(wireName: "upsell_ids")
  BuiltList<UniversalProduct> get upsellIds;
  @nullable
  @BuiltValueField(wireName: "cross_sell_ids")
  BuiltList<UniversalProduct> get crossSellIds;
  @nullable
  BuiltList<Attribute> get attributes;
  @nullable
  @BuiltValueField(wireName: "category_ids")
  BuiltList<String> get categoryIds;
  // List<Null> tags;
  // List<Null> downloads;
  @nullable
  @BuiltValueField(wireName: "image_gallery")
  BuiltList<String> get imageGallery;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get sku;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "regular_price")
  double get regularPrice;
  @nullable
  String get slug;
  @nullable
  int get status;
  @nullable
  String get updatedAt;
  @nullable
  int get visibility;
  @nullable
  @BuiltValueField(wireName: "manage_stock")
  int get manageStock;
  // List<Null> variations;

  ResponseData._();

  factory ResponseData([updates(ResponseDataBuilder b)]) = _$ResponseData;

  static Serializer<ResponseData> get serializer => _$responseDataSerializer;
}

abstract class Attribute implements Built<Attribute, AttributeBuilder> {
  // fields go here
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  BuiltList<BrandTerms> get terms;

  Attribute._();

  factory Attribute([updates(AttributeBuilder b)]) = _$Attribute;

  static Serializer<Attribute> get serializer => _$attributeSerializer;
}

abstract class BrandTerms implements Built<BrandTerms, BrandTermsBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get name;

  BrandTerms._();

  factory BrandTerms([updates(BrandTermsBuilder b)]) = _$BrandTerms;

  static Serializer<BrandTerms> get serializer => _$brandTermsSerializer;
}
