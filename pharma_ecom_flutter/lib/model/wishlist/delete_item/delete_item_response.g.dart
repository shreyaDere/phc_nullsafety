// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeleteItemFromWishListResponse>
    _$deleteItemFromWishListResponseSerializer =
    new _$DeleteItemFromWishListResponseSerializer();
Serializer<DeleteItemData> _$deleteItemDataSerializer =
    new _$DeleteItemDataSerializer();

class _$DeleteItemFromWishListResponseSerializer
    implements StructuredSerializer<DeleteItemFromWishListResponse> {
  @override
  final Iterable<Type> types = const [
    DeleteItemFromWishListResponse,
    _$DeleteItemFromWishListResponse
  ];
  @override
  final String wireName = 'DeleteItemFromWishListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DeleteItemFromWishListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(DeleteItemData)])),
    ];

    return result;
  }

  @override
  DeleteItemFromWishListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeleteItemFromWishListResponseBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeleteItemData)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DeleteItemDataSerializer
    implements StructuredSerializer<DeleteItemData> {
  @override
  final Iterable<Type> types = const [DeleteItemData, _$DeleteItemData];
  @override
  final String wireName = 'DeleteItemData';

  @override
  Iterable<Object> serialize(Serializers serializers, DeleteItemData object,
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
  DeleteItemData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeleteItemDataBuilder();

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

class _$DeleteItemFromWishListResponse extends DeleteItemFromWishListResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final BuiltList<DeleteItemData> data;

  factory _$DeleteItemFromWishListResponse(
          [void Function(DeleteItemFromWishListResponseBuilder) updates]) =>
      (new DeleteItemFromWishListResponseBuilder()..update(updates)).build();

  _$DeleteItemFromWishListResponse._({this.status, this.message, this.data})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'DeleteItemFromWishListResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'DeleteItemFromWishListResponse', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError(
          'DeleteItemFromWishListResponse', 'data');
    }
  }

  @override
  DeleteItemFromWishListResponse rebuild(
          void Function(DeleteItemFromWishListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteItemFromWishListResponseBuilder toBuilder() =>
      new DeleteItemFromWishListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteItemFromWishListResponse &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteItemFromWishListResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class DeleteItemFromWishListResponseBuilder
    implements
        Builder<DeleteItemFromWishListResponse,
            DeleteItemFromWishListResponseBuilder> {
  _$DeleteItemFromWishListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<DeleteItemData> _data;
  ListBuilder<DeleteItemData> get data =>
      _$this._data ??= new ListBuilder<DeleteItemData>();
  set data(ListBuilder<DeleteItemData> data) => _$this._data = data;

  DeleteItemFromWishListResponseBuilder();

  DeleteItemFromWishListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteItemFromWishListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteItemFromWishListResponse;
  }

  @override
  void update(void Function(DeleteItemFromWishListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteItemFromWishListResponse build() {
    _$DeleteItemFromWishListResponse _$result;
    try {
      _$result = _$v ??
          new _$DeleteItemFromWishListResponse._(
              status: status, message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeleteItemFromWishListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteItemData extends DeleteItemData {
  @override
  final String sId;
  @override
  final String productSlug;
  @override
  final String userId;

  factory _$DeleteItemData([void Function(DeleteItemDataBuilder) updates]) =>
      (new DeleteItemDataBuilder()..update(updates)).build();

  _$DeleteItemData._({this.sId, this.productSlug, this.userId}) : super._();

  @override
  DeleteItemData rebuild(void Function(DeleteItemDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteItemDataBuilder toBuilder() =>
      new DeleteItemDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteItemData &&
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
    return (newBuiltValueToStringHelper('DeleteItemData')
          ..add('sId', sId)
          ..add('productSlug', productSlug)
          ..add('userId', userId))
        .toString();
  }
}

class DeleteItemDataBuilder
    implements Builder<DeleteItemData, DeleteItemDataBuilder> {
  _$DeleteItemData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _productSlug;
  String get productSlug => _$this._productSlug;
  set productSlug(String productSlug) => _$this._productSlug = productSlug;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  DeleteItemDataBuilder();

  DeleteItemDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _productSlug = _$v.productSlug;
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteItemData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteItemData;
  }

  @override
  void update(void Function(DeleteItemDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteItemData build() {
    final _$result = _$v ??
        new _$DeleteItemData._(
            sId: sId, productSlug: productSlug, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
