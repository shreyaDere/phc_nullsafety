// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetAddressResponse> _$getAddressResponseSerializer =
    new _$GetAddressResponseSerializer();

class _$GetAddressResponseSerializer
    implements StructuredSerializer<GetAddressResponse> {
  @override
  final Iterable<Type> types = const [GetAddressResponse, _$GetAddressResponse];
  @override
  final String wireName = 'GetAddressResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GetAddressResponse object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalResponseAddress)])));
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
  GetAddressResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetAddressResponseBuilder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(UniversalResponseAddress)
              ])) as BuiltList<Object>);
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

class _$GetAddressResponse extends GetAddressResponse {
  @override
  final int status;
  @override
  final BuiltList<UniversalResponseAddress> data;
  @override
  final String message;

  factory _$GetAddressResponse(
          [void Function(GetAddressResponseBuilder) updates]) =>
      (new GetAddressResponseBuilder()..update(updates)).build();

  _$GetAddressResponse._({this.status, this.data, this.message}) : super._();

  @override
  GetAddressResponse rebuild(
          void Function(GetAddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAddressResponseBuilder toBuilder() =>
      new GetAddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAddressResponse &&
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
    return (newBuiltValueToStringHelper('GetAddressResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class GetAddressResponseBuilder
    implements Builder<GetAddressResponse, GetAddressResponseBuilder> {
  _$GetAddressResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<UniversalResponseAddress> _data;
  ListBuilder<UniversalResponseAddress> get data =>
      _$this._data ??= new ListBuilder<UniversalResponseAddress>();
  set data(ListBuilder<UniversalResponseAddress> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  GetAddressResponseBuilder();

  GetAddressResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAddressResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetAddressResponse;
  }

  @override
  void update(void Function(GetAddressResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAddressResponse build() {
    _$GetAddressResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAddressResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetAddressResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
