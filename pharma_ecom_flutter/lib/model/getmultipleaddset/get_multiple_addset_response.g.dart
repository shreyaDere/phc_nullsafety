// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multiple_addset_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetMultipleAdsetsResponse> _$getMultipleAdsetsResponseSerializer =
    new _$GetMultipleAdsetsResponseSerializer();
Serializer<MultipleAddsetData> _$multipleAddsetDataSerializer =
    new _$MultipleAddsetDataSerializer();
Serializer<Adsets> _$adsetsSerializer = new _$AdsetsSerializer();
Serializer<AdsObjectInAdsets> _$adsObjectInAdsetsSerializer =
    new _$AdsObjectInAdsetsSerializer();
Serializer<CategoriesObject> _$categoriesObjectSerializer =
    new _$CategoriesObjectSerializer();

class _$GetMultipleAdsetsResponseSerializer
    implements StructuredSerializer<GetMultipleAdsetsResponse> {
  @override
  final Iterable<Type> types = const [
    GetMultipleAdsetsResponse,
    _$GetMultipleAdsetsResponse
  ];
  @override
  final String wireName = 'GetMultipleAdsetsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetMultipleAdsetsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(MultipleAddsetData)));
    }
    return result;
  }

  @override
  GetMultipleAdsetsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetMultipleAdsetsResponseBuilder();

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
                  specifiedType: const FullType(MultipleAddsetData))
              as MultipleAddsetData);
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

class _$MultipleAddsetDataSerializer
    implements StructuredSerializer<MultipleAddsetData> {
  @override
  final Iterable<Type> types = const [MultipleAddsetData, _$MultipleAddsetData];
  @override
  final String wireName = 'MultipleAddsetData';

  @override
  Iterable<Object> serialize(Serializers serializers, MultipleAddsetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.adsets != null) {
      result
        ..add('adsets')
        ..add(serializers.serialize(object.adsets,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Adsets)])));
    }
    return result;
  }

  @override
  MultipleAddsetData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultipleAddsetDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'adsets':
          result.adsets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Adsets)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AdsetsSerializer implements StructuredSerializer<Adsets> {
  @override
  final Iterable<Type> types = const [Adsets, _$Adsets];
  @override
  final String wireName = 'Adsets';

  @override
  Iterable<Object> serialize(Serializers serializers, Adsets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ads != null) {
      result
        ..add('ads')
        ..add(serializers.serialize(object.ads,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AdsObjectInAdsets)])));
    }
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoriesObject)])));
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
    if (object.adsettype != null) {
      result
        ..add('adsettype')
        ..add(serializers.serialize(object.adsettype,
            specifiedType: const FullType(int)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(int)));
    }
    if (object.categoryName != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(object.categoryName,
            specifiedType: const FullType(String)));
    }
    if (object.categorySlug != null) {
      result
        ..add('category_slug')
        ..add(serializers.serialize(object.categorySlug,
            specifiedType: const FullType(String)));
    }
    if (object.productName != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(object.productName,
            specifiedType: const FullType(String)));
    }
    if (object.productSlug != null) {
      result
        ..add('product_slug')
        ..add(serializers.serialize(object.productSlug,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Adsets deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdsetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ads':
          result.ads.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AdsObjectInAdsets)]))
              as BuiltList<Object>);
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoriesObject)]))
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
        case 'adsettype':
          result.adsettype = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_slug':
          result.categorySlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_name':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_slug':
          result.productSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AdsObjectInAdsetsSerializer
    implements StructuredSerializer<AdsObjectInAdsets> {
  @override
  final Iterable<Type> types = const [AdsObjectInAdsets, _$AdsObjectInAdsets];
  @override
  final String wireName = 'AdsObjectInAdsets';

  @override
  Iterable<Object> serialize(Serializers serializers, AdsObjectInAdsets object,
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
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.buttonText != null) {
      result
        ..add('button_text')
        ..add(serializers.serialize(object.buttonText,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(int)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AdsObjectInAdsets deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdsObjectInAdsetsBuilder();

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
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'button_text':
          result.buttonText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesObjectSerializer
    implements StructuredSerializer<CategoriesObject> {
  @override
  final Iterable<Type> types = const [CategoriesObject, _$CategoriesObject];
  @override
  final String wireName = 'CategoriesObject';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriesObject object,
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
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.featuredImage != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoriesObject deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesObjectBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured_image':
          result.featuredImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetMultipleAdsetsResponse extends GetMultipleAdsetsResponse {
  @override
  final int status;
  @override
  final MultipleAddsetData data;
  @override
  final String message;

  factory _$GetMultipleAdsetsResponse(
          [void Function(GetMultipleAdsetsResponseBuilder) updates]) =>
      (new GetMultipleAdsetsResponseBuilder()..update(updates)).build();

  _$GetMultipleAdsetsResponse._({this.status, this.data, this.message})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('GetMultipleAdsetsResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'GetMultipleAdsetsResponse', 'message');
    }
  }

  @override
  GetMultipleAdsetsResponse rebuild(
          void Function(GetMultipleAdsetsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMultipleAdsetsResponseBuilder toBuilder() =>
      new GetMultipleAdsetsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMultipleAdsetsResponse &&
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
    return (newBuiltValueToStringHelper('GetMultipleAdsetsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class GetMultipleAdsetsResponseBuilder
    implements
        Builder<GetMultipleAdsetsResponse, GetMultipleAdsetsResponseBuilder> {
  _$GetMultipleAdsetsResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  MultipleAddsetDataBuilder _data;
  MultipleAddsetDataBuilder get data =>
      _$this._data ??= new MultipleAddsetDataBuilder();
  set data(MultipleAddsetDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  GetMultipleAdsetsResponseBuilder();

  GetMultipleAdsetsResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMultipleAdsetsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetMultipleAdsetsResponse;
  }

  @override
  void update(void Function(GetMultipleAdsetsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetMultipleAdsetsResponse build() {
    _$GetMultipleAdsetsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetMultipleAdsetsResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetMultipleAdsetsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MultipleAddsetData extends MultipleAddsetData {
  @override
  final BuiltList<Adsets> adsets;

  factory _$MultipleAddsetData(
          [void Function(MultipleAddsetDataBuilder) updates]) =>
      (new MultipleAddsetDataBuilder()..update(updates)).build();

  _$MultipleAddsetData._({this.adsets}) : super._();

  @override
  MultipleAddsetData rebuild(
          void Function(MultipleAddsetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleAddsetDataBuilder toBuilder() =>
      new MultipleAddsetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleAddsetData && adsets == other.adsets;
  }

  @override
  int get hashCode {
    return $jf($jc(0, adsets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleAddsetData')
          ..add('adsets', adsets))
        .toString();
  }
}

class MultipleAddsetDataBuilder
    implements Builder<MultipleAddsetData, MultipleAddsetDataBuilder> {
  _$MultipleAddsetData _$v;

  ListBuilder<Adsets> _adsets;
  ListBuilder<Adsets> get adsets =>
      _$this._adsets ??= new ListBuilder<Adsets>();
  set adsets(ListBuilder<Adsets> adsets) => _$this._adsets = adsets;

  MultipleAddsetDataBuilder();

  MultipleAddsetDataBuilder get _$this {
    if (_$v != null) {
      _adsets = _$v.adsets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipleAddsetData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MultipleAddsetData;
  }

  @override
  void update(void Function(MultipleAddsetDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleAddsetData build() {
    _$MultipleAddsetData _$result;
    try {
      _$result = _$v ?? new _$MultipleAddsetData._(adsets: _adsets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'adsets';
        _adsets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleAddsetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Adsets extends Adsets {
  @override
  final BuiltList<AdsObjectInAdsets> ads;
  @override
  final BuiltList<UniversalProduct> products;
  @override
  final BuiltList<CategoriesObject> categories;
  @override
  final String sId;
  @override
  final String name;
  @override
  final int adsettype;
  @override
  final String slug;
  @override
  final int active;
  @override
  final String categoryName;
  @override
  final String categorySlug;
  @override
  final String productName;
  @override
  final String productSlug;

  factory _$Adsets([void Function(AdsetsBuilder) updates]) =>
      (new AdsetsBuilder()..update(updates)).build();

  _$Adsets._(
      {this.ads,
      this.products,
      this.categories,
      this.sId,
      this.name,
      this.adsettype,
      this.slug,
      this.active,
      this.categoryName,
      this.categorySlug,
      this.productName,
      this.productSlug})
      : super._();

  @override
  Adsets rebuild(void Function(AdsetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdsetsBuilder toBuilder() => new AdsetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Adsets &&
        ads == other.ads &&
        products == other.products &&
        categories == other.categories &&
        sId == other.sId &&
        name == other.name &&
        adsettype == other.adsettype &&
        slug == other.slug &&
        active == other.active &&
        categoryName == other.categoryName &&
        categorySlug == other.categorySlug &&
        productName == other.productName &&
        productSlug == other.productSlug;
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
                                            $jc($jc(0, ads.hashCode),
                                                products.hashCode),
                                            categories.hashCode),
                                        sId.hashCode),
                                    name.hashCode),
                                adsettype.hashCode),
                            slug.hashCode),
                        active.hashCode),
                    categoryName.hashCode),
                categorySlug.hashCode),
            productName.hashCode),
        productSlug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Adsets')
          ..add('ads', ads)
          ..add('products', products)
          ..add('categories', categories)
          ..add('sId', sId)
          ..add('name', name)
          ..add('adsettype', adsettype)
          ..add('slug', slug)
          ..add('active', active)
          ..add('categoryName', categoryName)
          ..add('categorySlug', categorySlug)
          ..add('productName', productName)
          ..add('productSlug', productSlug))
        .toString();
  }
}

class AdsetsBuilder implements Builder<Adsets, AdsetsBuilder> {
  _$Adsets _$v;

  ListBuilder<AdsObjectInAdsets> _ads;
  ListBuilder<AdsObjectInAdsets> get ads =>
      _$this._ads ??= new ListBuilder<AdsObjectInAdsets>();
  set ads(ListBuilder<AdsObjectInAdsets> ads) => _$this._ads = ads;

  ListBuilder<UniversalProduct> _products;
  ListBuilder<UniversalProduct> get products =>
      _$this._products ??= new ListBuilder<UniversalProduct>();
  set products(ListBuilder<UniversalProduct> products) =>
      _$this._products = products;

  ListBuilder<CategoriesObject> _categories;
  ListBuilder<CategoriesObject> get categories =>
      _$this._categories ??= new ListBuilder<CategoriesObject>();
  set categories(ListBuilder<CategoriesObject> categories) =>
      _$this._categories = categories;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _adsettype;
  int get adsettype => _$this._adsettype;
  set adsettype(int adsettype) => _$this._adsettype = adsettype;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

  String _categorySlug;
  String get categorySlug => _$this._categorySlug;
  set categorySlug(String categorySlug) => _$this._categorySlug = categorySlug;

  String _productName;
  String get productName => _$this._productName;
  set productName(String productName) => _$this._productName = productName;

  String _productSlug;
  String get productSlug => _$this._productSlug;
  set productSlug(String productSlug) => _$this._productSlug = productSlug;

  AdsetsBuilder();

  AdsetsBuilder get _$this {
    if (_$v != null) {
      _ads = _$v.ads?.toBuilder();
      _products = _$v.products?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _sId = _$v.sId;
      _name = _$v.name;
      _adsettype = _$v.adsettype;
      _slug = _$v.slug;
      _active = _$v.active;
      _categoryName = _$v.categoryName;
      _categorySlug = _$v.categorySlug;
      _productName = _$v.productName;
      _productSlug = _$v.productSlug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Adsets other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Adsets;
  }

  @override
  void update(void Function(AdsetsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Adsets build() {
    _$Adsets _$result;
    try {
      _$result = _$v ??
          new _$Adsets._(
              ads: _ads?.build(),
              products: _products?.build(),
              categories: _categories?.build(),
              sId: sId,
              name: name,
              adsettype: adsettype,
              slug: slug,
              active: active,
              categoryName: categoryName,
              categorySlug: categorySlug,
              productName: productName,
              productSlug: productSlug);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ads';
        _ads?.build();
        _$failedField = 'products';
        _products?.build();
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Adsets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AdsObjectInAdsets extends AdsObjectInAdsets {
  @override
  final String id;
  @override
  final String name;
  @override
  final String link;
  @override
  final String image;
  @override
  final String buttonText;
  @override
  final String description;
  @override
  final int sort;
  @override
  final int active;

  factory _$AdsObjectInAdsets(
          [void Function(AdsObjectInAdsetsBuilder) updates]) =>
      (new AdsObjectInAdsetsBuilder()..update(updates)).build();

  _$AdsObjectInAdsets._(
      {this.id,
      this.name,
      this.link,
      this.image,
      this.buttonText,
      this.description,
      this.sort,
      this.active})
      : super._();

  @override
  AdsObjectInAdsets rebuild(void Function(AdsObjectInAdsetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdsObjectInAdsetsBuilder toBuilder() =>
      new AdsObjectInAdsetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdsObjectInAdsets &&
        id == other.id &&
        name == other.name &&
        link == other.link &&
        image == other.image &&
        buttonText == other.buttonText &&
        description == other.description &&
        sort == other.sort &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            link.hashCode),
                        image.hashCode),
                    buttonText.hashCode),
                description.hashCode),
            sort.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdsObjectInAdsets')
          ..add('id', id)
          ..add('name', name)
          ..add('link', link)
          ..add('image', image)
          ..add('buttonText', buttonText)
          ..add('description', description)
          ..add('sort', sort)
          ..add('active', active))
        .toString();
  }
}

class AdsObjectInAdsetsBuilder
    implements Builder<AdsObjectInAdsets, AdsObjectInAdsetsBuilder> {
  _$AdsObjectInAdsets _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _buttonText;
  String get buttonText => _$this._buttonText;
  set buttonText(String buttonText) => _$this._buttonText = buttonText;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _sort;
  int get sort => _$this._sort;
  set sort(int sort) => _$this._sort = sort;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  AdsObjectInAdsetsBuilder();

  AdsObjectInAdsetsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _link = _$v.link;
      _image = _$v.image;
      _buttonText = _$v.buttonText;
      _description = _$v.description;
      _sort = _$v.sort;
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdsObjectInAdsets other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AdsObjectInAdsets;
  }

  @override
  void update(void Function(AdsObjectInAdsetsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdsObjectInAdsets build() {
    final _$result = _$v ??
        new _$AdsObjectInAdsets._(
            id: id,
            name: name,
            link: link,
            image: image,
            buttonText: buttonText,
            description: description,
            sort: sort,
            active: active);
    replace(_$result);
    return _$result;
  }
}

class _$CategoriesObject extends CategoriesObject {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final String slug;
  @override
  final String featuredImage;

  factory _$CategoriesObject(
          [void Function(CategoriesObjectBuilder) updates]) =>
      (new CategoriesObjectBuilder()..update(updates)).build();

  _$CategoriesObject._(
      {this.id, this.name, this.nameAr, this.slug, this.featuredImage})
      : super._();

  @override
  CategoriesObject rebuild(void Function(CategoriesObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesObjectBuilder toBuilder() =>
      new CategoriesObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesObject &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr &&
        slug == other.slug &&
        featuredImage == other.featuredImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), nameAr.hashCode),
            slug.hashCode),
        featuredImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesObject')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('slug', slug)
          ..add('featuredImage', featuredImage))
        .toString();
  }
}

class CategoriesObjectBuilder
    implements Builder<CategoriesObject, CategoriesObjectBuilder> {
  _$CategoriesObject _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _featuredImage;
  String get featuredImage => _$this._featuredImage;
  set featuredImage(String featuredImage) =>
      _$this._featuredImage = featuredImage;

  CategoriesObjectBuilder();

  CategoriesObjectBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _slug = _$v.slug;
      _featuredImage = _$v.featuredImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesObject;
  }

  @override
  void update(void Function(CategoriesObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesObject build() {
    final _$result = _$v ??
        new _$CategoriesObject._(
            id: id,
            name: name,
            nameAr: nameAr,
            slug: slug,
            featuredImage: featuredImage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
