// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandsRequest> _$brandsRequestSerializer =
    new _$BrandsRequestSerializer();

class _$BrandsRequestSerializer implements StructuredSerializer<BrandsRequest> {
  @override
  final Iterable<Type> types = const [BrandsRequest, _$BrandsRequest];
  @override
  final String wireName = 'BrandsRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pageSize != null) {
      result
        ..add('pageSize')
        ..add(serializers.serialize(object.pageSize,
            specifiedType: const FullType(int)));
    }
    if (object.currentPage != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(object.currentPage,
            specifiedType: const FullType(int)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(String)));
    }
    if (object.brandName != null) {
      result
        ..add('brandName')
        ..add(serializers.serialize(object.brandName,
            specifiedType: const FullType(String)));
    }
    if (object.categorySlug != null) {
      result
        ..add('categorySlug')
        ..add(serializers.serialize(object.categorySlug,
            specifiedType: const FullType(String)));
    }
    if (object.subcategories != null) {
      result
        ..add('subcategories')
        ..add(serializers.serialize(object.subcategories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AttributesFilters)])));
    }
    return result;
  }

  @override
  BrandsRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'brandName':
          result.brandName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categorySlug':
          result.categorySlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subcategories':
          result.subcategories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttributesFilters)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BrandsRequest extends BrandsRequest {
  @override
  final int pageSize;
  @override
  final int currentPage;
  @override
  final String sort;
  @override
  final String brandName;
  @override
  final String categorySlug;
  @override
  final BuiltList<int> subcategories;
  @override
  final BuiltList<AttributesFilters> attributes;

  factory _$BrandsRequest([void Function(BrandsRequestBuilder) updates]) =>
      (new BrandsRequestBuilder()..update(updates)).build();

  _$BrandsRequest._(
      {this.pageSize,
      this.currentPage,
      this.sort,
      this.brandName,
      this.categorySlug,
      this.subcategories,
      this.attributes})
      : super._();

  @override
  BrandsRequest rebuild(void Function(BrandsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandsRequestBuilder toBuilder() => new BrandsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandsRequest &&
        pageSize == other.pageSize &&
        currentPage == other.currentPage &&
        sort == other.sort &&
        brandName == other.brandName &&
        categorySlug == other.categorySlug &&
        subcategories == other.subcategories &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, pageSize.hashCode), currentPage.hashCode),
                        sort.hashCode),
                    brandName.hashCode),
                categorySlug.hashCode),
            subcategories.hashCode),
        attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandsRequest')
          ..add('pageSize', pageSize)
          ..add('currentPage', currentPage)
          ..add('sort', sort)
          ..add('brandName', brandName)
          ..add('categorySlug', categorySlug)
          ..add('subcategories', subcategories)
          ..add('attributes', attributes))
        .toString();
  }
}

class BrandsRequestBuilder
    implements Builder<BrandsRequest, BrandsRequestBuilder> {
  _$BrandsRequest _$v;

  int _pageSize;
  int get pageSize => _$this._pageSize;
  set pageSize(int pageSize) => _$this._pageSize = pageSize;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  String _sort;
  String get sort => _$this._sort;
  set sort(String sort) => _$this._sort = sort;

  String _brandName;
  String get brandName => _$this._brandName;
  set brandName(String brandName) => _$this._brandName = brandName;

  String _categorySlug;
  String get categorySlug => _$this._categorySlug;
  set categorySlug(String categorySlug) => _$this._categorySlug = categorySlug;

  ListBuilder<int> _subcategories;
  ListBuilder<int> get subcategories =>
      _$this._subcategories ??= new ListBuilder<int>();
  set subcategories(ListBuilder<int> subcategories) =>
      _$this._subcategories = subcategories;

  ListBuilder<AttributesFilters> _attributes;
  ListBuilder<AttributesFilters> get attributes =>
      _$this._attributes ??= new ListBuilder<AttributesFilters>();
  set attributes(ListBuilder<AttributesFilters> attributes) =>
      _$this._attributes = attributes;

  BrandsRequestBuilder();

  BrandsRequestBuilder get _$this {
    if (_$v != null) {
      _pageSize = _$v.pageSize;
      _currentPage = _$v.currentPage;
      _sort = _$v.sort;
      _brandName = _$v.brandName;
      _categorySlug = _$v.categorySlug;
      _subcategories = _$v.subcategories?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandsRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandsRequest;
  }

  @override
  void update(void Function(BrandsRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandsRequest build() {
    _$BrandsRequest _$result;
    try {
      _$result = _$v ??
          new _$BrandsRequest._(
              pageSize: pageSize,
              currentPage: currentPage,
              sort: sort,
              brandName: brandName,
              categorySlug: categorySlug,
              subcategories: _subcategories?.build(),
              attributes: _attributes?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subcategories';
        _subcategories?.build();
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BrandsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
