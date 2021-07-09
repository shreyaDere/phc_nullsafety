// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelectAddressRequest> _$selectAddressRequestSerializer =
    new _$SelectAddressRequestSerializer();

class _$SelectAddressRequestSerializer
    implements StructuredSerializer<SelectAddressRequest> {
  @override
  final Iterable<Type> types = const [
    SelectAddressRequest,
    _$SelectAddressRequest
  ];
  @override
  final String wireName = 'SelectAddressRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SelectAddressRequest object,
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
  SelectAddressRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectAddressRequestBuilder();

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

class _$SelectAddressRequest extends SelectAddressRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$SelectAddressRequest(
          [void Function(SelectAddressRequestBuilder) updates]) =>
      (new SelectAddressRequestBuilder()..update(updates)).build();

  _$SelectAddressRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('SelectAddressRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('SelectAddressRequest', 'password');
    }
  }

  @override
  SelectAddressRequest rebuild(
          void Function(SelectAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectAddressRequestBuilder toBuilder() =>
      new SelectAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectAddressRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectAddressRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class SelectAddressRequestBuilder
    implements Builder<SelectAddressRequest, SelectAddressRequestBuilder> {
  _$SelectAddressRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  SelectAddressRequestBuilder();

  SelectAddressRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectAddressRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SelectAddressRequest;
  }

  @override
  void update(void Function(SelectAddressRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectAddressRequest build() {
    final _$result =
        _$v ?? new _$SelectAddressRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
