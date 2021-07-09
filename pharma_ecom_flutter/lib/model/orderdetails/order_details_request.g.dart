// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDetailsRequest> _$orderDetailsRequestSerializer =
    new _$OrderDetailsRequestSerializer();

class _$OrderDetailsRequestSerializer
    implements StructuredSerializer<OrderDetailsRequest> {
  @override
  final Iterable<Type> types = const [
    OrderDetailsRequest,
    _$OrderDetailsRequest
  ];
  @override
  final String wireName = 'OrderDetailsRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderDetailsRequest object,
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
  OrderDetailsRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailsRequestBuilder();

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

class _$OrderDetailsRequest extends OrderDetailsRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$OrderDetailsRequest(
          [void Function(OrderDetailsRequestBuilder) updates]) =>
      (new OrderDetailsRequestBuilder()..update(updates)).build();

  _$OrderDetailsRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('OrderDetailsRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('OrderDetailsRequest', 'password');
    }
  }

  @override
  OrderDetailsRequest rebuild(
          void Function(OrderDetailsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailsRequestBuilder toBuilder() =>
      new OrderDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailsRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailsRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class OrderDetailsRequestBuilder
    implements Builder<OrderDetailsRequest, OrderDetailsRequestBuilder> {
  _$OrderDetailsRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  OrderDetailsRequestBuilder();

  OrderDetailsRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailsRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetailsRequest;
  }

  @override
  void update(void Function(OrderDetailsRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetailsRequest build() {
    final _$result =
        _$v ?? new _$OrderDetailsRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
