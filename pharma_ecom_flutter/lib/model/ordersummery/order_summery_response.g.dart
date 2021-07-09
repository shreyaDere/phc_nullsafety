// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summery_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderSummeryResponse> _$orderSummeryResponseSerializer =
    new _$OrderSummeryResponseSerializer();

class _$OrderSummeryResponseSerializer
    implements StructuredSerializer<OrderSummeryResponse> {
  @override
  final Iterable<Type> types = const [
    OrderSummeryResponse,
    _$OrderSummeryResponse
  ];
  @override
  final String wireName = 'OrderSummeryResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderSummeryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OrderSummeryResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderSummeryResponseBuilder();

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

class _$OrderSummeryResponse extends OrderSummeryResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$OrderSummeryResponse(
          [void Function(OrderSummeryResponseBuilder) updates]) =>
      (new OrderSummeryResponseBuilder()..update(updates)).build();

  _$OrderSummeryResponse._({this.status, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('OrderSummeryResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('OrderSummeryResponse', 'message');
    }
  }

  @override
  OrderSummeryResponse rebuild(
          void Function(OrderSummeryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderSummeryResponseBuilder toBuilder() =>
      new OrderSummeryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderSummeryResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderSummeryResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class OrderSummeryResponseBuilder
    implements Builder<OrderSummeryResponse, OrderSummeryResponseBuilder> {
  _$OrderSummeryResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OrderSummeryResponseBuilder();

  OrderSummeryResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderSummeryResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderSummeryResponse;
  }

  @override
  void update(void Function(OrderSummeryResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderSummeryResponse build() {
    final _$result =
        _$v ?? new _$OrderSummeryResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
