// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_get_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryGetResponse> _$categoryGetResponseSerializer =
    new _$CategoryGetResponseSerializer();
Serializer<CategoryGetRequestData> _$categoryGetRequestDataSerializer =
    new _$CategoryGetRequestDataSerializer();
Serializer<CategoriesData> _$categoriesDataSerializer =
    new _$CategoriesDataSerializer();

class _$CategoryGetResponseSerializer
    implements StructuredSerializer<CategoryGetResponse> {
  @override
  final Iterable<Type> types = const [
    CategoryGetResponse,
    _$CategoryGetResponse
  ];
  @override
  final String wireName = 'CategoryGetResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryGetResponse object,
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
            specifiedType: const FullType(CategoryGetRequestData)));
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
  CategoryGetResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryGetResponseBuilder();

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
                  specifiedType: const FullType(CategoryGetRequestData))
              as CategoryGetRequestData);
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

class _$CategoryGetRequestDataSerializer
    implements StructuredSerializer<CategoryGetRequestData> {
  @override
  final Iterable<Type> types = const [
    CategoryGetRequestData,
    _$CategoryGetRequestData
  ];
  @override
  final String wireName = 'CategoryGetRequestData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryGetRequestData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoriesData)])));
    }
    return result;
  }

  @override
  CategoryGetRequestData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryGetRequestDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoriesData)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesDataSerializer
    implements StructuredSerializer<CategoriesData> {
  @override
  final Iterable<Type> types = const [CategoriesData, _$CategoriesData];
  @override
  final String wireName = 'CategoriesData';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriesData object,
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
  CategoriesData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesDataBuilder();

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

class _$CategoryGetResponse extends CategoryGetResponse {
  @override
  final int status;
  @override
  final CategoryGetRequestData data;
  @override
  final String message;

  factory _$CategoryGetResponse(
          [void Function(CategoryGetResponseBuilder) updates]) =>
      (new CategoryGetResponseBuilder()..update(updates)).build();

  _$CategoryGetResponse._({this.status, this.data, this.message}) : super._();

  @override
  CategoryGetResponse rebuild(
          void Function(CategoryGetResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGetResponseBuilder toBuilder() =>
      new CategoryGetResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGetResponse &&
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
    return (newBuiltValueToStringHelper('CategoryGetResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class CategoryGetResponseBuilder
    implements Builder<CategoryGetResponse, CategoryGetResponseBuilder> {
  _$CategoryGetResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  CategoryGetRequestDataBuilder _data;
  CategoryGetRequestDataBuilder get data =>
      _$this._data ??= new CategoryGetRequestDataBuilder();
  set data(CategoryGetRequestDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CategoryGetResponseBuilder();

  CategoryGetResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGetResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryGetResponse;
  }

  @override
  void update(void Function(CategoryGetResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryGetResponse build() {
    _$CategoryGetResponse _$result;
    try {
      _$result = _$v ??
          new _$CategoryGetResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryGetResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CategoryGetRequestData extends CategoryGetRequestData {
  @override
  final BuiltList<CategoriesData> categories;

  factory _$CategoryGetRequestData(
          [void Function(CategoryGetRequestDataBuilder) updates]) =>
      (new CategoryGetRequestDataBuilder()..update(updates)).build();

  _$CategoryGetRequestData._({this.categories}) : super._();

  @override
  CategoryGetRequestData rebuild(
          void Function(CategoryGetRequestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGetRequestDataBuilder toBuilder() =>
      new CategoryGetRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGetRequestData && categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(0, categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryGetRequestData')
          ..add('categories', categories))
        .toString();
  }
}

class CategoryGetRequestDataBuilder
    implements Builder<CategoryGetRequestData, CategoryGetRequestDataBuilder> {
  _$CategoryGetRequestData _$v;

  ListBuilder<CategoriesData> _categories;
  ListBuilder<CategoriesData> get categories =>
      _$this._categories ??= new ListBuilder<CategoriesData>();
  set categories(ListBuilder<CategoriesData> categories) =>
      _$this._categories = categories;

  CategoryGetRequestDataBuilder();

  CategoryGetRequestDataBuilder get _$this {
    if (_$v != null) {
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGetRequestData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryGetRequestData;
  }

  @override
  void update(void Function(CategoryGetRequestDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryGetRequestData build() {
    _$CategoryGetRequestData _$result;
    try {
      _$result = _$v ??
          new _$CategoryGetRequestData._(categories: _categories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryGetRequestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CategoriesData extends CategoriesData {
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
  final String description;
  @override
  final String featuredImage;
  @override
  final int catId;

  factory _$CategoriesData([void Function(CategoriesDataBuilder) updates]) =>
      (new CategoriesDataBuilder()..update(updates)).build();

  _$CategoriesData._(
      {this.id,
      this.name,
      this.nameAr,
      this.slug,
      this.categoryType,
      this.description,
      this.featuredImage,
      this.catId})
      : super._();

  @override
  CategoriesData rebuild(void Function(CategoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesDataBuilder toBuilder() =>
      new CategoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesData &&
        id == other.id &&
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
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            nameAr.hashCode),
                        slug.hashCode),
                    categoryType.hashCode),
                description.hashCode),
            featuredImage.hashCode),
        catId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesData')
          ..add('id', id)
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

class CategoriesDataBuilder
    implements Builder<CategoriesData, CategoriesDataBuilder> {
  _$CategoriesData _$v;

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

  CategoriesDataBuilder();

  CategoriesDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
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
  void replace(CategoriesData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesData;
  }

  @override
  void update(void Function(CategoriesDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesData build() {
    final _$result = _$v ??
        new _$CategoriesData._(
            id: id,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
