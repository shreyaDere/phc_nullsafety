// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_email_login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltEmailLoginRequest> _$builtEmailLoginRequestSerializer =
    new _$BuiltEmailLoginRequestSerializer();

class _$BuiltEmailLoginRequestSerializer
    implements StructuredSerializer<BuiltEmailLoginRequest> {
  @override
  final Iterable<Type> types = const [
    BuiltEmailLoginRequest,
    _$BuiltEmailLoginRequest
  ];
  @override
  final String wireName = 'BuiltEmailLoginRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltEmailLoginRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(int)),
      'channel',
      serializers.serialize(object.channel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltEmailLoginRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltEmailLoginRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltEmailLoginRequest extends BuiltEmailLoginRequest {
  @override
  final int phoneNumber;
  @override
  final String channel;

  factory _$BuiltEmailLoginRequest(
          [void Function(BuiltEmailLoginRequestBuilder) updates]) =>
      (new BuiltEmailLoginRequestBuilder()..update(updates)).build();

  _$BuiltEmailLoginRequest._({this.phoneNumber, this.channel}) : super._() {
    if (phoneNumber == null) {
      throw new BuiltValueNullFieldError(
          'BuiltEmailLoginRequest', 'phoneNumber');
    }
    if (channel == null) {
      throw new BuiltValueNullFieldError('BuiltEmailLoginRequest', 'channel');
    }
  }

  @override
  BuiltEmailLoginRequest rebuild(
          void Function(BuiltEmailLoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltEmailLoginRequestBuilder toBuilder() =>
      new BuiltEmailLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltEmailLoginRequest &&
        phoneNumber == other.phoneNumber &&
        channel == other.channel;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, phoneNumber.hashCode), channel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltEmailLoginRequest')
          ..add('phoneNumber', phoneNumber)
          ..add('channel', channel))
        .toString();
  }
}

class BuiltEmailLoginRequestBuilder
    implements Builder<BuiltEmailLoginRequest, BuiltEmailLoginRequestBuilder> {
  _$BuiltEmailLoginRequest _$v;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _channel;
  String get channel => _$this._channel;
  set channel(String channel) => _$this._channel = channel;

  BuiltEmailLoginRequestBuilder();

  BuiltEmailLoginRequestBuilder get _$this {
    if (_$v != null) {
      _phoneNumber = _$v.phoneNumber;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltEmailLoginRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltEmailLoginRequest;
  }

  @override
  void update(void Function(BuiltEmailLoginRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltEmailLoginRequest build() {
    final _$result = _$v ??
        new _$BuiltEmailLoginRequest._(
            phoneNumber: phoneNumber, channel: channel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
