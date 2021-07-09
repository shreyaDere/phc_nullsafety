// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDetailsResponse> _$orderDetailsResponseSerializer =
    new _$OrderDetailsResponseSerializer();

class _$OrderDetailsResponseSerializer
    implements StructuredSerializer<OrderDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    OrderDetailsResponse,
    _$OrderDetailsResponse
  ];
  @override
  final String wireName = 'OrderDetailsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderDetailsResponse object,
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
  OrderDetailsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailsResponseBuilder();

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

class _$OrderDetailsResponse extends OrderDetailsResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$OrderDetailsResponse(
          [void Function(OrderDetailsResponseBuilder) updates]) =>
      (new OrderDetailsResponseBuilder()..update(updates)).build();

  _$OrderDetailsResponse._({this.status, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('OrderDetailsResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('OrderDetailsResponse', 'message');
    }
  }

  @override
  OrderDetailsResponse rebuild(
          void Function(OrderDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailsResponseBuilder toBuilder() =>
      new OrderDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailsResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailsResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class OrderDetailsResponseBuilder
    implements Builder<OrderDetailsResponse, OrderDetailsResponseBuilder> {
  _$OrderDetailsResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OrderDetailsResponseBuilder();

  OrderDetailsResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetailsResponse;
  }

  @override
  void update(void Function(OrderDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetailsResponse build() {
    final _$result =
        _$v ?? new _$OrderDetailsResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
