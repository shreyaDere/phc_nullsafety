// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignUpResponse> _$signUpResponseSerializer =
    new _$SignUpResponseSerializer();

class _$SignUpResponseSerializer
    implements StructuredSerializer<SignUpResponse> {
  @override
  final Iterable<Type> types = const [SignUpResponse, _$SignUpResponse];
  @override
  final String wireName = 'SignUpResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SignUpResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignUpResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpResponseBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignUpResponse extends SignUpResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$SignUpResponse([void Function(SignUpResponseBuilder) updates]) =>
      (new SignUpResponseBuilder()..update(updates)).build();

  _$SignUpResponse._({this.status, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('SignUpResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('SignUpResponse', 'message');
    }
  }

  @override
  SignUpResponse rebuild(void Function(SignUpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpResponseBuilder toBuilder() =>
      new SignUpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class SignUpResponseBuilder
    implements Builder<SignUpResponse, SignUpResponseBuilder> {
  _$SignUpResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SignUpResponseBuilder();

  SignUpResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUpResponse;
  }

  @override
  void update(void Function(SignUpResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUpResponse build() {
    final _$result =
        _$v ?? new _$SignUpResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
