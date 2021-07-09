// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilterRequest> _$filterRequestSerializer =
    new _$FilterRequestSerializer();

class _$FilterRequestSerializer implements StructuredSerializer<FilterRequest> {
  @override
  final Iterable<Type> types = const [FilterRequest, _$FilterRequest];
  @override
  final String wireName = 'FilterRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, FilterRequest object,
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
  FilterRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterRequestBuilder();

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

class _$FilterRequest extends FilterRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$FilterRequest([void Function(FilterRequestBuilder) updates]) =>
      (new FilterRequestBuilder()..update(updates)).build();

  _$FilterRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('FilterRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('FilterRequest', 'password');
    }
  }

  @override
  FilterRequest rebuild(void Function(FilterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterRequestBuilder toBuilder() => new FilterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class FilterRequestBuilder
    implements Builder<FilterRequest, FilterRequestBuilder> {
  _$FilterRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  FilterRequestBuilder();

  FilterRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FilterRequest;
  }

  @override
  void update(void Function(FilterRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterRequest build() {
    final _$result =
        _$v ?? new _$FilterRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
