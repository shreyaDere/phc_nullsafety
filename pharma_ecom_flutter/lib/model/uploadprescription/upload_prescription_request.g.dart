// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_prescription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UploadPrescriptionRequest> _$uploadPrescriptionRequestSerializer =
    new _$UploadPrescriptionRequestSerializer();

class _$UploadPrescriptionRequestSerializer
    implements StructuredSerializer<UploadPrescriptionRequest> {
  @override
  final Iterable<Type> types = const [
    UploadPrescriptionRequest,
    _$UploadPrescriptionRequest
  ];
  @override
  final String wireName = 'UploadPrescriptionRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UploadPrescriptionRequest object,
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
  UploadPrescriptionRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UploadPrescriptionRequestBuilder();

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

class _$UploadPrescriptionRequest extends UploadPrescriptionRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$UploadPrescriptionRequest(
          [void Function(UploadPrescriptionRequestBuilder) updates]) =>
      (new UploadPrescriptionRequestBuilder()..update(updates)).build();

  _$UploadPrescriptionRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('UploadPrescriptionRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError(
          'UploadPrescriptionRequest', 'password');
    }
  }

  @override
  UploadPrescriptionRequest rebuild(
          void Function(UploadPrescriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPrescriptionRequestBuilder toBuilder() =>
      new UploadPrescriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPrescriptionRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadPrescriptionRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class UploadPrescriptionRequestBuilder
    implements
        Builder<UploadPrescriptionRequest, UploadPrescriptionRequestBuilder> {
  _$UploadPrescriptionRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  UploadPrescriptionRequestBuilder();

  UploadPrescriptionRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPrescriptionRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UploadPrescriptionRequest;
  }

  @override
  void update(void Function(UploadPrescriptionRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadPrescriptionRequest build() {
    final _$result = _$v ??
        new _$UploadPrescriptionRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
