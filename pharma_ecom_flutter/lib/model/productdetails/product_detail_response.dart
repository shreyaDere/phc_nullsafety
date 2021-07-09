import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'product_detail_response.g.dart';

abstract class ProductDetailResponse
    implements Built<ProductDetailResponse, ProductDetailResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  ProductDetailData get data;
  @nullable
  String get message;
  ProductDetailResponse._();

  factory ProductDetailResponse([updates(ProductDetailResponseBuilder b)]) =
      _$ProductDetailResponse;

  static Serializer<ProductDetailResponse> get serializer =>
      _$productDetailResponseSerializer;
}

abstract class ProductDetailData
    implements Built<ProductDetailData, ProductDetailDataBuilder> {
  // fields go here
  @nullable
  Product get product;
  @nullable
  @BuiltValueField(wireName: "total_reviews")
  int get totalReviews;
  @nullable
  BuiltList<ReviewsData> get reviews;

  ProductDetailData._();

  factory ProductDetailData([updates(ProductDetailDataBuilder b)]) =
      _$ProductDetailData;

  static Serializer<ProductDetailData> get serializer =>
      _$productDetailDataSerializer;
}

abstract class ReviewsData implements Built<ReviewsData, ReviewsDataBuilder> {
  // fields go here

  @nullable
  BuiltList<String> get media;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  int get rating;
  @nullable
  String get review;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  String get username;
  @nullable
  @BuiltValueField(wireName: "product_id")
  String get productId;

  ReviewsData._();

  factory ReviewsData([updates(ReviewsDataBuilder b)]) = _$ReviewsData;

  static Serializer<ReviewsData> get serializer => _$reviewsDataSerializer;
}

abstract class Product implements Built<Product, ProductBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "upsell_ids")
  BuiltList<UniversalProduct> get upsellIds;
  @nullable
  @BuiltValueField(wireName: "cross_sell_ids")
  BuiltList<UniversalProduct> get crossSellIds;
  @nullable
  @BuiltValueField(wireName: "attributes")
  BuiltList<AttributeProd> get attributes;
  // @nullable
  // @BuiltValueField(wireName: "category_ids")
  // BuiltList<CategoryIds> get categoryIds;
  @nullable
  @BuiltValueField(wireName: "tags")
  BuiltList<String> get tgeags;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: "overview_ar")
  String get overviewAr;
  @nullable
  @BuiltValueField(wireName: "downloads")
  BuiltList<String> get downloads;
  @nullable
  @BuiltValueField(wireName: "featured_image")
  String get featuredImage;
  @nullable
  @BuiltValueField(wireName: "image_gallery")
  BuiltList<String> get imageGallery;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  // @BuiltValueField(wireName: "variations")
  // @nullable
  // BuiltList<String> get variations;
  // @nullable
  // @BuiltValueField(wireName: "event_dates")
  // BuiltList<String> get eventDates;
  // @nullable
  // @BuiltValueField(wireName: "event_ticket_details")
  // BuiltList<String> get eventTicketDetails;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "name_ar")
  String get nameAr;
  @nullable
  String get slug;
  @nullable
  String get description;
  @nullable
  @BuiltValueField(wireName: "description_ar")
  String get descriptionAr;
  @nullable
  String get specifications;
  @nullable
  @BuiltValueField(wireName: "specifications_ar")
  String get specificationsAr;
  @nullable
  int get status;
  @nullable
  int get visibility;
  @nullable
  int get productAccess;
  @nullable
  int get discount;
  @nullable
  @BuiltValueField(wireName: "product_type")
  int get productType;
  @nullable
  int get featured;
  @nullable
  @BuiltValueField(wireName: "regular_price")
  double get regularPrice;
  // @nullable
  // @BuiltValueField(wireName: "sale_price")
  // double get salePrice;
  @nullable
  @BuiltValueField(wireName: "offer_type")
  int get offerType;
  @nullable
  @BuiltValueField(wireName: "product_discount")
  double get productDiscount;
  @nullable
  @BuiltValueField(wireName: "bogo_offer")
  String get bogoOffer;
  @nullable
  @BuiltValueField(wireName: "sale_schedule")
  int get saleSchedule;
  @nullable
  int get weight;
  @nullable
  int get length;
  @nullable
  int get width;
  @nullable
  int get height;
  @nullable
  String get sku;
  @nullable
  @BuiltValueField(wireName: "tax_status")
  int get taxStatus;
  @nullable
  @BuiltValueField(wireName: "tax_class")
  String get taxClass;
  @nullable
  @BuiltValueField(wireName: "manage_stock")
  int get manageStock;
  @nullable
  @BuiltValueField(wireName: "stock_status")
  int get stockStatus;
  @nullable
  @BuiltValueField(wireName: "stock_quantity")
  int get stockQuantity;
  @nullable
  @BuiltValueField(wireName: "backorders")
  int get backorders;
  @nullable
  bool get variable;
  @nullable
  @BuiltValueField(wireName: "seo_title")
  String get seoTitle;
  @nullable
  @BuiltValueField(wireName: "seo_meta")
  String get seoMeta;
  @nullable
  @BuiltValueField(wireName: "vendor_id")
  String get vendorId;
  @nullable
  @BuiltValueField(wireName: "vendor_name")
  String get vendorName;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;

  Product._();

  factory Product([updates(ProductBuilder b)]) = _$Product;

  static Serializer<Product> get serializer => _$productSerializer;
}

abstract class AttributeProd
    implements Built<AttributeProd, AttributeProdBuilder> {
  // fields go here
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: "name_ar")
  String get nameAr;
  @nullable
  @BuiltValueField(wireName: "terms")
  BuiltList<TermAttribute> get terms;

  AttributeProd._();

  factory AttributeProd([updates(AttributeProdBuilder b)]) = _$AttributeProd;

  static Serializer<AttributeProd> get serializer => _$attributeProdSerializer;
}

abstract class TermAttribute
    implements Built<TermAttribute, TermAttributeBuilder> {
  // fields go here
  @nullable
  String get name;

  TermAttribute._();

  factory TermAttribute([updates(TermAttributeBuilder b)]) = _$TermAttribute;

  static Serializer<TermAttribute> get serializer => _$termAttributeSerializer;
}

abstract class CategoryIds implements Built<CategoryIds, CategoryIdsBuilder> {
  // fields go here
  @BuiltValueField(wireName: "_id")
  @nullable
  String get sId;
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

  CategoryIds._();

  factory CategoryIds([updates(CategoryIdsBuilder b)]) = _$CategoryIds;

  static Serializer<CategoryIds> get serializer => _$categoryIdsSerializer;
}

abstract class UniversalProduct
    implements Built<UniversalProduct, UniversalProductBuilder> {
  // fields go here
  // @nullable
  // @BuiltValueField(wireName: "upsell_ids")
  // BuiltList<UniversalProduct> get upsellIds;
  // @nullable
  // @BuiltValueField(wireName: "cross_sell_ids")
  // BuiltList<UniversalProduct> get crossSellIds;
  // BuiltList<Null> get attributes;
  // @nullable
  // @BuiltValueField(wireName: "category_ids")
  // BuiltList<String> get categoryIds;
  // @nullable
  // @BuiltValueField(wireName: "tags")
  // BuiltList<String> get tags;
  // @nullable
  // @BuiltValueField(wireName: "downloads")
  // BuiltList<String> get downloads;
  @nullable
  @BuiltValueField(wireName: "image_gallery")
  BuiltList<String> get imageGallery;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  // @nullable
  // @BuiltValueField(wireName: "variations")
  // BuiltList<String> get variations;
  // @nullable
  // @BuiltValueField(wireName: "event_dates")
  // BuiltList<String> get eventDates;
  // @nullable
  // @BuiltValueField(wireName: "event_ticket_details")
  // BuiltList<String> get eventTicketDetails;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "name_ar")
  String get nameAr;
  @nullable
  @BuiltValueField(wireName: "slug")
  String get slug;
  @nullable
  @BuiltValueField(wireName: "description")
  String get description;
  @nullable
  @BuiltValueField(wireName: "description_ar")
  String get descriptionAr;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: "overview_ar")
  String get overviewAr;
  @nullable
  @BuiltValueField(wireName: "specifications")
  String get specifications;
  @nullable
  @BuiltValueField(wireName: "specifications_ar")
  String get specificationsAr;
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "visibility")
  int get visibility;
  @nullable
  @BuiltValueField(wireName: "productAccess")
  int get productAccess;
  @nullable
  @BuiltValueField(wireName: "discount")
  double get discount;
  @nullable
  @BuiltValueField(wireName: "product_type")
  int get productType;
  @nullable
  @BuiltValueField(wireName: "featured")
  int get featured;
  @nullable
  @BuiltValueField(wireName: "offer_type")
  int get offerType;
  @nullable
  @BuiltValueField(wireName: "product_discount")
  double get productDiscount;
  @nullable
  @BuiltValueField(wireName: "bogo_offer")
  String get bogoOffer;
  @nullable
  @BuiltValueField(wireName: "regular_price")
  double get regularPrice;
  // @nullable
  // @BuiltValueField(wireName: "sale_price")
  // double get salePrice;
  // @nullable
  // @BuiltValueField(wireName: "sale_price")
  // String get salePriceS;
  @nullable
  @BuiltValueField(wireName: "sale_schedule")
  int get saleSchedule;
  @nullable
  @BuiltValueField(wireName: "weight")
  int get weight;
  @nullable
  @BuiltValueField(wireName: "length")
  int get length;
  @nullable
  @BuiltValueField(wireName: "width")
  int get width;
  @nullable
  @BuiltValueField(wireName: "height")
  int get height;
  @nullable
  @BuiltValueField(wireName: "sku")
  String get sku;
  @nullable
  @BuiltValueField(wireName: "tax_status")
  int get taxStatus;
  @nullable
  @BuiltValueField(wireName: "tax_class")
  String get taxClass;
  @nullable
  @BuiltValueField(wireName: "manage_stock")
  int get manageStock;
  @nullable
  @BuiltValueField(wireName: "stock_status")
  int get stockStatus;
  @nullable
  @BuiltValueField(wireName: "stock_quantity")
  int get stockQuantity;
  @nullable
  @BuiltValueField(wireName: "backorders")
  int get backorders;
  @nullable
  @BuiltValueField(wireName: "variable")
  bool get vgeariable;
  @nullable
  @BuiltValueField(wireName: "featured_image")
  String get featuredImage;
  @nullable
  @BuiltValueField(wireName: "seo_title")
  String get seoTitle;
  @nullable
  @BuiltValueField(wireName: "seo_meta")
  String get seoMeta;
  @nullable
  @BuiltValueField(wireName: "vendor_id")
  String get vendorId;
  @nullable
  @BuiltValueField(wireName: "vendor_name")
  String get vendorName;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "updatedAt")
  String get updatedAt;
  @nullable
  @BuiltValueField(wireName: "rewardPoint")
  int get rewardPoint;
  @nullable
  @BuiltValueField(wireName: "quantity")
  int get quantity;
  @nullable
  @BuiltValueField(wireName: "selected_attributes")
  String get selectedAttributes;
  @nullable
  @BuiltValueField(wireName: "courseCart")
  String get courseCart;

  UniversalProduct._();

  factory UniversalProduct([updates(UniversalProductBuilder b)]) =
      _$UniversalProduct;

  static Serializer<UniversalProduct> get serializer =>
      _$universalProductSerializer;
}

abstract class ProductAttribute
    implements Built<ProductAttribute, ProductAttributeBuilder> {
  // fields go here
  @BuiltValueField(wireName: "id")
  @nullable
  String get id;
  @BuiltValueField(wireName: "name")
  @nullable
  String get name;
  @BuiltValueField(wireName: "name_ar")
  @nullable
  String get nameAr;
  // @BuiltValueField(wireName: "terms")
  // @nullable
  // BuiltList<Term> get terms;

  ProductAttribute._();

  factory ProductAttribute([updates(ProductAttributeBuilder b)]) =
      _$ProductAttribute;

  static Serializer<ProductAttribute> get serializer =>
      _$productAttributeSerializer;
}

abstract class Term implements Built<Term, TermBuilder> {
  // fields go here
  @BuiltValueField(wireName: "_id")
  @nullable
  String get id;
  @BuiltValueField(wireName: "name")
  @nullable
  String get name;
  @BuiltValueField(wireName: "name_ar")
  @nullable
  String get nameAr;

  Term._();

  factory Term([updates(TermBuilder b)]) = _$Term;

  static Serializer<Term> get serializer => _$termSerializer;
}
