// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserStatusResponse> _$userStatusResponseSerializer =
    new _$UserStatusResponseSerializer();

class _$UserStatusResponseSerializer
    implements StructuredSerializer<UserStatusResponse> {
  @override
  final Iterable<Type> types = const [UserStatusResponse, _$UserStatusResponse];
  @override
  final String wireName = 'UserStatusResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, UserStatusResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserStatusResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStatusResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserStatusResponse extends UserStatusResponse {
  @override
  final int status;
  @override
  final bool active;
  @override
  final String message;

  factory _$UserStatusResponse(
          [void Function(UserStatusResponseBuilder) updates]) =>
      (new UserStatusResponseBuilder()..update(updates)).build();

  _$UserStatusResponse._({this.status, this.active, this.message}) : super._();

  @override
  UserStatusResponse rebuild(
          void Function(UserStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStatusResponseBuilder toBuilder() =>
      new UserStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStatusResponse &&
        status == other.status &&
        active == other.active &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), active.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserStatusResponse')
          ..add('status', status)
          ..add('active', active)
          ..add('message', message))
        .toString();
  }
}

class UserStatusResponseBuilder
    implements Builder<UserStatusResponse, UserStatusResponseBuilder> {
  _$UserStatusResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserStatusResponseBuilder();

  UserStatusResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _active = _$v.active;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStatusResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserStatusResponse;
  }

  @override
  void update(void Function(UserStatusResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserStatusResponse build() {
    final _$result = _$v ??
        new _$UserStatusResponse._(
            status: status, active: active, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
