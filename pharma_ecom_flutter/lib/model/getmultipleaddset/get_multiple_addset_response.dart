import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'get_multiple_addset_response.g.dart';

abstract class GetMultipleAdsetsResponse
    implements
        Built<GetMultipleAdsetsResponse, GetMultipleAdsetsResponseBuilder> {
  // fields go here
  int get status;
  @nullable
  MultipleAddsetData get data;
  String get message;
  GetMultipleAdsetsResponse._();

  factory GetMultipleAdsetsResponse(
          [updates(GetMultipleAdsetsResponseBuilder b)]) =
      _$GetMultipleAdsetsResponse;

  static Serializer<GetMultipleAdsetsResponse> get serializer =>
      _$getMultipleAdsetsResponseSerializer;
}

abstract class MultipleAddsetData
    implements Built<MultipleAddsetData, MultipleAddsetDataBuilder> {
  // fields go here
  @nullable
  BuiltList<Adsets> get adsets;

  MultipleAddsetData._();

  factory MultipleAddsetData([updates(MultipleAddsetDataBuilder b)]) =
      _$MultipleAddsetData;

  static Serializer<MultipleAddsetData> get serializer =>
      _$multipleAddsetDataSerializer;
}

abstract class Adsets implements Built<Adsets, AdsetsBuilder> {
  // fields go here
  @nullable
  BuiltList<AdsObjectInAdsets> get ads;
  @nullable
  BuiltList<UniversalProduct> get products;
  @nullable
  BuiltList<CategoriesObject> get categories;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get name;
  @nullable
  int get adsettype;
  @nullable
  String get slug;
  @nullable
  int get active;
  @nullable
  @BuiltValueField(wireName: "category_name")
  String get categoryName;
  @nullable
  @BuiltValueField(wireName: "category_slug")
  String get categorySlug;
  @nullable
  @BuiltValueField(wireName: "product_name")
  String get productName;
  @nullable
  @BuiltValueField(wireName: "product_slug")
  String get productSlug;

  Adsets._();

  factory Adsets([updates(AdsetsBuilder b)]) = _$Adsets;

  static Serializer<Adsets> get serializer => _$adsetsSerializer;
}

abstract class AdsObjectInAdsets
    implements Built<AdsObjectInAdsets, AdsObjectInAdsetsBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  String get name;
  @nullable
  String get link;
  @nullable
  String get image;
  @nullable
  @BuiltValueField(wireName: "button_text")
  String get buttonText;
  @nullable
  String get description;
  @nullable
  int get sort;
  @nullable
  int get active;

  AdsObjectInAdsets._();

  factory AdsObjectInAdsets([updates(AdsObjectInAdsetsBuilder b)]) =
      _$AdsObjectInAdsets;

  static Serializer<AdsObjectInAdsets> get serializer =>
      _$adsObjectInAdsetsSerializer;
}

abstract class CategoriesObject
    implements Built<CategoriesObject, CategoriesObjectBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: '_id')
  String get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'name_ar')
  String get nameAr;
  @nullable
  String get slug;
  @nullable
  @BuiltValueField(wireName: 'featured_image')
  String get featuredImage;

  CategoriesObject._();

  factory CategoriesObject([updates(CategoriesObjectBuilder b)]) =
      _$CategoriesObject;

  static Serializer<CategoriesObject> get serializer =>
      _$categoriesObjectSerializer;
}
