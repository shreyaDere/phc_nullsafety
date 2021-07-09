// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignupRequest> _$signupRequestSerializer =
    new _$SignupRequestSerializer();

class _$SignupRequestSerializer implements StructuredSerializer<SignupRequest> {
  @override
  final Iterable<Type> types = const [SignupRequest, _$SignupRequest];
  @override
  final String wireName = 'SignupRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SignupRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignupRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignupRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignupRequest extends SignupRequest {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String gender;

  factory _$SignupRequest([void Function(SignupRequestBuilder) updates]) =>
      (new SignupRequestBuilder()..update(updates)).build();

  _$SignupRequest._({this.firstName, this.lastName, this.email, this.gender})
      : super._() {
    if (firstName == null) {
      throw new BuiltValueNullFieldError('SignupRequest', 'firstName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('SignupRequest', 'lastName');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('SignupRequest', 'email');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('SignupRequest', 'gender');
    }
  }

  @override
  SignupRequest rebuild(void Function(SignupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupRequestBuilder toBuilder() => new SignupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupRequest &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, firstName.hashCode), lastName.hashCode), email.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('gender', gender))
        .toString();
  }
}

class SignupRequestBuilder
    implements Builder<SignupRequest, SignupRequestBuilder> {
  _$SignupRequest _$v;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  SignupRequestBuilder();

  SignupRequestBuilder get _$this {
    if (_$v != null) {
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _email = _$v.email;
      _gender = _$v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignupRequest;
  }

  @override
  void update(void Function(SignupRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupRequest build() {
    final _$result = _$v ??
        new _$SignupRequest._(
            firstName: firstName,
            lastName: lastName,
            email: email,
            gender: gender);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
