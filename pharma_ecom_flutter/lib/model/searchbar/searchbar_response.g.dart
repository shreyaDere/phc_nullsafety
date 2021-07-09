// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchbar_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchBarResponse> _$searchBarResponseSerializer =
    new _$SearchBarResponseSerializer();
Serializer<SearchData> _$searchDataSerializer = new _$SearchDataSerializer();
Serializer<SearchBrands> _$searchBrandsSerializer =
    new _$SearchBrandsSerializer();
Serializer<SerarchProducts> _$serarchProductsSerializer =
    new _$SerarchProductsSerializer();

class _$SearchBarResponseSerializer
    implements StructuredSerializer<SearchBarResponse> {
  @override
  final Iterable<Type> types = const [SearchBarResponse, _$SearchBarResponse];
  @override
  final String wireName = 'SearchBarResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchBarResponse object,
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
            specifiedType: const FullType(SearchData)));
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
  SearchBarResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchBarResponseBuilder();

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
              specifiedType: const FullType(SearchData)) as SearchData);
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

class _$SearchDataSerializer implements StructuredSerializer<SearchData> {
  @override
  final Iterable<Type> types = const [SearchData, _$SearchData];
  @override
  final String wireName = 'SearchData';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SerarchProducts)])));
    }
    if (object.brands != null) {
      result
        ..add('brands')
        ..add(serializers.serialize(object.brands,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchBrands)])));
    }
    return result;
  }

  @override
  SearchData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SerarchProducts)]))
              as BuiltList<Object>);
          break;
        case 'brands':
          result.brands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchBrands)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchBrandsSerializer implements StructuredSerializer<SearchBrands> {
  @override
  final Iterable<Type> types = const [SearchBrands, _$SearchBrands];
  @override
  final String wireName = 'SearchBrands';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchBrands object,
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
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SearchBrands deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchBrandsBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SerarchProductsSerializer
    implements StructuredSerializer<SerarchProducts> {
  @override
  final Iterable<Type> types = const [SerarchProducts, _$SerarchProducts];
  @override
  final String wireName = 'SerarchProducts';

  @override
  Iterable<Object> serialize(Serializers serializers, SerarchProducts object,
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
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SerarchProducts deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SerarchProductsBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchBarResponse extends SearchBarResponse {
  @override
  final int status;
  @override
  final SearchData data;
  @override
  final String message;

  factory _$SearchBarResponse(
          [void Function(SearchBarResponseBuilder) updates]) =>
      (new SearchBarResponseBuilder()..update(updates)).build();

  _$SearchBarResponse._({this.status, this.data, this.message}) : super._();

  @override
  SearchBarResponse rebuild(void Function(SearchBarResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBarResponseBuilder toBuilder() =>
      new SearchBarResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchBarResponse &&
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
    return (newBuiltValueToStringHelper('SearchBarResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class SearchBarResponseBuilder
    implements Builder<SearchBarResponse, SearchBarResponseBuilder> {
  _$SearchBarResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  SearchDataBuilder _data;
  SearchDataBuilder get data => _$this._data ??= new SearchDataBuilder();
  set data(SearchDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SearchBarResponseBuilder();

  SearchBarResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchBarResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchBarResponse;
  }

  @override
  void update(void Function(SearchBarResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchBarResponse build() {
    _$SearchBarResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchBarResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchBarResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SearchData extends SearchData {
  @override
  final BuiltList<SerarchProducts> products;
  @override
  final BuiltList<SearchBrands> brands;

  factory _$SearchData([void Function(SearchDataBuilder) updates]) =>
      (new SearchDataBuilder()..update(updates)).build();

  _$SearchData._({this.products, this.brands}) : super._();

  @override
  SearchData rebuild(void Function(SearchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchDataBuilder toBuilder() => new SearchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchData &&
        products == other.products &&
        brands == other.brands;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, products.hashCode), brands.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchData')
          ..add('products', products)
          ..add('brands', brands))
        .toString();
  }
}

class SearchDataBuilder implements Builder<SearchData, SearchDataBuilder> {
  _$SearchData _$v;

  ListBuilder<SerarchProducts> _products;
  ListBuilder<SerarchProducts> get products =>
      _$this._products ??= new ListBuilder<SerarchProducts>();
  set products(ListBuilder<SerarchProducts> products) =>
      _$this._products = products;

  ListBuilder<SearchBrands> _brands;
  ListBuilder<SearchBrands> get brands =>
      _$this._brands ??= new ListBuilder<SearchBrands>();
  set brands(ListBuilder<SearchBrands> brands) => _$this._brands = brands;

  SearchDataBuilder();

  SearchDataBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _brands = _$v.brands?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchData;
  }

  @override
  void update(void Function(SearchDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchData build() {
    _$SearchData _$result;
    try {
      _$result = _$v ??
          new _$SearchData._(
              products: _products?.build(), brands: _brands?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
        _$failedField = 'brands';
        _brands?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SearchBrands extends SearchBrands {
  @override
  final String sId;
  @override
  final String name;
  @override
  final String slug;

  factory _$SearchBrands([void Function(SearchBrandsBuilder) updates]) =>
      (new SearchBrandsBuilder()..update(updates)).build();

  _$SearchBrands._({this.sId, this.name, this.slug}) : super._();

  @override
  SearchBrands rebuild(void Function(SearchBrandsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBrandsBuilder toBuilder() => new SearchBrandsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchBrands &&
        sId == other.sId &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sId.hashCode), name.hashCode), slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchBrands')
          ..add('sId', sId)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class SearchBrandsBuilder
    implements Builder<SearchBrands, SearchBrandsBuilder> {
  _$SearchBrands _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  SearchBrandsBuilder();

  SearchBrandsBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _slug = _$v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchBrands other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchBrands;
  }

  @override
  void update(void Function(SearchBrandsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchBrands build() {
    final _$result =
        _$v ?? new _$SearchBrands._(sId: sId, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

class _$SerarchProducts extends SerarchProducts {
  @override
  final String sId;
  @override
  final String name;
  @override
  final String slug;

  factory _$SerarchProducts([void Function(SerarchProductsBuilder) updates]) =>
      (new SerarchProductsBuilder()..update(updates)).build();

  _$SerarchProducts._({this.sId, this.name, this.slug}) : super._();

  @override
  SerarchProducts rebuild(void Function(SerarchProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SerarchProductsBuilder toBuilder() =>
      new SerarchProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SerarchProducts &&
        sId == other.sId &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sId.hashCode), name.hashCode), slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SerarchProducts')
          ..add('sId', sId)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class SerarchProductsBuilder
    implements Builder<SerarchProducts, SerarchProductsBuilder> {
  _$SerarchProducts _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  SerarchProductsBuilder();

  SerarchProductsBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _slug = _$v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SerarchProducts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SerarchProducts;
  }

  @override
  void update(void Function(SerarchProductsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SerarchProducts build() {
    final _$result =
        _$v ?? new _$SerarchProducts._(sId: sId, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
