// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelOrderResponse> _$cancelOrderResponseSerializer =
    new _$CancelOrderResponseSerializer();

class _$CancelOrderResponseSerializer
    implements StructuredSerializer<CancelOrderResponse> {
  @override
  final Iterable<Type> types = const [
    CancelOrderResponse,
    _$CancelOrderResponse
  ];
  @override
  final String wireName = 'CancelOrderResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CancelOrderResponse object,
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
  CancelOrderResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelOrderResponseBuilder();

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

class _$CancelOrderResponse extends CancelOrderResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$CancelOrderResponse(
          [void Function(CancelOrderResponseBuilder) updates]) =>
      (new CancelOrderResponseBuilder()..update(updates)).build();

  _$CancelOrderResponse._({this.status, this.message}) : super._();

  @override
  CancelOrderResponse rebuild(
          void Function(CancelOrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelOrderResponseBuilder toBuilder() =>
      new CancelOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelOrderResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancelOrderResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class CancelOrderResponseBuilder
    implements Builder<CancelOrderResponse, CancelOrderResponseBuilder> {
  _$CancelOrderResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CancelOrderResponseBuilder();

  CancelOrderResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelOrderResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancelOrderResponse;
  }

  @override
  void update(void Function(CancelOrderResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancelOrderResponse build() {
    final _$result =
        _$v ?? new _$CancelOrderResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
