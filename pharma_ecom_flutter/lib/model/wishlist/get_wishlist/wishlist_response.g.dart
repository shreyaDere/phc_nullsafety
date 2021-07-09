// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WishListResponse> _$wishListResponseSerializer =
    new _$WishListResponseSerializer();

class _$WishListResponseSerializer
    implements StructuredSerializer<WishListResponse> {
  @override
  final Iterable<Type> types = const [WishListResponse, _$WishListResponse];
  @override
  final String wireName = 'WishListResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, WishListResponse object,
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
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    return result;
  }

  @override
  WishListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WishListResponseBuilder();

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
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WishListResponse extends WishListResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final BuiltList<UniversalProduct> data;

  factory _$WishListResponse(
          [void Function(WishListResponseBuilder) updates]) =>
      (new WishListResponseBuilder()..update(updates)).build();

  _$WishListResponse._({this.status, this.message, this.data}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('WishListResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('WishListResponse', 'message');
    }
  }

  @override
  WishListResponse rebuild(void Function(WishListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WishListResponseBuilder toBuilder() =>
      new WishListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WishListResponse &&
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
    return (newBuiltValueToStringHelper('WishListResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class WishListResponseBuilder
    implements Builder<WishListResponse, WishListResponseBuilder> {
  _$WishListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<UniversalProduct> _data;
  ListBuilder<UniversalProduct> get data =>
      _$this._data ??= new ListBuilder<UniversalProduct>();
  set data(ListBuilder<UniversalProduct> data) => _$this._data = data;

  WishListResponseBuilder();

  WishListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WishListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WishListResponse;
  }

  @override
  void update(void Function(WishListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WishListResponse build() {
    _$WishListResponse _$result;
    try {
      _$result = _$v ??
          new _$WishListResponse._(
              status: status, message: message, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WishListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
