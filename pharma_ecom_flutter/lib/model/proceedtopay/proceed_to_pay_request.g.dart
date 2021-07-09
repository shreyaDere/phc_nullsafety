// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proceed_to_pay_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProceedToPayRequest> _$proceedToPayRequestSerializer =
    new _$ProceedToPayRequestSerializer();

class _$ProceedToPayRequestSerializer
    implements StructuredSerializer<ProceedToPayRequest> {
  @override
  final Iterable<Type> types = const [
    ProceedToPayRequest,
    _$ProceedToPayRequest
  ];
  @override
  final String wireName = 'ProceedToPayRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProceedToPayRequest object,
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
  ProceedToPayRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProceedToPayRequestBuilder();

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

class _$ProceedToPayRequest extends ProceedToPayRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$ProceedToPayRequest(
          [void Function(ProceedToPayRequestBuilder) updates]) =>
      (new ProceedToPayRequestBuilder()..update(updates)).build();

  _$ProceedToPayRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('ProceedToPayRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('ProceedToPayRequest', 'password');
    }
  }

  @override
  ProceedToPayRequest rebuild(
          void Function(ProceedToPayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProceedToPayRequestBuilder toBuilder() =>
      new ProceedToPayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProceedToPayRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProceedToPayRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class ProceedToPayRequestBuilder
    implements Builder<ProceedToPayRequest, ProceedToPayRequestBuilder> {
  _$ProceedToPayRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  ProceedToPayRequestBuilder();

  ProceedToPayRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProceedToPayRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProceedToPayRequest;
  }

  @override
  void update(void Function(ProceedToPayRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProceedToPayRequest build() {
    final _$result =
        _$v ?? new _$ProceedToPayRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
