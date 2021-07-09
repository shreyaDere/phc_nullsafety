// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDetailResponse> _$productDetailResponseSerializer =
    new _$ProductDetailResponseSerializer();
Serializer<ProductDetailData> _$productDetailDataSerializer =
    new _$ProductDetailDataSerializer();
Serializer<ReviewsData> _$reviewsDataSerializer = new _$ReviewsDataSerializer();
Serializer<Product> _$productSerializer = new _$ProductSerializer();
Serializer<AttributeProd> _$attributeProdSerializer =
    new _$AttributeProdSerializer();
Serializer<TermAttribute> _$termAttributeSerializer =
    new _$TermAttributeSerializer();
Serializer<CategoryIds> _$categoryIdsSerializer = new _$CategoryIdsSerializer();
Serializer<UniversalProduct> _$universalProductSerializer =
    new _$UniversalProductSerializer();
Serializer<ProductAttribute> _$productAttributeSerializer =
    new _$ProductAttributeSerializer();
Serializer<Term> _$termSerializer = new _$TermSerializer();

class _$ProductDetailResponseSerializer
    implements StructuredSerializer<ProductDetailResponse> {
  @override
  final Iterable<Type> types = const [
    ProductDetailResponse,
    _$ProductDetailResponse
  ];
  @override
  final String wireName = 'ProductDetailResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductDetailResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(ProductDetailData)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductDetailResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProductDetailData))
              as ProductDetailData);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailDataSerializer
    implements StructuredSerializer<ProductDetailData> {
  @override
  final Iterable<Type> types = const [ProductDetailData, _$ProductDetailData];
  @override
  final String wireName = 'ProductDetailData';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductDetailData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(Product)));
    }
    if (object.totalReviews != null) {
      result
        ..add('total_reviews')
        ..add(serializers.serialize(object.totalReviews,
            specifiedType: const FullType(int)));
    }
    if (object.reviews != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(object.reviews,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReviewsData)])));
    }
    return result;
  }

  @override
  ProductDetailData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product':
          result.product.replace(serializers.deserialize(value,
              specifiedType: const FullType(Product)) as Product);
          break;
        case 'total_reviews':
          result.totalReviews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReviewsData)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsDataSerializer implements StructuredSerializer<ReviewsData> {
  @override
  final Iterable<Type> types = const [ReviewsData, _$ReviewsData];
  @override
  final String wireName = 'ReviewsData';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.media != null) {
      result
        ..add('media')
        ..add(serializers.serialize(object.media,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.review != null) {
      result
        ..add('review')
        ..add(serializers.serialize(object.review,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReviewsData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object> serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.upsellIds != null) {
      result
        ..add('upsell_ids')
        ..add(serializers.serialize(object.upsellIds,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.crossSellIds != null) {
      result
        ..add('cross_sell_ids')
        ..add(serializers.serialize(object.crossSellIds,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AttributeProd)])));
    }
    if (object.tgeags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tgeags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.overviewAr != null) {
      result
        ..add('overview_ar')
        ..add(serializers.serialize(object.overviewAr,
            specifiedType: const FullType(String)));
    }
    if (object.downloads != null) {
      result
        ..add('downloads')
        ..add(serializers.serialize(object.downloads,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.featuredImage != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(String)));
    }
    if (object.imageGallery != null) {
      result
        ..add('image_gallery')
        ..add(serializers.serialize(object.imageGallery,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.descriptionAr != null) {
      result
        ..add('description_ar')
        ..add(serializers.serialize(object.descriptionAr,
            specifiedType: const FullType(String)));
    }
    if (object.specifications != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(object.specifications,
            specifiedType: const FullType(String)));
    }
    if (object.specificationsAr != null) {
      result
        ..add('specifications_ar')
        ..add(serializers.serialize(object.specificationsAr,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(int)));
    }
    if (object.productAccess != null) {
      result
        ..add('productAccess')
        ..add(serializers.serialize(object.productAccess,
            specifiedType: const FullType(int)));
    }
    if (object.discount != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(object.discount,
            specifiedType: const FullType(int)));
    }
    if (object.productType != null) {
      result
        ..add('product_type')
        ..add(serializers.serialize(object.productType,
            specifiedType: const FullType(int)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(int)));
    }
    if (object.regularPrice != null) {
      result
        ..add('regular_price')
        ..add(serializers.serialize(object.regularPrice,
            specifiedType: const FullType(double)));
    }
    if (object.offerType != null) {
      result
        ..add('offer_type')
        ..add(serializers.serialize(object.offerType,
            specifiedType: const FullType(int)));
    }
    if (object.productDiscount != null) {
      result
        ..add('product_discount')
        ..add(serializers.serialize(object.productDiscount,
            specifiedType: const FullType(double)));
    }
    if (object.bogoOffer != null) {
      result
        ..add('bogo_offer')
        ..add(serializers.serialize(object.bogoOffer,
            specifiedType: const FullType(String)));
    }
    if (object.saleSchedule != null) {
      result
        ..add('sale_schedule')
        ..add(serializers.serialize(object.saleSchedule,
            specifiedType: const FullType(int)));
    }
    if (object.weight != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(object.weight,
            specifiedType: const FullType(int)));
    }
    if (object.length != null) {
      result
        ..add('length')
        ..add(serializers.serialize(object.length,
            specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.sku != null) {
      result
        ..add('sku')
        ..add(serializers.serialize(object.sku,
            specifiedType: const FullType(String)));
    }
    if (object.taxStatus != null) {
      result
        ..add('tax_status')
        ..add(serializers.serialize(object.taxStatus,
            specifiedType: const FullType(int)));
    }
    if (object.taxClass != null) {
      result
        ..add('tax_class')
        ..add(serializers.serialize(object.taxClass,
            specifiedType: const FullType(String)));
    }
    if (object.manageStock != null) {
      result
        ..add('manage_stock')
        ..add(serializers.serialize(object.manageStock,
            specifiedType: const FullType(int)));
    }
    if (object.stockStatus != null) {
      result
        ..add('stock_status')
        ..add(serializers.serialize(object.stockStatus,
            specifiedType: const FullType(int)));
    }
    if (object.stockQuantity != null) {
      result
        ..add('stock_quantity')
        ..add(serializers.serialize(object.stockQuantity,
            specifiedType: const FullType(int)));
    }
    if (object.backorders != null) {
      result
        ..add('backorders')
        ..add(serializers.serialize(object.backorders,
            specifiedType: const FullType(int)));
    }
    if (object.variable != null) {
      result
        ..add('variable')
        ..add(serializers.serialize(object.variable,
            specifiedType: const FullType(bool)));
    }
    if (object.seoTitle != null) {
      result
        ..add('seo_title')
        ..add(serializers.serialize(object.seoTitle,
            specifiedType: const FullType(String)));
    }
    if (object.seoMeta != null) {
      result
        ..add('seo_meta')
        ..add(serializers.serialize(object.seoMeta,
            specifiedType: const FullType(String)));
    }
    if (object.vendorId != null) {
      result
        ..add('vendor_id')
        ..add(serializers.serialize(object.vendorId,
            specifiedType: const FullType(String)));
    }
    if (object.vendorName != null) {
      result
        ..add('vendor_name')
        ..add(serializers.serialize(object.vendorName,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'upsell_ids':
          result.upsellIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'cross_sell_ids':
          result.crossSellIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttributeProd)]))
              as BuiltList<Object>);
          break;
        case 'tags':
          result.tgeags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview_ar':
          result.overviewAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'downloads':
          result.downloads.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'featured_image':
          result.featuredImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_gallery':
          result.imageGallery.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description_ar':
          result.descriptionAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specifications_ar':
          result.specificationsAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productAccess':
          result.productAccess = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_type':
          result.productType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'regular_price':
          result.regularPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'offer_type':
          result.offerType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_discount':
          result.productDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bogo_offer':
          result.bogoOffer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sale_schedule':
          result.saleSchedule = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sku':
          result.sku = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tax_status':
          result.taxStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tax_class':
          result.taxClass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manage_stock':
          result.manageStock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stock_status':
          result.stockStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stock_quantity':
          result.stockQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'backorders':
          result.backorders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'variable':
          result.variable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'seo_title':
          result.seoTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seo_meta':
          result.seoMeta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_id':
          result.vendorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_name':
          result.vendorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AttributeProdSerializer implements StructuredSerializer<AttributeProd> {
  @override
  final Iterable<Type> types = const [AttributeProd, _$AttributeProd];
  @override
  final String wireName = 'AttributeProd';

  @override
  Iterable<Object> serialize(Serializers serializers, AttributeProd object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    if (object.terms != null) {
      result
        ..add('terms')
        ..add(serializers.serialize(object.terms,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TermAttribute)])));
    }
    return result;
  }

  @override
  AttributeProd deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributeProdBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'terms':
          result.terms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TermAttribute)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TermAttributeSerializer implements StructuredSerializer<TermAttribute> {
  @override
  final Iterable<Type> types = const [TermAttribute, _$TermAttribute];
  @override
  final String wireName = 'TermAttribute';

  @override
  Iterable<Object> serialize(Serializers serializers, TermAttribute object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TermAttribute deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermAttributeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryIdsSerializer implements StructuredSerializer<CategoryIds> {
  @override
  final Iterable<Type> types = const [CategoryIds, _$CategoryIds];
  @override
  final String wireName = 'CategoryIds';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryIds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.categoryType != null) {
      result
        ..add('category_type')
        ..add(serializers.serialize(object.categoryType,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.featuredImage != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(String)));
    }
    if (object.catId != null) {
      result
        ..add('cat_id')
        ..add(serializers.serialize(object.catId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CategoryIds deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryIdsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_type':
          result.categoryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured_image':
          result.featuredImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cat_id':
          result.catId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UniversalProductSerializer
    implements StructuredSerializer<UniversalProduct> {
  @override
  final Iterable<Type> types = const [UniversalProduct, _$UniversalProduct];
  @override
  final String wireName = 'UniversalProduct';

  @override
  Iterable<Object> serialize(Serializers serializers, UniversalProduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.imageGallery != null) {
      result
        ..add('image_gallery')
        ..add(serializers.serialize(object.imageGallery,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.descriptionAr != null) {
      result
        ..add('description_ar')
        ..add(serializers.serialize(object.descriptionAr,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.overviewAr != null) {
      result
        ..add('overview_ar')
        ..add(serializers.serialize(object.overviewAr,
            specifiedType: const FullType(String)));
    }
    if (object.specifications != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(object.specifications,
            specifiedType: const FullType(String)));
    }
    if (object.specificationsAr != null) {
      result
        ..add('specifications_ar')
        ..add(serializers.serialize(object.specificationsAr,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(int)));
    }
    if (object.productAccess != null) {
      result
        ..add('productAccess')
        ..add(serializers.serialize(object.productAccess,
            specifiedType: const FullType(int)));
    }
    if (object.discount != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(object.discount,
            specifiedType: const FullType(double)));
    }
    if (object.productType != null) {
      result
        ..add('product_type')
        ..add(serializers.serialize(object.productType,
            specifiedType: const FullType(int)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(int)));
    }
    if (object.offerType != null) {
      result
        ..add('offer_type')
        ..add(serializers.serialize(object.offerType,
            specifiedType: const FullType(int)));
    }
    if (object.productDiscount != null) {
      result
        ..add('product_discount')
        ..add(serializers.serialize(object.productDiscount,
            specifiedType: const FullType(double)));
    }
    if (object.bogoOffer != null) {
      result
        ..add('bogo_offer')
        ..add(serializers.serialize(object.bogoOffer,
            specifiedType: const FullType(String)));
    }
    if (object.regularPrice != null) {
      result
        ..add('regular_price')
        ..add(serializers.serialize(object.regularPrice,
            specifiedType: const FullType(double)));
    }
    if (object.saleSchedule != null) {
      result
        ..add('sale_schedule')
        ..add(serializers.serialize(object.saleSchedule,
            specifiedType: const FullType(int)));
    }
    if (object.weight != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(object.weight,
            specifiedType: const FullType(int)));
    }
    if (object.length != null) {
      result
        ..add('length')
        ..add(serializers.serialize(object.length,
            specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.sku != null) {
      result
        ..add('sku')
        ..add(serializers.serialize(object.sku,
            specifiedType: const FullType(String)));
    }
    if (object.taxStatus != null) {
      result
        ..add('tax_status')
        ..add(serializers.serialize(object.taxStatus,
            specifiedType: const FullType(int)));
    }
    if (object.taxClass != null) {
      result
        ..add('tax_class')
        ..add(serializers.serialize(object.taxClass,
            specifiedType: const FullType(String)));
    }
    if (object.manageStock != null) {
      result
        ..add('manage_stock')
        ..add(serializers.serialize(object.manageStock,
            specifiedType: const FullType(int)));
    }
    if (object.stockStatus != null) {
      result
        ..add('stock_status')
        ..add(serializers.serialize(object.stockStatus,
            specifiedType: const FullType(int)));
    }
    if (object.stockQuantity != null) {
      result
        ..add('stock_quantity')
        ..add(serializers.serialize(object.stockQuantity,
            specifiedType: const FullType(int)));
    }
    if (object.backorders != null) {
      result
        ..add('backorders')
        ..add(serializers.serialize(object.backorders,
            specifiedType: const FullType(int)));
    }
    if (object.vgeariable != null) {
      result
        ..add('variable')
        ..add(serializers.serialize(object.vgeariable,
            specifiedType: const FullType(bool)));
    }
    if (object.featuredImage != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(String)));
    }
    if (object.seoTitle != null) {
      result
        ..add('seo_title')
        ..add(serializers.serialize(object.seoTitle,
            specifiedType: const FullType(String)));
    }
    if (object.seoMeta != null) {
      result
        ..add('seo_meta')
        ..add(serializers.serialize(object.seoMeta,
            specifiedType: const FullType(String)));
    }
    if (object.vendorId != null) {
      result
        ..add('vendor_id')
        ..add(serializers.serialize(object.vendorId,
            specifiedType: const FullType(String)));
    }
    if (object.vendorName != null) {
      result
        ..add('vendor_name')
        ..add(serializers.serialize(object.vendorName,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.rewardPoint != null) {
      result
        ..add('rewardPoint')
        ..add(serializers.serialize(object.rewardPoint,
            specifiedType: const FullType(int)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    if (object.selectedAttributes != null) {
      result
        ..add('selected_attributes')
        ..add(serializers.serialize(object.selectedAttributes,
            specifiedType: const FullType(String)));
    }
    if (object.courseCart != null) {
      result
        ..add('courseCart')
        ..add(serializers.serialize(object.courseCart,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UniversalProduct deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UniversalProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'image_gallery':
          result.imageGallery.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description_ar':
          result.descriptionAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview_ar':
          result.overviewAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specifications_ar':
          result.specificationsAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productAccess':
          result.productAccess = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'product_type':
          result.productType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'offer_type':
          result.offerType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_discount':
          result.productDiscount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bogo_offer':
          result.bogoOffer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regular_price':
          result.regularPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sale_schedule':
          result.saleSchedule = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sku':
          result.sku = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tax_status':
          result.taxStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tax_class':
          result.taxClass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manage_stock':
          result.manageStock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stock_status':
          result.stockStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stock_quantity':
          result.stockQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'backorders':
          result.backorders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'variable':
          result.vgeariable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'featured_image':
          result.featuredImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seo_title':
          result.seoTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seo_meta':
          result.seoMeta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_id':
          result.vendorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_name':
          result.vendorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rewardPoint':
          result.rewardPoint = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'selected_attributes':
          result.selectedAttributes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'courseCart':
          result.courseCart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductAttributeSerializer
    implements StructuredSerializer<ProductAttribute> {
  @override
  final Iterable<Type> types = const [ProductAttribute, _$ProductAttribute];
  @override
  final String wireName = 'ProductAttribute';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductAttribute object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductAttribute deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductAttributeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TermSerializer implements StructuredSerializer<Term> {
  @override
  final Iterable<Type> types = const [Term, _$Term];
  @override
  final String wireName = 'Term';

  @override
  Iterable<Object> serialize(Serializers serializers, Term object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.nameAr != null) {
      result
        ..add('name_ar')
        ..add(serializers.serialize(object.nameAr,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Term deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name_ar':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailResponse extends ProductDetailResponse {
  @override
  final int status;
  @override
  final ProductDetailData data;
  @override
  final String message;

  factory _$ProductDetailResponse(
          [void Function(ProductDetailResponseBuilder) updates]) =>
      (new ProductDetailResponseBuilder()..update(updates)).build();

  _$ProductDetailResponse._({this.status, this.data, this.message}) : super._();

  @override
  ProductDetailResponse rebuild(
          void Function(ProductDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailResponseBuilder toBuilder() =>
      new ProductDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailResponse &&
        status == other.status &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), data.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class ProductDetailResponseBuilder
    implements Builder<ProductDetailResponse, ProductDetailResponseBuilder> {
  _$ProductDetailResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ProductDetailDataBuilder _data;
  ProductDetailDataBuilder get data =>
      _$this._data ??= new ProductDetailDataBuilder();
  set data(ProductDetailDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ProductDetailResponseBuilder();

  ProductDetailResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailResponse;
  }

  @override
  void update(void Function(ProductDetailResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailResponse build() {
    _$ProductDetailResponse _$result;
    try {
      _$result = _$v ??
          new _$ProductDetailResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductDetailData extends ProductDetailData {
  @override
  final Product product;
  @override
  final int totalReviews;
  @override
  final BuiltList<ReviewsData> reviews;

  factory _$ProductDetailData(
          [void Function(ProductDetailDataBuilder) updates]) =>
      (new ProductDetailDataBuilder()..update(updates)).build();

  _$ProductDetailData._({this.product, this.totalReviews, this.reviews})
      : super._();

  @override
  ProductDetailData rebuild(void Function(ProductDetailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailDataBuilder toBuilder() =>
      new ProductDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailData &&
        product == other.product &&
        totalReviews == other.totalReviews &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, product.hashCode), totalReviews.hashCode),
        reviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailData')
          ..add('product', product)
          ..add('totalReviews', totalReviews)
          ..add('reviews', reviews))
        .toString();
  }
}

class ProductDetailDataBuilder
    implements Builder<ProductDetailData, ProductDetailDataBuilder> {
  _$ProductDetailData _$v;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  int _totalReviews;
  int get totalReviews => _$this._totalReviews;
  set totalReviews(int totalReviews) => _$this._totalReviews = totalReviews;

  ListBuilder<ReviewsData> _reviews;
  ListBuilder<ReviewsData> get reviews =>
      _$this._reviews ??= new ListBuilder<ReviewsData>();
  set reviews(ListBuilder<ReviewsData> reviews) => _$this._reviews = reviews;

  ProductDetailDataBuilder();

  ProductDetailDataBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _totalReviews = _$v.totalReviews;
      _reviews = _$v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailData;
  }

  @override
  void update(void Function(ProductDetailDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailData build() {
    _$ProductDetailData _$result;
    try {
      _$result = _$v ??
          new _$ProductDetailData._(
              product: _product?.build(),
              totalReviews: totalReviews,
              reviews: _reviews?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();

        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDetailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ReviewsData extends ReviewsData {
  @override
  final BuiltList<String> media;
  @override
  final String id;
  @override
  final int rating;
  @override
  final String review;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String productId;

  factory _$ReviewsData([void Function(ReviewsDataBuilder) updates]) =>
      (new ReviewsDataBuilder()..update(updates)).build();

  _$ReviewsData._(
      {this.media,
      this.id,
      this.rating,
      this.review,
      this.userId,
      this.username,
      this.productId})
      : super._();

  @override
  ReviewsData rebuild(void Function(ReviewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsDataBuilder toBuilder() => new ReviewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsData &&
        media == other.media &&
        id == other.id &&
        rating == other.rating &&
        review == other.review &&
        userId == other.userId &&
        username == other.username &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, media.hashCode), id.hashCode),
                        rating.hashCode),
                    review.hashCode),
                userId.hashCode),
            username.hashCode),
        productId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsData')
          ..add('media', media)
          ..add('id', id)
          ..add('rating', rating)
          ..add('review', review)
          ..add('userId', userId)
          ..add('username', username)
          ..add('productId', productId))
        .toString();
  }
}

class ReviewsDataBuilder implements Builder<ReviewsData, ReviewsDataBuilder> {
  _$ReviewsData _$v;

  ListBuilder<String> _media;
  ListBuilder<String> get media => _$this._media ??= new ListBuilder<String>();
  set media(ListBuilder<String> media) => _$this._media = media;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  String _review;
  String get review => _$this._review;
  set review(String review) => _$this._review = review;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  ReviewsDataBuilder();

  ReviewsDataBuilder get _$this {
    if (_$v != null) {
      _media = _$v.media?.toBuilder();
      _id = _$v.id;
      _rating = _$v.rating;
      _review = _$v.review;
      _userId = _$v.userId;
      _username = _$v.username;
      _productId = _$v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewsData;
  }

  @override
  void update(void Function(ReviewsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewsData build() {
    _$ReviewsData _$result;
    try {
      _$result = _$v ??
          new _$ReviewsData._(
              media: _media?.build(),
              id: id,
              rating: rating,
              review: review,
              userId: userId,
              username: username,
              productId: productId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReviewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Product extends Product {
  @override
  final BuiltList<UniversalProduct> upsellIds;
  @override
  final BuiltList<UniversalProduct> crossSellIds;
  @override
  final BuiltList<AttributeProd> attributes;
  @override
  final BuiltList<String> tgeags;
  @override
  final String overview;
  @override
  final String overviewAr;
  @override
  final BuiltList<String> downloads;
  @override
  final String featuredImage;
  @override
  final BuiltList<String> imageGallery;
  @override
  final String sId;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String descriptionAr;
  @override
  final String specifications;
  @override
  final String specificationsAr;
  @override
  final int status;
  @override
  final int visibility;
  @override
  final int productAccess;
  @override
  final int discount;
  @override
  final int productType;
  @override
  final int featured;
  @override
  final double regularPrice;
  @override
  final int offerType;
  @override
  final double productDiscount;
  @override
  final String bogoOffer;
  @override
  final int saleSchedule;
  @override
  final int weight;
  @override
  final int length;
  @override
  final int width;
  @override
  final int height;
  @override
  final String sku;
  @override
  final int taxStatus;
  @override
  final String taxClass;
  @override
  final int manageStock;
  @override
  final int stockStatus;
  @override
  final int stockQuantity;
  @override
  final int backorders;
  @override
  final bool variable;
  @override
  final String seoTitle;
  @override
  final String seoMeta;
  @override
  final String vendorId;
  @override
  final String vendorName;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$Product([void Function(ProductBuilder) updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {this.upsellIds,
      this.crossSellIds,
      this.attributes,
      this.tgeags,
      this.overview,
      this.overviewAr,
      this.downloads,
      this.featuredImage,
      this.imageGallery,
      this.sId,
      this.name,
      this.nameAr,
      this.slug,
      this.description,
      this.descriptionAr,
      this.specifications,
      this.specificationsAr,
      this.status,
      this.visibility,
      this.productAccess,
      this.discount,
      this.productType,
      this.featured,
      this.regularPrice,
      this.offerType,
      this.productDiscount,
      this.bogoOffer,
      this.saleSchedule,
      this.weight,
      this.length,
      this.width,
      this.height,
      this.sku,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockStatus,
      this.stockQuantity,
      this.backorders,
      this.variable,
      this.seoTitle,
      this.seoMeta,
      this.vendorId,
      this.vendorName,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        upsellIds == other.upsellIds &&
        crossSellIds == other.crossSellIds &&
        attributes == other.attributes &&
        tgeags == other.tgeags &&
        overview == other.overview &&
        overviewAr == other.overviewAr &&
        downloads == other.downloads &&
        featuredImage == other.featuredImage &&
        imageGallery == other.imageGallery &&
        sId == other.sId &&
        name == other.name &&
        nameAr == other.nameAr &&
        slug == other.slug &&
        description == other.description &&
        descriptionAr == other.descriptionAr &&
        specifications == other.specifications &&
        specificationsAr == other.specificationsAr &&
        status == other.status &&
        visibility == other.visibility &&
        productAccess == other.productAccess &&
        discount == other.discount &&
        productType == other.productType &&
        featured == other.featured &&
        regularPrice == other.regularPrice &&
        offerType == other.offerType &&
        productDiscount == other.productDiscount &&
        bogoOffer == other.bogoOffer &&
        saleSchedule == other.saleSchedule &&
        weight == other.weight &&
        length == other.length &&
        width == other.width &&
        height == other.height &&
        sku == other.sku &&
        taxStatus == other.taxStatus &&
        taxClass == other.taxClass &&
        manageStock == other.manageStock &&
        stockStatus == other.stockStatus &&
        stockQuantity == other.stockQuantity &&
        backorders == other.backorders &&
        variable == other.variable &&
        seoTitle == other.seoTitle &&
        seoMeta == other.seoMeta &&
        vendorId == other.vendorId &&
        vendorName == other.vendorName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, upsellIds.hashCode), crossSellIds.hashCode), attributes.hashCode), tgeags.hashCode), overview.hashCode), overviewAr.hashCode), downloads.hashCode), featuredImage.hashCode), imageGallery.hashCode), sId.hashCode), name.hashCode), nameAr.hashCode), slug.hashCode), description.hashCode), descriptionAr.hashCode), specifications.hashCode), specificationsAr.hashCode), status.hashCode), visibility.hashCode), productAccess.hashCode), discount.hashCode), productType.hashCode), featured.hashCode), regularPrice.hashCode), offerType.hashCode), productDiscount.hashCode), bogoOffer.hashCode),
                                                                                saleSchedule.hashCode),
                                                                            weight.hashCode),
                                                                        length.hashCode),
                                                                    width.hashCode),
                                                                height.hashCode),
                                                            sku.hashCode),
                                                        taxStatus.hashCode),
                                                    taxClass.hashCode),
                                                manageStock.hashCode),
                                            stockStatus.hashCode),
                                        stockQuantity.hashCode),
                                    backorders.hashCode),
                                variable.hashCode),
                            seoTitle.hashCode),
                        seoMeta.hashCode),
                    vendorId.hashCode),
                vendorName.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('upsellIds', upsellIds)
          ..add('crossSellIds', crossSellIds)
          ..add('attributes', attributes)
          ..add('tgeags', tgeags)
          ..add('overview', overview)
          ..add('overviewAr', overviewAr)
          ..add('downloads', downloads)
          ..add('featuredImage', featuredImage)
          ..add('imageGallery', imageGallery)
          ..add('sId', sId)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('slug', slug)
          ..add('description', description)
          ..add('descriptionAr', descriptionAr)
          ..add('specifications', specifications)
          ..add('specificationsAr', specificationsAr)
          ..add('status', status)
          ..add('visibility', visibility)
          ..add('productAccess', productAccess)
          ..add('discount', discount)
          ..add('productType', productType)
          ..add('featured', featured)
          ..add('regularPrice', regularPrice)
          ..add('offerType', offerType)
          ..add('productDiscount', productDiscount)
          ..add('bogoOffer', bogoOffer)
          ..add('saleSchedule', saleSchedule)
          ..add('weight', weight)
          ..add('length', length)
          ..add('width', width)
          ..add('height', height)
          ..add('sku', sku)
          ..add('taxStatus', taxStatus)
          ..add('taxClass', taxClass)
          ..add('manageStock', manageStock)
          ..add('stockStatus', stockStatus)
          ..add('stockQuantity', stockQuantity)
          ..add('backorders', backorders)
          ..add('variable', variable)
          ..add('seoTitle', seoTitle)
          ..add('seoMeta', seoMeta)
          ..add('vendorId', vendorId)
          ..add('vendorName', vendorName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  ListBuilder<UniversalProduct> _upsellIds;
  ListBuilder<UniversalProduct> get upsellIds =>
      _$this._upsellIds ??= new ListBuilder<UniversalProduct>();
  set upsellIds(ListBuilder<UniversalProduct> upsellIds) =>
      _$this._upsellIds = upsellIds;

  ListBuilder<UniversalProduct> _crossSellIds;
  ListBuilder<UniversalProduct> get crossSellIds =>
      _$this._crossSellIds ??= new ListBuilder<UniversalProduct>();
  set crossSellIds(ListBuilder<UniversalProduct> crossSellIds) =>
      _$this._crossSellIds = crossSellIds;

  ListBuilder<AttributeProd> _attributes;
  ListBuilder<AttributeProd> get attributes =>
      _$this._attributes ??= new ListBuilder<AttributeProd>();
  set attributes(ListBuilder<AttributeProd> attributes) =>
      _$this._attributes = attributes;

  ListBuilder<String> _tgeags;
  ListBuilder<String> get tgeags =>
      _$this._tgeags ??= new ListBuilder<String>();
  set tgeags(ListBuilder<String> tgeags) => _$this._tgeags = tgeags;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _overviewAr;
  String get overviewAr => _$this._overviewAr;
  set overviewAr(String overviewAr) => _$this._overviewAr = overviewAr;

  ListBuilder<String> _downloads;
  ListBuilder<String> get downloads =>
      _$this._downloads ??= new ListBuilder<String>();
  set downloads(ListBuilder<String> downloads) => _$this._downloads = downloads;

  String _featuredImage;
  String get featuredImage => _$this._featuredImage;
  set featuredImage(String featuredImage) =>
      _$this._featuredImage = featuredImage;

  ListBuilder<String> _imageGallery;
  ListBuilder<String> get imageGallery =>
      _$this._imageGallery ??= new ListBuilder<String>();
  set imageGallery(ListBuilder<String> imageGallery) =>
      _$this._imageGallery = imageGallery;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _descriptionAr;
  String get descriptionAr => _$this._descriptionAr;
  set descriptionAr(String descriptionAr) =>
      _$this._descriptionAr = descriptionAr;

  String _specifications;
  String get specifications => _$this._specifications;
  set specifications(String specifications) =>
      _$this._specifications = specifications;

  String _specificationsAr;
  String get specificationsAr => _$this._specificationsAr;
  set specificationsAr(String specificationsAr) =>
      _$this._specificationsAr = specificationsAr;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _visibility;
  int get visibility => _$this._visibility;
  set visibility(int visibility) => _$this._visibility = visibility;

  int _productAccess;
  int get productAccess => _$this._productAccess;
  set productAccess(int productAccess) => _$this._productAccess = productAccess;

  int _discount;
  int get discount => _$this._discount;
  set discount(int discount) => _$this._discount = discount;

  int _productType;
  int get productType => _$this._productType;
  set productType(int productType) => _$this._productType = productType;

  int _featured;
  int get featured => _$this._featured;
  set featured(int featured) => _$this._featured = featured;

  double _regularPrice;
  double get regularPrice => _$this._regularPrice;
  set regularPrice(double regularPrice) => _$this._regularPrice = regularPrice;

  int _offerType;
  int get offerType => _$this._offerType;
  set offerType(int offerType) => _$this._offerType = offerType;

  double _productDiscount;
  double get productDiscount => _$this._productDiscount;
  set productDiscount(double productDiscount) =>
      _$this._productDiscount = productDiscount;

  String _bogoOffer;
  String get bogoOffer => _$this._bogoOffer;
  set bogoOffer(String bogoOffer) => _$this._bogoOffer = bogoOffer;

  int _saleSchedule;
  int get saleSchedule => _$this._saleSchedule;
  set saleSchedule(int saleSchedule) => _$this._saleSchedule = saleSchedule;

  int _weight;
  int get weight => _$this._weight;
  set weight(int weight) => _$this._weight = weight;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _sku;
  String get sku => _$this._sku;
  set sku(String sku) => _$this._sku = sku;

  int _taxStatus;
  int get taxStatus => _$this._taxStatus;
  set taxStatus(int taxStatus) => _$this._taxStatus = taxStatus;

  String _taxClass;
  String get taxClass => _$this._taxClass;
  set taxClass(String taxClass) => _$this._taxClass = taxClass;

  int _manageStock;
  int get manageStock => _$this._manageStock;
  set manageStock(int manageStock) => _$this._manageStock = manageStock;

  int _stockStatus;
  int get stockStatus => _$this._stockStatus;
  set stockStatus(int stockStatus) => _$this._stockStatus = stockStatus;

  int _stockQuantity;
  int get stockQuantity => _$this._stockQuantity;
  set stockQuantity(int stockQuantity) => _$this._stockQuantity = stockQuantity;

  int _backorders;
  int get backorders => _$this._backorders;
  set backorders(int backorders) => _$this._backorders = backorders;

  bool _variable;
  bool get variable => _$this._variable;
  set variable(bool variable) => _$this._variable = variable;

  String _seoTitle;
  String get seoTitle => _$this._seoTitle;
  set seoTitle(String seoTitle) => _$this._seoTitle = seoTitle;

  String _seoMeta;
  String get seoMeta => _$this._seoMeta;
  set seoMeta(String seoMeta) => _$this._seoMeta = seoMeta;

  String _vendorId;
  String get vendorId => _$this._vendorId;
  set vendorId(String vendorId) => _$this._vendorId = vendorId;

  String _vendorName;
  String get vendorName => _$this._vendorName;
  set vendorName(String vendorName) => _$this._vendorName = vendorName;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _upsellIds = _$v.upsellIds?.toBuilder();
      _crossSellIds = _$v.crossSellIds?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _tgeags = _$v.tgeags?.toBuilder();
      _overview = _$v.overview;
      _overviewAr = _$v.overviewAr;
      _downloads = _$v.downloads?.toBuilder();
      _featuredImage = _$v.featuredImage;
      _imageGallery = _$v.imageGallery?.toBuilder();
      _sId = _$v.sId;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _slug = _$v.slug;
      _description = _$v.description;
      _descriptionAr = _$v.descriptionAr;
      _specifications = _$v.specifications;
      _specificationsAr = _$v.specificationsAr;
      _status = _$v.status;
      _visibility = _$v.visibility;
      _productAccess = _$v.productAccess;
      _discount = _$v.discount;
      _productType = _$v.productType;
      _featured = _$v.featured;
      _regularPrice = _$v.regularPrice;
      _offerType = _$v.offerType;
      _productDiscount = _$v.productDiscount;
      _bogoOffer = _$v.bogoOffer;
      _saleSchedule = _$v.saleSchedule;
      _weight = _$v.weight;
      _length = _$v.length;
      _width = _$v.width;
      _height = _$v.height;
      _sku = _$v.sku;
      _taxStatus = _$v.taxStatus;
      _taxClass = _$v.taxClass;
      _manageStock = _$v.manageStock;
      _stockStatus = _$v.stockStatus;
      _stockQuantity = _$v.stockQuantity;
      _backorders = _$v.backorders;
      _variable = _$v.variable;
      _seoTitle = _$v.seoTitle;
      _seoMeta = _$v.seoMeta;
      _vendorId = _$v.vendorId;
      _vendorName = _$v.vendorName;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    _$Product _$result;
    try {
      _$result = _$v ??
          new _$Product._(
              upsellIds: _upsellIds?.build(),
              crossSellIds: _crossSellIds?.build(),
              attributes: _attributes?.build(),
              tgeags: _tgeags?.build(),
              overview: overview,
              overviewAr: overviewAr,
              downloads: _downloads?.build(),
              featuredImage: featuredImage,
              imageGallery: _imageGallery?.build(),
              sId: sId,
              name: name,
              nameAr: nameAr,
              slug: slug,
              description: description,
              descriptionAr: descriptionAr,
              specifications: specifications,
              specificationsAr: specificationsAr,
              status: status,
              visibility: visibility,
              productAccess: productAccess,
              discount: discount,
              productType: productType,
              featured: featured,
              regularPrice: regularPrice,
              offerType: offerType,
              productDiscount: productDiscount,
              bogoOffer: bogoOffer,
              saleSchedule: saleSchedule,
              weight: weight,
              length: length,
              width: width,
              height: height,
              sku: sku,
              taxStatus: taxStatus,
              taxClass: taxClass,
              manageStock: manageStock,
              stockStatus: stockStatus,
              stockQuantity: stockQuantity,
              backorders: backorders,
              variable: variable,
              seoTitle: seoTitle,
              seoMeta: seoMeta,
              vendorId: vendorId,
              vendorName: vendorName,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'upsellIds';
        _upsellIds?.build();
        _$failedField = 'crossSellIds';
        _crossSellIds?.build();
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'tgeags';
        _tgeags?.build();

        _$failedField = 'downloads';
        _downloads?.build();

        _$failedField = 'imageGallery';
        _imageGallery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AttributeProd extends AttributeProd {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final BuiltList<TermAttribute> terms;

  factory _$AttributeProd([void Function(AttributeProdBuilder) updates]) =>
      (new AttributeProdBuilder()..update(updates)).build();

  _$AttributeProd._({this.id, this.name, this.nameAr, this.terms}) : super._();

  @override
  AttributeProd rebuild(void Function(AttributeProdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeProdBuilder toBuilder() => new AttributeProdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeProd &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr &&
        terms == other.terms;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), nameAr.hashCode),
        terms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttributeProd')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('terms', terms))
        .toString();
  }
}

class AttributeProdBuilder
    implements Builder<AttributeProd, AttributeProdBuilder> {
  _$AttributeProd _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  ListBuilder<TermAttribute> _terms;
  ListBuilder<TermAttribute> get terms =>
      _$this._terms ??= new ListBuilder<TermAttribute>();
  set terms(ListBuilder<TermAttribute> terms) => _$this._terms = terms;

  AttributeProdBuilder();

  AttributeProdBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _terms = _$v.terms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeProd other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttributeProd;
  }

  @override
  void update(void Function(AttributeProdBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttributeProd build() {
    _$AttributeProd _$result;
    try {
      _$result = _$v ??
          new _$AttributeProd._(
              id: id, name: name, nameAr: nameAr, terms: _terms?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AttributeProd', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TermAttribute extends TermAttribute {
  @override
  final String name;

  factory _$TermAttribute([void Function(TermAttributeBuilder) updates]) =>
      (new TermAttributeBuilder()..update(updates)).build();

  _$TermAttribute._({this.name}) : super._();

  @override
  TermAttribute rebuild(void Function(TermAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermAttributeBuilder toBuilder() => new TermAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TermAttribute && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TermAttribute')..add('name', name))
        .toString();
  }
}

class TermAttributeBuilder
    implements Builder<TermAttribute, TermAttributeBuilder> {
  _$TermAttribute _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TermAttributeBuilder();

  TermAttributeBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TermAttribute other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TermAttribute;
  }

  @override
  void update(void Function(TermAttributeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TermAttribute build() {
    final _$result = _$v ?? new _$TermAttribute._(name: name);
    replace(_$result);
    return _$result;
  }
}

class _$CategoryIds extends CategoryIds {
  @override
  final String sId;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final String slug;
  @override
  final int categoryType;
  @override
  final String description;
  @override
  final String featuredImage;
  @override
  final int catId;

  factory _$CategoryIds([void Function(CategoryIdsBuilder) updates]) =>
      (new CategoryIdsBuilder()..update(updates)).build();

  _$CategoryIds._(
      {this.sId,
      this.name,
      this.nameAr,
      this.slug,
      this.categoryType,
      this.description,
      this.featuredImage,
      this.catId})
      : super._();

  @override
  CategoryIds rebuild(void Function(CategoryIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryIdsBuilder toBuilder() => new CategoryIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryIds &&
        sId == other.sId &&
        name == other.name &&
        nameAr == other.nameAr &&
        slug == other.slug &&
        categoryType == other.categoryType &&
        description == other.description &&
        featuredImage == other.featuredImage &&
        catId == other.catId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, sId.hashCode), name.hashCode),
                            nameAr.hashCode),
                        slug.hashCode),
                    categoryType.hashCode),
                description.hashCode),
            featuredImage.hashCode),
        catId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryIds')
          ..add('sId', sId)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('slug', slug)
          ..add('categoryType', categoryType)
          ..add('description', description)
          ..add('featuredImage', featuredImage)
          ..add('catId', catId))
        .toString();
  }
}

class CategoryIdsBuilder implements Builder<CategoryIds, CategoryIdsBuilder> {
  _$CategoryIds _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  int _categoryType;
  int get categoryType => _$this._categoryType;
  set categoryType(int categoryType) => _$this._categoryType = categoryType;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _featuredImage;
  String get featuredImage => _$this._featuredImage;
  set featuredImage(String featuredImage) =>
      _$this._featuredImage = featuredImage;

  int _catId;
  int get catId => _$this._catId;
  set catId(int catId) => _$this._catId = catId;

  CategoryIdsBuilder();

  CategoryIdsBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _slug = _$v.slug;
      _categoryType = _$v.categoryType;
      _description = _$v.description;
      _featuredImage = _$v.featuredImage;
      _catId = _$v.catId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryIds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryIds;
  }

  @override
  void update(void Function(CategoryIdsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryIds build() {
    final _$result = _$v ??
        new _$CategoryIds._(
            sId: sId,
            name: name,
            nameAr: nameAr,
            slug: slug,
            categoryType: categoryType,
            description: description,
            featuredImage: featuredImage,
            catId: catId);
    replace(_$result);
    return _$result;
  }
}

class _$UniversalProduct extends UniversalProduct {
  @override
  final BuiltList<String> imageGallery;
  @override
  final String sId;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String descriptionAr;
  @override
  final String overview;
  @override
  final String overviewAr;
  @override
  final String specifications;
  @override
  final String specificationsAr;
  @override
  final int status;
  @override
  final int visibility;
  @override
  final int productAccess;
  @override
  final double discount;
  @override
  final int productType;
  @override
  final int featured;
  @override
  final int offerType;
  @override
  final double productDiscount;
  @override
  final String bogoOffer;
  @override
  final double regularPrice;
  @override
  final int saleSchedule;
  @override
  final int weight;
  @override
  final int length;
  @override
  final int width;
  @override
  final int height;
  @override
  final String sku;
  @override
  final int taxStatus;
  @override
  final String taxClass;
  @override
  final int manageStock;
  @override
  final int stockStatus;
  @override
  final int stockQuantity;
  @override
  final int backorders;
  @override
  final bool vgeariable;
  @override
  final String featuredImage;
  @override
  final String seoTitle;
  @override
  final String seoMeta;
  @override
  final String vendorId;
  @override
  final String vendorName;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int rewardPoint;
  @override
  final int quantity;
  @override
  final String selectedAttributes;
  @override
  final String courseCart;

  factory _$UniversalProduct(
          [void Function(UniversalProductBuilder) updates]) =>
      (new UniversalProductBuilder()..update(updates)).build();

  _$UniversalProduct._(
      {this.imageGallery,
      this.sId,
      this.name,
      this.nameAr,
      this.slug,
      this.description,
      this.descriptionAr,
      this.overview,
      this.overviewAr,
      this.specifications,
      this.specificationsAr,
      this.status,
      this.visibility,
      this.productAccess,
      this.discount,
      this.productType,
      this.featured,
      this.offerType,
      this.productDiscount,
      this.bogoOffer,
      this.regularPrice,
      this.saleSchedule,
      this.weight,
      this.length,
      this.width,
      this.height,
      this.sku,
      this.taxStatus,
      this.taxClass,
      this.manageStock,
      this.stockStatus,
      this.stockQuantity,
      this.backorders,
      this.vgeariable,
      this.featuredImage,
      this.seoTitle,
      this.seoMeta,
      this.vendorId,
      this.vendorName,
      this.createdAt,
      this.updatedAt,
      this.rewardPoint,
      this.quantity,
      this.selectedAttributes,
      this.courseCart})
      : super._();

  @override
  UniversalProduct rebuild(void Function(UniversalProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UniversalProductBuilder toBuilder() =>
      new UniversalProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UniversalProduct &&
        imageGallery == other.imageGallery &&
        sId == other.sId &&
        name == other.name &&
        nameAr == other.nameAr &&
        slug == other.slug &&
        description == other.description &&
        descriptionAr == other.descriptionAr &&
        overview == other.overview &&
        overviewAr == other.overviewAr &&
        specifications == other.specifications &&
        specificationsAr == other.specificationsAr &&
        status == other.status &&
        visibility == other.visibility &&
        productAccess == other.productAccess &&
        discount == other.discount &&
        productType == other.productType &&
        featured == other.featured &&
        offerType == other.offerType &&
        productDiscount == other.productDiscount &&
        bogoOffer == other.bogoOffer &&
        regularPrice == other.regularPrice &&
        saleSchedule == other.saleSchedule &&
        weight == other.weight &&
        length == other.length &&
        width == other.width &&
        height == other.height &&
        sku == other.sku &&
        taxStatus == other.taxStatus &&
        taxClass == other.taxClass &&
        manageStock == other.manageStock &&
        stockStatus == other.stockStatus &&
        stockQuantity == other.stockQuantity &&
        backorders == other.backorders &&
        vgeariable == other.vgeariable &&
        featuredImage == other.featuredImage &&
        seoTitle == other.seoTitle &&
        seoMeta == other.seoMeta &&
        vendorId == other.vendorId &&
        vendorName == other.vendorName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        rewardPoint == other.rewardPoint &&
        quantity == other.quantity &&
        selectedAttributes == other.selectedAttributes &&
        courseCart == other.courseCart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, imageGallery.hashCode), sId.hashCode), name.hashCode), nameAr.hashCode), slug.hashCode), description.hashCode), descriptionAr.hashCode), overview.hashCode), overviewAr.hashCode), specifications.hashCode), specificationsAr.hashCode), status.hashCode), visibility.hashCode), productAccess.hashCode), discount.hashCode), productType.hashCode), featured.hashCode), offerType.hashCode), productDiscount.hashCode), bogoOffer.hashCode), regularPrice.hashCode), saleSchedule.hashCode), weight.hashCode), length.hashCode), width.hashCode), height.hashCode),
                                                                                sku.hashCode),
                                                                            taxStatus.hashCode),
                                                                        taxClass.hashCode),
                                                                    manageStock.hashCode),
                                                                stockStatus.hashCode),
                                                            stockQuantity.hashCode),
                                                        backorders.hashCode),
                                                    vgeariable.hashCode),
                                                featuredImage.hashCode),
                                            seoTitle.hashCode),
                                        seoMeta.hashCode),
                                    vendorId.hashCode),
                                vendorName.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    rewardPoint.hashCode),
                quantity.hashCode),
            selectedAttributes.hashCode),
        courseCart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UniversalProduct')
          ..add('imageGallery', imageGallery)
          ..add('sId', sId)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('slug', slug)
          ..add('description', description)
          ..add('descriptionAr', descriptionAr)
          ..add('overview', overview)
          ..add('overviewAr', overviewAr)
          ..add('specifications', specifications)
          ..add('specificationsAr', specificationsAr)
          ..add('status', status)
          ..add('visibility', visibility)
          ..add('productAccess', productAccess)
          ..add('discount', discount)
          ..add('productType', productType)
          ..add('featured', featured)
          ..add('offerType', offerType)
          ..add('productDiscount', productDiscount)
          ..add('bogoOffer', bogoOffer)
          ..add('regularPrice', regularPrice)
          ..add('saleSchedule', saleSchedule)
          ..add('weight', weight)
          ..add('length', length)
          ..add('width', width)
          ..add('height', height)
          ..add('sku', sku)
          ..add('taxStatus', taxStatus)
          ..add('taxClass', taxClass)
          ..add('manageStock', manageStock)
          ..add('stockStatus', stockStatus)
          ..add('stockQuantity', stockQuantity)
          ..add('backorders', backorders)
          ..add('vgeariable', vgeariable)
          ..add('featuredImage', featuredImage)
          ..add('seoTitle', seoTitle)
          ..add('seoMeta', seoMeta)
          ..add('vendorId', vendorId)
          ..add('vendorName', vendorName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('rewardPoint', rewardPoint)
          ..add('quantity', quantity)
          ..add('selectedAttributes', selectedAttributes)
          ..add('courseCart', courseCart))
        .toString();
  }
}

class UniversalProductBuilder
    implements Builder<UniversalProduct, UniversalProductBuilder> {
  _$UniversalProduct _$v;

  ListBuilder<String> _imageGallery;
  ListBuilder<String> get imageGallery =>
      _$this._imageGallery ??= new ListBuilder<String>();
  set imageGallery(ListBuilder<String> imageGallery) =>
      _$this._imageGallery = imageGallery;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _descriptionAr;
  String get descriptionAr => _$this._descriptionAr;
  set descriptionAr(String descriptionAr) =>
      _$this._descriptionAr = descriptionAr;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _overviewAr;
  String get overviewAr => _$this._overviewAr;
  set overviewAr(String overviewAr) => _$this._overviewAr = overviewAr;

  String _specifications;
  String get specifications => _$this._specifications;
  set specifications(String specifications) =>
      _$this._specifications = specifications;

  String _specificationsAr;
  String get specificationsAr => _$this._specificationsAr;
  set specificationsAr(String specificationsAr) =>
      _$this._specificationsAr = specificationsAr;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _visibility;
  int get visibility => _$this._visibility;
  set visibility(int visibility) => _$this._visibility = visibility;

  int _productAccess;
  int get productAccess => _$this._productAccess;
  set productAccess(int productAccess) => _$this._productAccess = productAccess;

  double _discount;
  double get discount => _$this._discount;
  set discount(double discount) => _$this._discount = discount;

  int _productType;
  int get productType => _$this._productType;
  set productType(int productType) => _$this._productType = productType;

  int _featured;
  int get featured => _$this._featured;
  set featured(int featured) => _$this._featured = featured;

  int _offerType;
  int get offerType => _$this._offerType;
  set offerType(int offerType) => _$this._offerType = offerType;

  double _productDiscount;
  double get productDiscount => _$this._productDiscount;
  set productDiscount(double productDiscount) =>
      _$this._productDiscount = productDiscount;

  String _bogoOffer;
  String get bogoOffer => _$this._bogoOffer;
  set bogoOffer(String bogoOffer) => _$this._bogoOffer = bogoOffer;

  double _regularPrice;
  double get regularPrice => _$this._regularPrice;
  set regularPrice(double regularPrice) => _$this._regularPrice = regularPrice;

  int _saleSchedule;
  int get saleSchedule => _$this._saleSchedule;
  set saleSchedule(int saleSchedule) => _$this._saleSchedule = saleSchedule;

  int _weight;
  int get weight => _$this._weight;
  set weight(int weight) => _$this._weight = weight;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _sku;
  String get sku => _$this._sku;
  set sku(String sku) => _$this._sku = sku;

  int _taxStatus;
  int get taxStatus => _$this._taxStatus;
  set taxStatus(int taxStatus) => _$this._taxStatus = taxStatus;

  String _taxClass;
  String get taxClass => _$this._taxClass;
  set taxClass(String taxClass) => _$this._taxClass = taxClass;

  int _manageStock;
  int get manageStock => _$this._manageStock;
  set manageStock(int manageStock) => _$this._manageStock = manageStock;

  int _stockStatus;
  int get stockStatus => _$this._stockStatus;
  set stockStatus(int stockStatus) => _$this._stockStatus = stockStatus;

  int _stockQuantity;
  int get stockQuantity => _$this._stockQuantity;
  set stockQuantity(int stockQuantity) => _$this._stockQuantity = stockQuantity;

  int _backorders;
  int get backorders => _$this._backorders;
  set backorders(int backorders) => _$this._backorders = backorders;

  bool _vgeariable;
  bool get vgeariable => _$this._vgeariable;
  set vgeariable(bool vgeariable) => _$this._vgeariable = vgeariable;

  String _featuredImage;
  String get featuredImage => _$this._featuredImage;
  set featuredImage(String featuredImage) =>
      _$this._featuredImage = featuredImage;

  String _seoTitle;
  String get seoTitle => _$this._seoTitle;
  set seoTitle(String seoTitle) => _$this._seoTitle = seoTitle;

  String _seoMeta;
  String get seoMeta => _$this._seoMeta;
  set seoMeta(String seoMeta) => _$this._seoMeta = seoMeta;

  String _vendorId;
  String get vendorId => _$this._vendorId;
  set vendorId(String vendorId) => _$this._vendorId = vendorId;

  String _vendorName;
  String get vendorName => _$this._vendorName;
  set vendorName(String vendorName) => _$this._vendorName = vendorName;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  int _rewardPoint;
  int get rewardPoint => _$this._rewardPoint;
  set rewardPoint(int rewardPoint) => _$this._rewardPoint = rewardPoint;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  String _selectedAttributes;
  String get selectedAttributes => _$this._selectedAttributes;
  set selectedAttributes(String selectedAttributes) =>
      _$this._selectedAttributes = selectedAttributes;

  String _courseCart;
  String get courseCart => _$this._courseCart;
  set courseCart(String courseCart) => _$this._courseCart = courseCart;

  UniversalProductBuilder();

  UniversalProductBuilder get _$this {
    if (_$v != null) {
      _imageGallery = _$v.imageGallery?.toBuilder();
      _sId = _$v.sId;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _slug = _$v.slug;
      _description = _$v.description;
      _descriptionAr = _$v.descriptionAr;
      _overview = _$v.overview;
      _overviewAr = _$v.overviewAr;
      _specifications = _$v.specifications;
      _specificationsAr = _$v.specificationsAr;
      _status = _$v.status;
      _visibility = _$v.visibility;
      _productAccess = _$v.productAccess;
      _discount = _$v.discount;
      _productType = _$v.productType;
      _featured = _$v.featured;
      _offerType = _$v.offerType;
      _productDiscount = _$v.productDiscount;
      _bogoOffer = _$v.bogoOffer;
      _regularPrice = _$v.regularPrice;
      _saleSchedule = _$v.saleSchedule;
      _weight = _$v.weight;
      _length = _$v.length;
      _width = _$v.width;
      _height = _$v.height;
      _sku = _$v.sku;
      _taxStatus = _$v.taxStatus;
      _taxClass = _$v.taxClass;
      _manageStock = _$v.manageStock;
      _stockStatus = _$v.stockStatus;
      _stockQuantity = _$v.stockQuantity;
      _backorders = _$v.backorders;
      _vgeariable = _$v.vgeariable;
      _featuredImage = _$v.featuredImage;
      _seoTitle = _$v.seoTitle;
      _seoMeta = _$v.seoMeta;
      _vendorId = _$v.vendorId;
      _vendorName = _$v.vendorName;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _rewardPoint = _$v.rewardPoint;
      _quantity = _$v.quantity;
      _selectedAttributes = _$v.selectedAttributes;
      _courseCart = _$v.courseCart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UniversalProduct other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UniversalProduct;
  }

  @override
  void update(void Function(UniversalProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UniversalProduct build() {
    _$UniversalProduct _$result;
    try {
      _$result = _$v ??
          new _$UniversalProduct._(
              imageGallery: _imageGallery?.build(),
              sId: sId,
              name: name,
              nameAr: nameAr,
              slug: slug,
              description: description,
              descriptionAr: descriptionAr,
              overview: overview,
              overviewAr: overviewAr,
              specifications: specifications,
              specificationsAr: specificationsAr,
              status: status,
              visibility: visibility,
              productAccess: productAccess,
              discount: discount,
              productType: productType,
              featured: featured,
              offerType: offerType,
              productDiscount: productDiscount,
              bogoOffer: bogoOffer,
              regularPrice: regularPrice,
              saleSchedule: saleSchedule,
              weight: weight,
              length: length,
              width: width,
              height: height,
              sku: sku,
              taxStatus: taxStatus,
              taxClass: taxClass,
              manageStock: manageStock,
              stockStatus: stockStatus,
              stockQuantity: stockQuantity,
              backorders: backorders,
              vgeariable: vgeariable,
              featuredImage: featuredImage,
              seoTitle: seoTitle,
              seoMeta: seoMeta,
              vendorId: vendorId,
              vendorName: vendorName,
              createdAt: createdAt,
              updatedAt: updatedAt,
              rewardPoint: rewardPoint,
              quantity: quantity,
              selectedAttributes: selectedAttributes,
              courseCart: courseCart);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imageGallery';
        _imageGallery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UniversalProduct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductAttribute extends ProductAttribute {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;

  factory _$ProductAttribute(
          [void Function(ProductAttributeBuilder) updates]) =>
      (new ProductAttributeBuilder()..update(updates)).build();

  _$ProductAttribute._({this.id, this.name, this.nameAr}) : super._();

  @override
  ProductAttribute rebuild(void Function(ProductAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductAttributeBuilder toBuilder() =>
      new ProductAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductAttribute &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), nameAr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductAttribute')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr))
        .toString();
  }
}

class ProductAttributeBuilder
    implements Builder<ProductAttribute, ProductAttributeBuilder> {
  _$ProductAttribute _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  ProductAttributeBuilder();

  ProductAttributeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductAttribute other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductAttribute;
  }

  @override
  void update(void Function(ProductAttributeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductAttribute build() {
    final _$result =
        _$v ?? new _$ProductAttribute._(id: id, name: name, nameAr: nameAr);
    replace(_$result);
    return _$result;
  }
}

class _$Term extends Term {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;

  factory _$Term([void Function(TermBuilder) updates]) =>
      (new TermBuilder()..update(updates)).build();

  _$Term._({this.id, this.name, this.nameAr}) : super._();

  @override
  Term rebuild(void Function(TermBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermBuilder toBuilder() => new TermBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Term &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), nameAr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Term')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr))
        .toString();
  }
}

class TermBuilder implements Builder<Term, TermBuilder> {
  _$Term _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  TermBuilder();

  TermBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Term other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Term;
  }

  @override
  void update(void Function(TermBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Term build() {
    final _$result = _$v ?? new _$Term._(id: id, name: name, nameAr: nameAr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
