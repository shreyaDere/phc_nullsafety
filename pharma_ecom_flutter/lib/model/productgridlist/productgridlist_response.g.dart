// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productgridlist_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductGridListResponse> _$productGridListResponseSerializer =
    new _$ProductGridListResponseSerializer();
Serializer<ProductGridListData> _$productGridListDataSerializer =
    new _$ProductGridListDataSerializer();
Serializer<Filters> _$filtersSerializer = new _$FiltersSerializer();
Serializer<Subcategories> _$subcategoriesSerializer =
    new _$SubcategoriesSerializer();
Serializer<Attributes> _$attributesSerializer = new _$AttributesSerializer();
Serializer<Terms> _$termsSerializer = new _$TermsSerializer();
Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$ProductGridListResponseSerializer
    implements StructuredSerializer<ProductGridListResponse> {
  @override
  final Iterable<Type> types = const [
    ProductGridListResponse,
    _$ProductGridListResponse
  ];
  @override
  final String wireName = 'ProductGridListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductGridListResponse object,
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
            specifiedType: const FullType(ProductGridListData)));
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
  ProductGridListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductGridListResponseBuilder();

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
                  specifiedType: const FullType(ProductGridListData))
              as ProductGridListData);
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

class _$ProductGridListDataSerializer
    implements StructuredSerializer<ProductGridListData> {
  @override
  final Iterable<Type> types = const [
    ProductGridListData,
    _$ProductGridListData
  ];
  @override
  final String wireName = 'ProductGridListData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductGridListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.total != null) {
      result
        ..add('Total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(double)));
    }
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.filters != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(object.filters,
            specifiedType: const FullType(Filters)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(Category)));
    }
    return result;
  }

  @override
  ProductGridListData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductGridListDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
              specifiedType: const FullType(Filters)) as Filters);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category)) as Category);
          break;
      }
    }

    return result.build();
  }
}

class _$FiltersSerializer implements StructuredSerializer<Filters> {
  @override
  final Iterable<Type> types = const [Filters, _$Filters];
  @override
  final String wireName = 'Filters';

  @override
  Iterable<Object> serialize(Serializers serializers, Filters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.subcategories != null) {
      result
        ..add('subcategories')
        ..add(serializers.serialize(object.subcategories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Subcategories)])));
    }
    if (object.attributes != null) {
      result
        ..add('attributes')
        ..add(serializers.serialize(object.attributes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Attributes)])));
    }
    return result;
  }

  @override
  Filters deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FiltersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'subcategories':
          result.subcategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Subcategories)]))
              as BuiltList<Object>);
          break;
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Attributes)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SubcategoriesSerializer implements StructuredSerializer<Subcategories> {
  @override
  final Iterable<Type> types = const [Subcategories, _$Subcategories];
  @override
  final String wireName = 'Subcategories';

  @override
  Iterable<Object> serialize(Serializers serializers, Subcategories object,
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
    if (object.categoryType != null) {
      result
        ..add('category_type')
        ..add(serializers.serialize(object.categoryType,
            specifiedType: const FullType(int)));
    }
    if (object.parent != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(object.parent,
            specifiedType: const FullType(int)));
    }
    if (object.parentName != null) {
      result
        ..add('parentName')
        ..add(serializers.serialize(object.parentName,
            specifiedType: const FullType(String)));
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
  Subcategories deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubcategoriesBuilder();

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
        case 'category_type':
          result.categoryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parentName':
          result.parentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$AttributesSerializer implements StructuredSerializer<Attributes> {
  @override
  final Iterable<Type> types = const [Attributes, _$Attributes];
  @override
  final String wireName = 'Attributes';

  @override
  Iterable<Object> serialize(Serializers serializers, Attributes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.terms != null) {
      result
        ..add('terms')
        ..add(serializers.serialize(object.terms,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Terms)])));
    }
    return result;
  }

  @override
  Attributes deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttributesBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'terms':
          result.terms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Terms)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TermsSerializer implements StructuredSerializer<Terms> {
  @override
  final Iterable<Type> types = const [Terms, _$Terms];
  @override
  final String wireName = 'Terms';

  @override
  Iterable<Object> serialize(Serializers serializers, Terms object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Terms deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TermsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
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
        ..add('catId')
        ..add(serializers.serialize(object.catId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

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
        case 'catId':
          result.catId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductGridListResponse extends ProductGridListResponse {
  @override
  final int status;
  @override
  final ProductGridListData data;
  @override
  final String message;

  factory _$ProductGridListResponse(
          [void Function(ProductGridListResponseBuilder) updates]) =>
      (new ProductGridListResponseBuilder()..update(updates)).build();

  _$ProductGridListResponse._({this.status, this.data, this.message})
      : super._();

  @override
  ProductGridListResponse rebuild(
          void Function(ProductGridListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductGridListResponseBuilder toBuilder() =>
      new ProductGridListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductGridListResponse &&
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
    return (newBuiltValueToStringHelper('ProductGridListResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class ProductGridListResponseBuilder
    implements
        Builder<ProductGridListResponse, ProductGridListResponseBuilder> {
  _$ProductGridListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ProductGridListDataBuilder _data;
  ProductGridListDataBuilder get data =>
      _$this._data ??= new ProductGridListDataBuilder();
  set data(ProductGridListDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ProductGridListResponseBuilder();

  ProductGridListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductGridListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductGridListResponse;
  }

  @override
  void update(void Function(ProductGridListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductGridListResponse build() {
    _$ProductGridListResponse _$result;
    try {
      _$result = _$v ??
          new _$ProductGridListResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductGridListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductGridListData extends ProductGridListData {
  @override
  final double total;
  @override
  final BuiltList<UniversalProduct> products;
  @override
  final Filters filters;
  @override
  final Category category;

  factory _$ProductGridListData(
          [void Function(ProductGridListDataBuilder) updates]) =>
      (new ProductGridListDataBuilder()..update(updates)).build();

  _$ProductGridListData._(
      {this.total, this.products, this.filters, this.category})
      : super._();

  @override
  ProductGridListData rebuild(
          void Function(ProductGridListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductGridListDataBuilder toBuilder() =>
      new ProductGridListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductGridListData &&
        total == other.total &&
        products == other.products &&
        filters == other.filters &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, total.hashCode), products.hashCode), filters.hashCode),
        category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductGridListData')
          ..add('total', total)
          ..add('products', products)
          ..add('filters', filters)
          ..add('category', category))
        .toString();
  }
}

class ProductGridListDataBuilder
    implements Builder<ProductGridListData, ProductGridListDataBuilder> {
  _$ProductGridListData _$v;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  ListBuilder<UniversalProduct> _products;
  ListBuilder<UniversalProduct> get products =>
      _$this._products ??= new ListBuilder<UniversalProduct>();
  set products(ListBuilder<UniversalProduct> products) =>
      _$this._products = products;

  FiltersBuilder _filters;
  FiltersBuilder get filters => _$this._filters ??= new FiltersBuilder();
  set filters(FiltersBuilder filters) => _$this._filters = filters;

  CategoryBuilder _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder category) => _$this._category = category;

  ProductGridListDataBuilder();

  ProductGridListDataBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _products = _$v.products?.toBuilder();
      _filters = _$v.filters?.toBuilder();
      _category = _$v.category?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductGridListData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductGridListData;
  }

  @override
  void update(void Function(ProductGridListDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductGridListData build() {
    _$ProductGridListData _$result;
    try {
      _$result = _$v ??
          new _$ProductGridListData._(
              total: total,
              products: _products?.build(),
              filters: _filters?.build(),
              category: _category?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductGridListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Filters extends Filters {
  @override
  final BuiltList<Subcategories> subcategories;
  @override
  final BuiltList<Attributes> attributes;

  factory _$Filters([void Function(FiltersBuilder) updates]) =>
      (new FiltersBuilder()..update(updates)).build();

  _$Filters._({this.subcategories, this.attributes}) : super._();

  @override
  Filters rebuild(void Function(FiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FiltersBuilder toBuilder() => new FiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Filters &&
        subcategories == other.subcategories &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, subcategories.hashCode), attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Filters')
          ..add('subcategories', subcategories)
          ..add('attributes', attributes))
        .toString();
  }
}

class FiltersBuilder implements Builder<Filters, FiltersBuilder> {
  _$Filters _$v;

  ListBuilder<Subcategories> _subcategories;
  ListBuilder<Subcategories> get subcategories =>
      _$this._subcategories ??= new ListBuilder<Subcategories>();
  set subcategories(ListBuilder<Subcategories> subcategories) =>
      _$this._subcategories = subcategories;

  ListBuilder<Attributes> _attributes;
  ListBuilder<Attributes> get attributes =>
      _$this._attributes ??= new ListBuilder<Attributes>();
  set attributes(ListBuilder<Attributes> attributes) =>
      _$this._attributes = attributes;

  FiltersBuilder();

  FiltersBuilder get _$this {
    if (_$v != null) {
      _subcategories = _$v.subcategories?.toBuilder();
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Filters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Filters;
  }

  @override
  void update(void Function(FiltersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Filters build() {
    _$Filters _$result;
    try {
      _$result = _$v ??
          new _$Filters._(
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
            'Filters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Subcategories extends Subcategories {
  @override
  final String sId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final int categoryType;
  @override
  final int parent;
  @override
  final String parentName;
  @override
  final String description;
  @override
  final String featuredImage;
  @override
  final int catId;

  factory _$Subcategories([void Function(SubcategoriesBuilder) updates]) =>
      (new SubcategoriesBuilder()..update(updates)).build();

  _$Subcategories._(
      {this.sId,
      this.name,
      this.slug,
      this.categoryType,
      this.parent,
      this.parentName,
      this.description,
      this.featuredImage,
      this.catId})
      : super._();

  @override
  Subcategories rebuild(void Function(SubcategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubcategoriesBuilder toBuilder() => new SubcategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subcategories &&
        sId == other.sId &&
        name == other.name &&
        slug == other.slug &&
        categoryType == other.categoryType &&
        parent == other.parent &&
        parentName == other.parentName &&
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
                        $jc(
                            $jc($jc($jc(0, sId.hashCode), name.hashCode),
                                slug.hashCode),
                            categoryType.hashCode),
                        parent.hashCode),
                    parentName.hashCode),
                description.hashCode),
            featuredImage.hashCode),
        catId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Subcategories')
          ..add('sId', sId)
          ..add('name', name)
          ..add('slug', slug)
          ..add('categoryType', categoryType)
          ..add('parent', parent)
          ..add('parentName', parentName)
          ..add('description', description)
          ..add('featuredImage', featuredImage)
          ..add('catId', catId))
        .toString();
  }
}

class SubcategoriesBuilder
    implements Builder<Subcategories, SubcategoriesBuilder> {
  _$Subcategories _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  int _categoryType;
  int get categoryType => _$this._categoryType;
  set categoryType(int categoryType) => _$this._categoryType = categoryType;

  int _parent;
  int get parent => _$this._parent;
  set parent(int parent) => _$this._parent = parent;

  String _parentName;
  String get parentName => _$this._parentName;
  set parentName(String parentName) => _$this._parentName = parentName;

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

  SubcategoriesBuilder();

  SubcategoriesBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _slug = _$v.slug;
      _categoryType = _$v.categoryType;
      _parent = _$v.parent;
      _parentName = _$v.parentName;
      _description = _$v.description;
      _featuredImage = _$v.featuredImage;
      _catId = _$v.catId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subcategories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Subcategories;
  }

  @override
  void update(void Function(SubcategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Subcategories build() {
    final _$result = _$v ??
        new _$Subcategories._(
            sId: sId,
            name: name,
            slug: slug,
            categoryType: categoryType,
            parent: parent,
            parentName: parentName,
            description: description,
            featuredImage: featuredImage,
            catId: catId);
    replace(_$result);
    return _$result;
  }
}

class _$Attributes extends Attributes {
  @override
  final String name;
  @override
  final String id;
  @override
  final BuiltList<Terms> terms;

  factory _$Attributes([void Function(AttributesBuilder) updates]) =>
      (new AttributesBuilder()..update(updates)).build();

  _$Attributes._({this.name, this.id, this.terms}) : super._();

  @override
  Attributes rebuild(void Function(AttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttributesBuilder toBuilder() => new AttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attributes &&
        name == other.name &&
        id == other.id &&
        terms == other.terms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), id.hashCode), terms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Attributes')
          ..add('name', name)
          ..add('id', id)
          ..add('terms', terms))
        .toString();
  }
}

class AttributesBuilder implements Builder<Attributes, AttributesBuilder> {
  _$Attributes _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<Terms> _terms;
  ListBuilder<Terms> get terms => _$this._terms ??= new ListBuilder<Terms>();
  set terms(ListBuilder<Terms> terms) => _$this._terms = terms;

  AttributesBuilder();

  AttributesBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _id = _$v.id;
      _terms = _$v.terms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attributes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Attributes;
  }

  @override
  void update(void Function(AttributesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Attributes build() {
    _$Attributes _$result;
    try {
      _$result =
          _$v ?? new _$Attributes._(name: name, id: id, terms: _terms?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'terms';
        _terms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Attributes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Terms extends Terms {
  @override
  final String name;
  @override
  final String id;

  factory _$Terms([void Function(TermsBuilder) updates]) =>
      (new TermsBuilder()..update(updates)).build();

  _$Terms._({this.name, this.id}) : super._();

  @override
  Terms rebuild(void Function(TermsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TermsBuilder toBuilder() => new TermsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Terms && name == other.name && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Terms')
          ..add('name', name)
          ..add('id', id))
        .toString();
  }
}

class TermsBuilder implements Builder<Terms, TermsBuilder> {
  _$Terms _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  TermsBuilder();

  TermsBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Terms other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Terms;
  }

  @override
  void update(void Function(TermsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Terms build() {
    final _$result = _$v ?? new _$Terms._(name: name, id: id);
    replace(_$result);
    return _$result;
  }
}

class _$Category extends Category {
  @override
  final String sId;
  @override
  final String name;
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

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._(
      {this.sId,
      this.name,
      this.slug,
      this.categoryType,
      this.description,
      this.featuredImage,
      this.catId})
      : super._();

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        sId == other.sId &&
        name == other.name &&
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
                    $jc($jc($jc(0, sId.hashCode), name.hashCode),
                        slug.hashCode),
                    categoryType.hashCode),
                description.hashCode),
            featuredImage.hashCode),
        catId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('sId', sId)
          ..add('name', name)
          ..add('slug', slug)
          ..add('categoryType', categoryType)
          ..add('description', description)
          ..add('featuredImage', featuredImage)
          ..add('catId', catId))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

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

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
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
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    final _$result = _$v ??
        new _$Category._(
            sId: sId,
            name: name,
            slug: slug,
            categoryType: categoryType,
            description: description,
            featuredImage: featuredImage,
            catId: catId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
