// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderSummeryRequest> _$orderSummeryRequestSerializer =
    new _$OrderSummeryRequestSerializer();

class _$OrderSummeryRequestSerializer
    implements StructuredSerializer<OrderSummeryRequest> {
  @override
  final Iterable<Type> types = const [
    OrderSummeryRequest,
    _$OrderSummeryRequest
  ];
  @override
  final String wireName = 'OrderSummeryRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderSummeryRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OrderSummeryRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderSummeryRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderSummeryRequest extends OrderSummeryRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$OrderSummeryRequest(
          [void Function(OrderSummeryRequestBuilder) updates]) =>
      (new OrderSummeryRequestBuilder()..update(updates)).build();

  _$OrderSummeryRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('OrderSummeryRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('OrderSummeryRequest', 'password');
    }
  }

  @override
  OrderSummeryRequest rebuild(
          void Function(OrderSummeryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderSummeryRequestBuilder toBuilder() =>
      new OrderSummeryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderSummeryRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderSummeryRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class OrderSummeryRequestBuilder
    implements Builder<OrderSummeryRequest, OrderSummeryRequestBuilder> {
  _$OrderSummeryRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  OrderSummeryRequestBuilder();

  OrderSummeryRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderSummeryRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderSummeryRequest;
  }

  @override
  void update(void Function(OrderSummeryRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderSummeryRequest build() {
    final _$result =
        _$v ?? new _$OrderSummeryRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
