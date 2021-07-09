// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrescriptionRequest> _$prescriptionRequestSerializer =
    new _$PrescriptionRequestSerializer();

class _$PrescriptionRequestSerializer
    implements StructuredSerializer<PrescriptionRequest> {
  @override
  final Iterable<Type> types = const [
    PrescriptionRequest,
    _$PrescriptionRequest
  ];
  @override
  final String wireName = 'PrescriptionRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PrescriptionRequest object,
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
  PrescriptionRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrescriptionRequestBuilder();

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

class _$PrescriptionRequest extends PrescriptionRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$PrescriptionRequest(
          [void Function(PrescriptionRequestBuilder) updates]) =>
      (new PrescriptionRequestBuilder()..update(updates)).build();

  _$PrescriptionRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('PrescriptionRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('PrescriptionRequest', 'password');
    }
  }

  @override
  PrescriptionRequest rebuild(
          void Function(PrescriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrescriptionRequestBuilder toBuilder() =>
      new PrescriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrescriptionRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrescriptionRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class PrescriptionRequestBuilder
    implements Builder<PrescriptionRequest, PrescriptionRequestBuilder> {
  _$PrescriptionRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  PrescriptionRequestBuilder();

  PrescriptionRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrescriptionRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrescriptionRequest;
  }

  @override
  void update(void Function(PrescriptionRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrescriptionRequest build() {
    final _$result =
        _$v ?? new _$PrescriptionRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
