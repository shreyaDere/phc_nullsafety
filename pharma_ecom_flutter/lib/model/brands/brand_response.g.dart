// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandsResponse> _$brandsResponseSerializer =
    new _$BrandsResponseSerializer();
Serializer<ResponseData> _$responseDataSerializer =
    new _$ResponseDataSerializer();
Serializer<Attribute> _$attributeSerializer = new _$AttributeSerializer();
Serializer<BrandTerms> _$brandTermsSerializer = new _$BrandTermsSerializer();

class _$BrandsResponseSerializer
    implements StructuredSerializer<BrandsResponse> {
  @override
  final Iterable<Type> types = const [BrandsResponse, _$BrandsResponse];
  @override
  final String wireName = 'BrandsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandsResponse object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(ResponseData)])));
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
  BrandsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandsResponseBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ResponseData)]))
              as BuiltList<Object>);
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

class _$ResponseDataSerializer implements StructuredSerializer<ResponseData> {
  @override
  final Iterable<Type> types = const [ResponseData, _$ResponseData];
  @override
  final String wireName = 'ResponseData';

  @override
  Iterable<Object> serialize(Serializers serializers, ResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.productAccess != null) {
      result
        ..add('productAccess')
        ..add(serializers.serialize(object.productAccess,
            specifiedType: const FullType(int)));
    }
    if (object.stockStatus != null) {
      result
        ..add('stock_status')
        ..add(serializers.serialize(object.stockStatus,
            specifiedType: const FullType(int)));
    }
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
            specifiedType:
                const FullType(BuiltList, const [const FullType(Attribute)])));
    }
    if (object.categoryIds != null) {
      result
        ..add('category_ids')
        ..add(serializers.serialize(object.categoryIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    if (object.sku != null) {
      result
        ..add('sku')
        ..add(serializers.serialize(object.sku,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.regularPrice != null) {
      result
        ..add('regular_price')
        ..add(serializers.serialize(object.regularPrice,
            specifiedType: const FullType(double)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(int)));
    }
    if (object.manageStock != null) {
      result
        ..add('manage_stock')
        ..add(serializers.serialize(object.manageStock,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ResponseData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'productAccess':
          result.productAccess = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stock_status':
          result.stockStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
                      BuiltList, const [const FullType(Attribute)]))
              as BuiltList<Object>);
          break;
        case 'category_ids':
          result.categoryIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
        case 'sku':
          result.sku = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regular_price':
          result.regularPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'manage_stock':
          result.manageStock = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AttributeSerializer implements StructuredSerializer<Attribute> {
  @override
  final Iterable<Type> types = const [Attribute, _$Attribute];
  @override
  final String wireName = 'Attribute';

  @override
  Iterable<Object> serialize(Serializers serializers, Attribute object,
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
    if (object.terms != null) {
      result
        ..add('terms')
        ..add(serializers.serialize(object.terms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BrandTerms)])));
    }
    return result;
  }

  @override
  Attribute deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributeBuilder();

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
        case 'terms':
          result.terms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BrandTerms)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BrandTermsSerializer implements StructuredSerializer<BrandTerms> {
  @override
  final Iterable<Type> types = const [BrandTerms, _$BrandTerms];
  @override
  final String wireName = 'BrandTerms';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandTerms object,
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
    return result;
  }

  @override
  BrandTerms deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandTermsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$BrandsResponse extends BrandsResponse {
  @override
  final int status;
  @override
  final BuiltList<ResponseData> data;
  @override
  final String message;

  factory _$BrandsResponse([void Function(BrandsResponseBuilder) updates]) =>
      (new BrandsResponseBuilder()..update(updates)).build();

  _$BrandsResponse._({this.status, this.data, this.message}) : super._();

  @override
  BrandsResponse rebuild(void Function(BrandsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandsResponseBuilder toBuilder() =>
      new BrandsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandsResponse &&
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
    return (newBuiltValueToStringHelper('BrandsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class BrandsResponseBuilder
    implements Builder<BrandsResponse, BrandsResponseBuilder> {
  _$BrandsResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<ResponseData> _data;
  ListBuilder<ResponseData> get data =>
      _$this._data ??= new ListBuilder<ResponseData>();
  set data(ListBuilder<ResponseData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BrandsResponseBuilder();

  BrandsResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandsResponse;
  }

  @override
  void update(void Function(BrandsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandsResponse build() {
    _$BrandsResponse _$result;
    try {
      _$result = _$v ??
          new _$BrandsResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BrandsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ResponseData extends ResponseData {
  @override
  final int productAccess;
  @override
  final int stockStatus;
  @override
  final BuiltList<UniversalProduct> upsellIds;
  @override
  final BuiltList<UniversalProduct> crossSellIds;
  @override
  final BuiltList<Attribute> attributes;
  @override
  final BuiltList<String> categoryIds;
  @override
  final BuiltList<String> imageGallery;
  @override
  final String sId;
  @override
  final String sku;
  @override
  final String name;
  @override
  final double regularPrice;
  @override
  final String slug;
  @override
  final int status;
  @override
  final String updatedAt;
  @override
  final int visibility;
  @override
  final int manageStock;

  factory _$ResponseData([void Function(ResponseDataBuilder) updates]) =>
      (new ResponseDataBuilder()..update(updates)).build();

  _$ResponseData._(
      {this.productAccess,
      this.stockStatus,
      this.upsellIds,
      this.crossSellIds,
      this.attributes,
      this.categoryIds,
      this.imageGallery,
      this.sId,
      this.sku,
      this.name,
      this.regularPrice,
      this.slug,
      this.status,
      this.updatedAt,
      this.visibility,
      this.manageStock})
      : super._();

  @override
  ResponseData rebuild(void Function(ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseDataBuilder toBuilder() => new ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseData &&
        productAccess == other.productAccess &&
        stockStatus == other.stockStatus &&
        upsellIds == other.upsellIds &&
        crossSellIds == other.crossSellIds &&
        attributes == other.attributes &&
        categoryIds == other.categoryIds &&
        imageGallery == other.imageGallery &&
        sId == other.sId &&
        sku == other.sku &&
        name == other.name &&
        regularPrice == other.regularPrice &&
        slug == other.slug &&
        status == other.status &&
        updatedAt == other.updatedAt &&
        visibility == other.visibility &&
        manageStock == other.manageStock;
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
                                                                    0,
                                                                    productAccess
                                                                        .hashCode),
                                                                stockStatus
                                                                    .hashCode),
                                                            upsellIds.hashCode),
                                                        crossSellIds.hashCode),
                                                    attributes.hashCode),
                                                categoryIds.hashCode),
                                            imageGallery.hashCode),
                                        sId.hashCode),
                                    sku.hashCode),
                                name.hashCode),
                            regularPrice.hashCode),
                        slug.hashCode),
                    status.hashCode),
                updatedAt.hashCode),
            visibility.hashCode),
        manageStock.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResponseData')
          ..add('productAccess', productAccess)
          ..add('stockStatus', stockStatus)
          ..add('upsellIds', upsellIds)
          ..add('crossSellIds', crossSellIds)
          ..add('attributes', attributes)
          ..add('categoryIds', categoryIds)
          ..add('imageGallery', imageGallery)
          ..add('sId', sId)
          ..add('sku', sku)
          ..add('name', name)
          ..add('regularPrice', regularPrice)
          ..add('slug', slug)
          ..add('status', status)
          ..add('updatedAt', updatedAt)
          ..add('visibility', visibility)
          ..add('manageStock', manageStock))
        .toString();
  }
}

class ResponseDataBuilder
    implements Builder<ResponseData, ResponseDataBuilder> {
  _$ResponseData _$v;

  int _productAccess;
  int get productAccess => _$this._productAccess;
  set productAccess(int productAccess) => _$this._productAccess = productAccess;

  int _stockStatus;
  int get stockStatus => _$this._stockStatus;
  set stockStatus(int stockStatus) => _$this._stockStatus = stockStatus;

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

  ListBuilder<Attribute> _attributes;
  ListBuilder<Attribute> get attributes =>
      _$this._attributes ??= new ListBuilder<Attribute>();
  set attributes(ListBuilder<Attribute> attributes) =>
      _$this._attributes = attributes;

  ListBuilder<String> _categoryIds;
  ListBuilder<String> get categoryIds =>
      _$this._categoryIds ??= new ListBuilder<String>();
  set categoryIds(ListBuilder<String> categoryIds) =>
      _$this._categoryIds = categoryIds;

  ListBuilder<String> _imageGallery;
  ListBuilder<String> get imageGallery =>
      _$this._imageGallery ??= new ListBuilder<String>();
  set imageGallery(ListBuilder<String> imageGallery) =>
      _$this._imageGallery = imageGallery;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _sku;
  String get sku => _$this._sku;
  set sku(String sku) => _$this._sku = sku;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _regularPrice;
  double get regularPrice => _$this._regularPrice;
  set regularPrice(double regularPrice) => _$this._regularPrice = regularPrice;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  int _visibility;
  int get visibility => _$this._visibility;
  set visibility(int visibility) => _$this._visibility = visibility;

  int _manageStock;
  int get manageStock => _$this._manageStock;
  set manageStock(int manageStock) => _$this._manageStock = manageStock;

  ResponseDataBuilder();

  ResponseDataBuilder get _$this {
    if (_$v != null) {
      _productAccess = _$v.productAccess;
      _stockStatus = _$v.stockStatus;
      _upsellIds = _$v.upsellIds?.toBuilder();
      _crossSellIds = _$v.crossSellIds?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _categoryIds = _$v.categoryIds?.toBuilder();
      _imageGallery = _$v.imageGallery?.toBuilder();
      _sId = _$v.sId;
      _sku = _$v.sku;
      _name = _$v.name;
      _regularPrice = _$v.regularPrice;
      _slug = _$v.slug;
      _status = _$v.status;
      _updatedAt = _$v.updatedAt;
      _visibility = _$v.visibility;
      _manageStock = _$v.manageStock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ResponseData;
  }

  @override
  void update(void Function(ResponseDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResponseData build() {
    _$ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ResponseData._(
              productAccess: productAccess,
              stockStatus: stockStatus,
              upsellIds: _upsellIds?.build(),
              crossSellIds: _crossSellIds?.build(),
              attributes: _attributes?.build(),
              categoryIds: _categoryIds?.build(),
              imageGallery: _imageGallery?.build(),
              sId: sId,
              sku: sku,
              name: name,
              regularPrice: regularPrice,
              slug: slug,
              status: status,
              updatedAt: updatedAt,
              visibility: visibility,
              manageStock: manageStock);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'upsellIds';
        _upsellIds?.build();
        _$failedField = 'crossSellIds';
        _crossSellIds?.build();
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'categoryIds';
        _categoryIds?.build();
        _$failedField = 'imageGallery';
        _imageGallery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Attribute extends Attribute {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<BrandTerms> terms;

  factory _$Attribute([void Function(AttributeBuilder) updates]) =>
      (new AttributeBuilder()..update(updates)).build();

  _$Attribute._({this.id, this.name, this.terms}) : super._();

  @override
  Attribute rebuild(void Function(AttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributeBuilder toBuilder() => new AttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attribute &&
        id == other.id &&
        name == other.name &&
        terms == other.terms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), terms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attribute')
          ..add('id', id)
          ..add('name', name)
          ..add('terms', terms))
        .toString();
  }
}

class AttributeBuilder implements Builder<Attribute, AttributeBuilder> {
  _$Attribute _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<BrandTerms> _terms;
  ListBuilder<BrandTerms> get terms =>
      _$this._terms ??= new ListBuilder<BrandTerms>();
  set terms(ListBuilder<BrandTerms> terms) => _$this._terms = terms;

  AttributeBuilder();

  AttributeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _terms = _$v.terms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attribute other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attribute;
  }

  @override
  void update(void Function(AttributeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Attribute build() {
    _$Attribute _$result;
    try {
      _$result =
          _$v ?? new _$Attribute._(id: id, name: name, terms: _terms?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Attribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BrandTerms extends BrandTerms {
  @override
  final String sId;
  @override
  final String name;

  factory _$BrandTerms([void Function(BrandTermsBuilder) updates]) =>
      (new BrandTermsBuilder()..update(updates)).build();

  _$BrandTerms._({this.sId, this.name}) : super._();

  @override
  BrandTerms rebuild(void Function(BrandTermsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandTermsBuilder toBuilder() => new BrandTermsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandTerms && sId == other.sId && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sId.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandTerms')
          ..add('sId', sId)
          ..add('name', name))
        .toString();
  }
}

class BrandTermsBuilder implements Builder<BrandTerms, BrandTermsBuilder> {
  _$BrandTerms _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BrandTermsBuilder();

  BrandTermsBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandTerms other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandTerms;
  }

  @override
  void update(void Function(BrandTermsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandTerms build() {
    final _$result = _$v ?? new _$BrandTerms._(sId: sId, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
