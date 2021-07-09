// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_gridlist_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductGridlistRequest> _$productGridlistRequestSerializer =
    new _$ProductGridlistRequestSerializer();
Serializer<AttributesFilters> _$attributesFiltersSerializer =
    new _$AttributesFiltersSerializer();
Serializer<TermsAttributesFilters> _$termsAttributesFiltersSerializer =
    new _$TermsAttributesFiltersSerializer();

class _$ProductGridlistRequestSerializer
    implements StructuredSerializer<ProductGridlistRequest> {
  @override
  final Iterable<Type> types = const [
    ProductGridlistRequest,
    _$ProductGridlistRequest
  ];
  @override
  final String wireName = 'ProductGridlistRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductGridlistRequest object,
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
  ProductGridlistRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductGridlistRequestBuilder();

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

class _$AttributesFiltersSerializer
    implements StructuredSerializer<AttributesFilters> {
  @override
  final Iterable<Type> types = const [AttributesFilters, _$AttributesFilters];
  @override
  final String wireName = 'AttributesFilters';

  @override
  Iterable<Object> serialize(Serializers serializers, AttributesFilters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
            specifiedType: const FullType(TermsAttributesFilters)));
    }
    return result;
  }

  @override
  AttributesFilters deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributesFiltersBuilder();

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
        case 'terms':
          result.terms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TermsAttributesFilters))
              as TermsAttributesFilters);
          break;
      }
    }

    return result.build();
  }
}

class _$TermsAttributesFiltersSerializer
    implements StructuredSerializer<TermsAttributesFilters> {
  @override
  final Iterable<Type> types = const [
    TermsAttributesFilters,
    _$TermsAttributesFilters
  ];
  @override
  final String wireName = 'TermsAttributesFilters';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TermsAttributesFilters object,
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
  TermsAttributesFilters deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermsAttributesFiltersBuilder();

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

class _$ProductGridlistRequest extends ProductGridlistRequest {
  @override
  final int pageSize;
  @override
  final int currentPage;
  @override
  final String sort;
  @override
  final BuiltList<int> subcategories;
  @override
  final BuiltList<AttributesFilters> attributes;

  factory _$ProductGridlistRequest(
          [void Function(ProductGridlistRequestBuilder) updates]) =>
      (new ProductGridlistRequestBuilder()..update(updates)).build();

  _$ProductGridlistRequest._(
      {this.pageSize,
      this.currentPage,
      this.sort,
      this.subcategories,
      this.attributes})
      : super._();

  @override
  ProductGridlistRequest rebuild(
          void Function(ProductGridlistRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductGridlistRequestBuilder toBuilder() =>
      new ProductGridlistRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductGridlistRequest &&
        pageSize == other.pageSize &&
        currentPage == other.currentPage &&
        sort == other.sort &&
        subcategories == other.subcategories &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, pageSize.hashCode), currentPage.hashCode),
                sort.hashCode),
            subcategories.hashCode),
        attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductGridlistRequest')
          ..add('pageSize', pageSize)
          ..add('currentPage', currentPage)
          ..add('sort', sort)
          ..add('subcategories', subcategories)
          ..add('attributes', attributes))
        .toString();
  }
}

class ProductGridlistRequestBuilder
    implements Builder<ProductGridlistRequest, ProductGridlistRequestBuilder> {
  _$ProductGridlistRequest _$v;

  int _pageSize;
  int get pageSize => _$this._pageSize;
  set pageSize(int pageSize) => _$this._pageSize = pageSize;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  String _sort;
  String get sort => _$this._sort;
  set sort(String sort) => _$this._sort = sort;

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

  ProductGridlistRequestBuilder();

  ProductGridlistRequestBuilder get _$this {
    if (_$v != null) {
      _pageSize = _$v.pageSize;
      _currentPage = _$v.currentPage;
      _sort = _$v.sort;
      _subcategories = _$v.subcategories?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductGridlistRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductGridlistRequest;
  }

  @override
  void update(void Function(ProductGridlistRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductGridlistRequest build() {
    _$ProductGridlistRequest _$result;
    try {
      _$result = _$v ??
          new _$ProductGridlistRequest._(
              pageSize: pageSize,
              currentPage: currentPage,
              sort: sort,
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
            'ProductGridlistRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AttributesFilters extends AttributesFilters {
  @override
  final String name;
  @override
  final TermsAttributesFilters terms;

  factory _$AttributesFilters(
          [void Function(AttributesFiltersBuilder) updates]) =>
      (new AttributesFiltersBuilder()..update(updates)).build();

  _$AttributesFilters._({this.name, this.terms}) : super._();

  @override
  AttributesFilters rebuild(void Function(AttributesFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributesFiltersBuilder toBuilder() =>
      new AttributesFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributesFilters &&
        name == other.name &&
        terms == other.terms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), terms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttributesFilters')
          ..add('name', name)
          ..add('terms', terms))
        .toString();
  }
}

class AttributesFiltersBuilder
    implements Builder<AttributesFilters, AttributesFiltersBuilder> {
  _$AttributesFilters _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TermsAttributesFiltersBuilder _terms;
  TermsAttributesFiltersBuilder get terms =>
      _$this._terms ??= new TermsAttributesFiltersBuilder();
  set terms(TermsAttributesFiltersBuilder terms) => _$this._terms = terms;

  AttributesFiltersBuilder();

  AttributesFiltersBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _terms = _$v.terms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributesFilters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttributesFilters;
  }

  @override
  void update(void Function(AttributesFiltersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttributesFilters build() {
    _$AttributesFilters _$result;
    try {
      _$result =
          _$v ?? new _$AttributesFilters._(name: name, terms: _terms?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AttributesFilters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TermsAttributesFilters extends TermsAttributesFilters {
  @override
  final String name;

  factory _$TermsAttributesFilters(
          [void Function(TermsAttributesFiltersBuilder) updates]) =>
      (new TermsAttributesFiltersBuilder()..update(updates)).build();

  _$TermsAttributesFilters._({this.name}) : super._();

  @override
  TermsAttributesFilters rebuild(
          void Function(TermsAttributesFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermsAttributesFiltersBuilder toBuilder() =>
      new TermsAttributesFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TermsAttributesFilters && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TermsAttributesFilters')
          ..add('name', name))
        .toString();
  }
}

class TermsAttributesFiltersBuilder
    implements Builder<TermsAttributesFilters, TermsAttributesFiltersBuilder> {
  _$TermsAttributesFilters _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TermsAttributesFiltersBuilder();

  TermsAttributesFiltersBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TermsAttributesFilters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TermsAttributesFilters;
  }

  @override
  void update(void Function(TermsAttributesFiltersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TermsAttributesFilters build() {
    final _$result = _$v ?? new _$TermsAttributesFilters._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
