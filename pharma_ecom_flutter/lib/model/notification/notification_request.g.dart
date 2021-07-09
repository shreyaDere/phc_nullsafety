// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationRequest> _$notificationRequestSerializer =
    new _$NotificationRequestSerializer();

class _$NotificationRequestSerializer
    implements StructuredSerializer<NotificationRequest> {
  @override
  final Iterable<Type> types = const [
    NotificationRequest,
    _$NotificationRequest
  ];
  @override
  final String wireName = 'NotificationRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationRequest object,
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
  NotificationRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationRequestBuilder();

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

class _$NotificationRequest extends NotificationRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$NotificationRequest(
          [void Function(NotificationRequestBuilder) updates]) =>
      (new NotificationRequestBuilder()..update(updates)).build();

  _$NotificationRequest._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('NotificationRequest', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('NotificationRequest', 'password');
    }
  }

  @override
  NotificationRequest rebuild(
          void Function(NotificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRequestBuilder toBuilder() =>
      new NotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class NotificationRequestBuilder
    implements Builder<NotificationRequest, NotificationRequestBuilder> {
  _$NotificationRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  NotificationRequestBuilder();

  NotificationRequestBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationRequest;
  }

  @override
  void update(void Function(NotificationRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationRequest build() {
    final _$result =
        _$v ?? new _$NotificationRequest._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
