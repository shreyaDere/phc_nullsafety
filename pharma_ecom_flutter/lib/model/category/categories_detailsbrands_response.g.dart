// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_detailsbrands_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriesDetailsBrandsResponse>
    _$categoriesDetailsBrandsResponseSerializer =
    new _$CategoriesDetailsBrandsResponseSerializer();
Serializer<DataCategoriesDetailsBrandsResponse>
    _$dataCategoriesDetailsBrandsResponseSerializer =
    new _$DataCategoriesDetailsBrandsResponseSerializer();
Serializer<CategoriesListInDetailsResponse>
    _$categoriesListInDetailsResponseSerializer =
    new _$CategoriesListInDetailsResponseSerializer();
Serializer<BrandsListInDetailsResponse>
    _$brandsListInDetailsResponseSerializer =
    new _$BrandsListInDetailsResponseSerializer();

class _$CategoriesDetailsBrandsResponseSerializer
    implements StructuredSerializer<CategoriesDetailsBrandsResponse> {
  @override
  final Iterable<Type> types = const [
    CategoriesDetailsBrandsResponse,
    _$CategoriesDetailsBrandsResponse
  ];
  @override
  final String wireName = 'CategoriesDetailsBrandsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoriesDetailsBrandsResponse object,
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
            specifiedType:
                const FullType(DataCategoriesDetailsBrandsResponse)));
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
  CategoriesDetailsBrandsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesDetailsBrandsResponseBuilder();

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
                  specifiedType:
                      const FullType(DataCategoriesDetailsBrandsResponse))
              as DataCategoriesDetailsBrandsResponse);
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

class _$DataCategoriesDetailsBrandsResponseSerializer
    implements StructuredSerializer<DataCategoriesDetailsBrandsResponse> {
  @override
  final Iterable<Type> types = const [
    DataCategoriesDetailsBrandsResponse,
    _$DataCategoriesDetailsBrandsResponse
  ];
  @override
  final String wireName = 'DataCategoriesDetailsBrandsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataCategoriesDetailsBrandsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType: const FullType(BuiltList,
                const [const FullType(CategoriesListInDetailsResponse)])));
    }
    if (object.brands != null) {
      result
        ..add('Brands')
        ..add(serializers.serialize(object.brands,
            specifiedType: const FullType(BuiltList,
                const [const FullType(BrandsListInDetailsResponse)])));
    }
    return result;
  }

  @override
  DataCategoriesDetailsBrandsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataCategoriesDetailsBrandsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CategoriesListInDetailsResponse)
              ])) as BuiltList<Object>);
          break;
        case 'Brands':
          result.brands.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BrandsListInDetailsResponse)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesListInDetailsResponseSerializer
    implements StructuredSerializer<CategoriesListInDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    CategoriesListInDetailsResponse,
    _$CategoriesListInDetailsResponse
  ];
  @override
  final String wireName = 'CategoriesListInDetailsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoriesListInDetailsResponse object,
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
        ..add('parent_name')
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
  CategoriesListInDetailsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesListInDetailsResponseBuilder();

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
        case 'category_type':
          result.categoryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parent_name':
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

class _$BrandsListInDetailsResponseSerializer
    implements StructuredSerializer<BrandsListInDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    BrandsListInDetailsResponse,
    _$BrandsListInDetailsResponse
  ];
  @override
  final String wireName = 'BrandsListInDetailsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BrandsListInDetailsResponse object,
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
    if (object.brandCoverPic != null) {
      result
        ..add('Brand_cover_pic')
        ..add(serializers.serialize(object.brandCoverPic,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BrandsListInDetailsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandsListInDetailsResponseBuilder();

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
        case 'Brand_cover_pic':
          result.brandCoverPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesDetailsBrandsResponse
    extends CategoriesDetailsBrandsResponse {
  @override
  final int status;
  @override
  final DataCategoriesDetailsBrandsResponse data;
  @override
  final String message;

  factory _$CategoriesDetailsBrandsResponse(
          [void Function(CategoriesDetailsBrandsResponseBuilder) updates]) =>
      (new CategoriesDetailsBrandsResponseBuilder()..update(updates)).build();

  _$CategoriesDetailsBrandsResponse._({this.status, this.data, this.message})
      : super._();

  @override
  CategoriesDetailsBrandsResponse rebuild(
          void Function(CategoriesDetailsBrandsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesDetailsBrandsResponseBuilder toBuilder() =>
      new CategoriesDetailsBrandsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesDetailsBrandsResponse &&
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
    return (newBuiltValueToStringHelper('CategoriesDetailsBrandsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class CategoriesDetailsBrandsResponseBuilder
    implements
        Builder<CategoriesDetailsBrandsResponse,
            CategoriesDetailsBrandsResponseBuilder> {
  _$CategoriesDetailsBrandsResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataCategoriesDetailsBrandsResponseBuilder _data;
  DataCategoriesDetailsBrandsResponseBuilder get data =>
      _$this._data ??= new DataCategoriesDetailsBrandsResponseBuilder();
  set data(DataCategoriesDetailsBrandsResponseBuilder data) =>
      _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CategoriesDetailsBrandsResponseBuilder();

  CategoriesDetailsBrandsResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesDetailsBrandsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesDetailsBrandsResponse;
  }

  @override
  void update(void Function(CategoriesDetailsBrandsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesDetailsBrandsResponse build() {
    _$CategoriesDetailsBrandsResponse _$result;
    try {
      _$result = _$v ??
          new _$CategoriesDetailsBrandsResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoriesDetailsBrandsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataCategoriesDetailsBrandsResponse
    extends DataCategoriesDetailsBrandsResponse {
  @override
  final BuiltList<CategoriesListInDetailsResponse> categories;
  @override
  final BuiltList<BrandsListInDetailsResponse> brands;

  factory _$DataCategoriesDetailsBrandsResponse(
          [void Function(DataCategoriesDetailsBrandsResponseBuilder)
              updates]) =>
      (new DataCategoriesDetailsBrandsResponseBuilder()..update(updates))
          .build();

  _$DataCategoriesDetailsBrandsResponse._({this.categories, this.brands})
      : super._();

  @override
  DataCategoriesDetailsBrandsResponse rebuild(
          void Function(DataCategoriesDetailsBrandsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataCategoriesDetailsBrandsResponseBuilder toBuilder() =>
      new DataCategoriesDetailsBrandsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataCategoriesDetailsBrandsResponse &&
        categories == other.categories &&
        brands == other.brands;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, categories.hashCode), brands.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataCategoriesDetailsBrandsResponse')
          ..add('categories', categories)
          ..add('brands', brands))
        .toString();
  }
}

class DataCategoriesDetailsBrandsResponseBuilder
    implements
        Builder<DataCategoriesDetailsBrandsResponse,
            DataCategoriesDetailsBrandsResponseBuilder> {
  _$DataCategoriesDetailsBrandsResponse _$v;

  ListBuilder<CategoriesListInDetailsResponse> _categories;
  ListBuilder<CategoriesListInDetailsResponse> get categories =>
      _$this._categories ??= new ListBuilder<CategoriesListInDetailsResponse>();
  set categories(ListBuilder<CategoriesListInDetailsResponse> categories) =>
      _$this._categories = categories;

  ListBuilder<BrandsListInDetailsResponse> _brands;
  ListBuilder<BrandsListInDetailsResponse> get brands =>
      _$this._brands ??= new ListBuilder<BrandsListInDetailsResponse>();
  set brands(ListBuilder<BrandsListInDetailsResponse> brands) =>
      _$this._brands = brands;

  DataCategoriesDetailsBrandsResponseBuilder();

  DataCategoriesDetailsBrandsResponseBuilder get _$this {
    if (_$v != null) {
      _categories = _$v.categories?.toBuilder();
      _brands = _$v.brands?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataCategoriesDetailsBrandsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataCategoriesDetailsBrandsResponse;
  }

  @override
  void update(
      void Function(DataCategoriesDetailsBrandsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataCategoriesDetailsBrandsResponse build() {
    _$DataCategoriesDetailsBrandsResponse _$result;
    try {
      _$result = _$v ??
          new _$DataCategoriesDetailsBrandsResponse._(
              categories: _categories?.build(), brands: _brands?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'brands';
        _brands?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataCategoriesDetailsBrandsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CategoriesListInDetailsResponse
    extends CategoriesListInDetailsResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;
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

  factory _$CategoriesListInDetailsResponse(
          [void Function(CategoriesListInDetailsResponseBuilder) updates]) =>
      (new CategoriesListInDetailsResponseBuilder()..update(updates)).build();

  _$CategoriesListInDetailsResponse._(
      {this.id,
      this.name,
      this.nameAr,
      this.slug,
      this.categoryType,
      this.parent,
      this.parentName,
      this.description,
      this.featuredImage,
      this.catId})
      : super._();

  @override
  CategoriesListInDetailsResponse rebuild(
          void Function(CategoriesListInDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesListInDetailsResponseBuilder toBuilder() =>
      new CategoriesListInDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesListInDetailsResponse &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr &&
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
                            $jc(
                                $jc($jc($jc(0, id.hashCode), name.hashCode),
                                    nameAr.hashCode),
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
    return (newBuiltValueToStringHelper('CategoriesListInDetailsResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr)
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

class CategoriesListInDetailsResponseBuilder
    implements
        Builder<CategoriesListInDetailsResponse,
            CategoriesListInDetailsResponseBuilder> {
  _$CategoriesListInDetailsResponse _$v;

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

  CategoriesListInDetailsResponseBuilder();

  CategoriesListInDetailsResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
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
  void replace(CategoriesListInDetailsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesListInDetailsResponse;
  }

  @override
  void update(void Function(CategoriesListInDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesListInDetailsResponse build() {
    final _$result = _$v ??
        new _$CategoriesListInDetailsResponse._(
            id: id,
            name: name,
            nameAr: nameAr,
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

class _$BrandsListInDetailsResponse extends BrandsListInDetailsResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String nameAr;
  @override
  final String brandCoverPic;

  factory _$BrandsListInDetailsResponse(
          [void Function(BrandsListInDetailsResponseBuilder) updates]) =>
      (new BrandsListInDetailsResponseBuilder()..update(updates)).build();

  _$BrandsListInDetailsResponse._(
      {this.id, this.name, this.nameAr, this.brandCoverPic})
      : super._();

  @override
  BrandsListInDetailsResponse rebuild(
          void Function(BrandsListInDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandsListInDetailsResponseBuilder toBuilder() =>
      new BrandsListInDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandsListInDetailsResponse &&
        id == other.id &&
        name == other.name &&
        nameAr == other.nameAr &&
        brandCoverPic == other.brandCoverPic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), nameAr.hashCode),
        brandCoverPic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandsListInDetailsResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('nameAr', nameAr)
          ..add('brandCoverPic', brandCoverPic))
        .toString();
  }
}

class BrandsListInDetailsResponseBuilder
    implements
        Builder<BrandsListInDetailsResponse,
            BrandsListInDetailsResponseBuilder> {
  _$BrandsListInDetailsResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _brandCoverPic;
  String get brandCoverPic => _$this._brandCoverPic;
  set brandCoverPic(String brandCoverPic) =>
      _$this._brandCoverPic = brandCoverPic;

  BrandsListInDetailsResponseBuilder();

  BrandsListInDetailsResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _nameAr = _$v.nameAr;
      _brandCoverPic = _$v.brandCoverPic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandsListInDetailsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandsListInDetailsResponse;
  }

  @override
  void update(void Function(BrandsListInDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandsListInDetailsResponse build() {
    final _$result = _$v ??
        new _$BrandsListInDetailsResponse._(
            id: id, name: name, nameAr: nameAr, brandCoverPic: brandCoverPic);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
