// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeleteAddressResponse> _$deleteAddressResponseSerializer =
    new _$DeleteAddressResponseSerializer();

class _$DeleteAddressResponseSerializer
    implements StructuredSerializer<DeleteAddressResponse> {
  @override
  final Iterable<Type> types = const [
    DeleteAddressResponse,
    _$DeleteAddressResponse
  ];
  @override
  final String wireName = 'DeleteAddressResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DeleteAddressResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
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
  DeleteAddressResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeleteAddressResponseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$DeleteAddressResponse extends DeleteAddressResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$DeleteAddressResponse(
          [void Function(DeleteAddressResponseBuilder) updates]) =>
      (new DeleteAddressResponseBuilder()..update(updates)).build();

  _$DeleteAddressResponse._({this.status, this.message}) : super._();

  @override
  DeleteAddressResponse rebuild(
          void Function(DeleteAddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAddressResponseBuilder toBuilder() =>
      new DeleteAddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAddressResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteAddressResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class DeleteAddressResponseBuilder
    implements Builder<DeleteAddressResponse, DeleteAddressResponseBuilder> {
  _$DeleteAddressResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DeleteAddressResponseBuilder();

  DeleteAddressResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAddressResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteAddressResponse;
  }

  @override
  void update(void Function(DeleteAddressResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteAddressResponse build() {
    final _$result =
        _$v ?? new _$DeleteAddressResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
