// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_without_bnav_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryWithoutBnavRequest> _$categoryWithoutBnavRequestSerializer =
    new _$CategoryWithoutBnavRequestSerializer();

class _$CategoryWithoutBnavRequestSerializer
    implements StructuredSerializer<CategoryWithoutBnavRequest> {
  @override
  final Iterable<Type> types = const [
    CategoryWithoutBnavRequest,
    _$CategoryWithoutBnavRequest
  ];
  @override
  final String wireName = 'CategoryWithoutBnavRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryWithoutBnavRequest object,
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
  CategoryWithoutBnavRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryWithoutBnavRequestBuilder();

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

class _$CategoryWithoutBnavRequest extends CategoryWithoutBnavRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$CategoryWithoutBnavRequest(
          [void Function(CategoryWithoutBnavRequestBuilder) updates]) =>
      (new CategoryWithoutBnavRequestBuilder()..update(updates)).build();

  _$CategoryWithoutBnavRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('CategoryWithoutBnavRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError(
          'CategoryWithoutBnavRequest', 'password');
    }
  }

  @override
  CategoryWithoutBnavRequest rebuild(
          void Function(CategoryWithoutBnavRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryWithoutBnavRequestBuilder toBuilder() =>
      new CategoryWithoutBnavRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryWithoutBnavRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryWithoutBnavRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class CategoryWithoutBnavRequestBuilder
    implements
        Builder<CategoryWithoutBnavRequest, CategoryWithoutBnavRequestBuilder> {
  _$CategoryWithoutBnavRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  CategoryWithoutBnavRequestBuilder();

  CategoryWithoutBnavRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryWithoutBnavRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryWithoutBnavRequest;
  }

  @override
  void update(void Function(CategoryWithoutBnavRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryWithoutBnavRequest build() {
    final _$result = _$v ??
        new _$CategoryWithoutBnavRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
