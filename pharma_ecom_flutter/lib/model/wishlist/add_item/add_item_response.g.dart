// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddItemResponse> _$addItemResponseSerializer =
    new _$AddItemResponseSerializer();
Serializer<AddItemData> _$addItemDataSerializer = new _$AddItemDataSerializer();

class _$AddItemResponseSerializer
    implements StructuredSerializer<AddItemResponse> {
  @override
  final Iterable<Type> types = const [AddItemResponse, _$AddItemResponse];
  @override
  final String wireName = 'AddItemResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AddItemResponse object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(AddItemData)])));
    }
    return result;
  }

  @override
  AddItemResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddItemResponseBuilder();

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
                      BuiltList, const [const FullType(AddItemData)]))
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

class _$AddItemDataSerializer implements StructuredSerializer<AddItemData> {
  @override
  final Iterable<Type> types = const [AddItemData, _$AddItemData];
  @override
  final String wireName = 'AddItemData';

  @override
  Iterable<Object> serialize(Serializers serializers, AddItemData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.productSlug != null) {
      result
        ..add('product_slug')
        ..add(serializers.serialize(object.productSlug,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddItemData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddItemDataBuilder();

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
        case 'product_slug':
          result.productSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddItemResponse extends AddItemResponse {
  @override
  final int status;
  @override
  final BuiltList<AddItemData> data;
  @override
  final String message;

  factory _$AddItemResponse([void Function(AddItemResponseBuilder) updates]) =>
      (new AddItemResponseBuilder()..update(updates)).build();

  _$AddItemResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('AddItemResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('AddItemResponse', 'message');
    }
  }

  @override
  AddItemResponse rebuild(void Function(AddItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemResponseBuilder toBuilder() =>
      new AddItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemResponse &&
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
    return (newBuiltValueToStringHelper('AddItemResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class AddItemResponseBuilder
    implements Builder<AddItemResponse, AddItemResponseBuilder> {
  _$AddItemResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<AddItemData> _data;
  ListBuilder<AddItemData> get data =>
      _$this._data ??= new ListBuilder<AddItemData>();
  set data(ListBuilder<AddItemData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  AddItemResponseBuilder();

  AddItemResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddItemResponse;
  }

  @override
  void update(void Function(AddItemResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItemResponse build() {
    _$AddItemResponse _$result;
    try {
      _$result = _$v ??
          new _$AddItemResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddItemData extends AddItemData {
  @override
  final String sId;
  @override
  final String productSlug;
  @override
  final String userId;

  factory _$AddItemData([void Function(AddItemDataBuilder) updates]) =>
      (new AddItemDataBuilder()..update(updates)).build();

  _$AddItemData._({this.sId, this.productSlug, this.userId}) : super._();

  @override
  AddItemData rebuild(void Function(AddItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddItemDataBuilder toBuilder() => new AddItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddItemData &&
        sId == other.sId &&
        productSlug == other.productSlug &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, sId.hashCode), productSlug.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddItemData')
          ..add('sId', sId)
          ..add('productSlug', productSlug)
          ..add('userId', userId))
        .toString();
  }
}

class AddItemDataBuilder implements Builder<AddItemData, AddItemDataBuilder> {
  _$AddItemData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _productSlug;
  String get productSlug => _$this._productSlug;
  set productSlug(String productSlug) => _$this._productSlug = productSlug;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  AddItemDataBuilder();

  AddItemDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _productSlug = _$v.productSlug;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddItemData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddItemData;
  }

  @override
  void update(void Function(AddItemDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddItemData build() {
    final _$result = _$v ??
        new _$AddItemData._(sId: sId, productSlug: productSlug, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
