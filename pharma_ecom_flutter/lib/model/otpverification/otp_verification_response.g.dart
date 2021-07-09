// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OtpVerificationResponse> _$otpVerificationResponseSerializer =
    new _$OtpVerificationResponseSerializer();
Serializer<OtpResponseData> _$otpResponseDataSerializer =
    new _$OtpResponseDataSerializer();

class _$OtpVerificationResponseSerializer
    implements StructuredSerializer<OtpVerificationResponse> {
  @override
  final Iterable<Type> types = const [
    OtpVerificationResponse,
    _$OtpVerificationResponse
  ];
  @override
  final String wireName = 'OtpVerificationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OtpVerificationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(OtpResponseData)));
    }
    if (object.userStatus != null) {
      result
        ..add('userStatus')
        ..add(serializers.serialize(object.userStatus,
            specifiedType: const FullType(int)));
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
  OtpVerificationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtpVerificationResponseBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OtpResponseData))
              as OtpResponseData);
          break;
        case 'userStatus':
          result.userStatus = serializers.deserialize(value,
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

class _$OtpResponseDataSerializer
    implements StructuredSerializer<OtpResponseData> {
  @override
  final Iterable<Type> types = const [OtpResponseData, _$OtpResponseData];
  @override
  final String wireName = 'OtpResponseData';

  @override
  Iterable<Object> serialize(Serializers serializers, OtpResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(String)));
    }
    if (object.channel != null) {
      result
        ..add('channel')
        ..add(serializers.serialize(object.channel,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.valid != null) {
      result
        ..add('valid')
        ..add(serializers.serialize(object.valid,
            specifiedType: const FullType(bool)));
    }
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.dateUpdated != null) {
      result
        ..add('dateUpdated')
        ..add(serializers.serialize(object.dateUpdated,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OtpResponseData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtpResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valid':
          result.valid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateUpdated':
          result.dateUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OtpVerificationResponse extends OtpVerificationResponse {
  @override
  final int status;
  @override
  final OtpResponseData data;
  @override
  final int userStatus;
  @override
  final String message;

  factory _$OtpVerificationResponse(
          [void Function(OtpVerificationResponseBuilder) updates]) =>
      (new OtpVerificationResponseBuilder()..update(updates)).build();

  _$OtpVerificationResponse._(
      {this.status, this.data, this.userStatus, this.message})
      : super._();

  @override
  OtpVerificationResponse rebuild(
          void Function(OtpVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtpVerificationResponseBuilder toBuilder() =>
      new OtpVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtpVerificationResponse &&
        status == other.status &&
        data == other.data &&
        userStatus == other.userStatus &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, status.hashCode), data.hashCode), userStatus.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtpVerificationResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('userStatus', userStatus)
          ..add('message', message))
        .toString();
  }
}

class OtpVerificationResponseBuilder
    implements
        Builder<OtpVerificationResponse, OtpVerificationResponseBuilder> {
  _$OtpVerificationResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  OtpResponseDataBuilder _data;
  OtpResponseDataBuilder get data =>
      _$this._data ??= new OtpResponseDataBuilder();
  set data(OtpResponseDataBuilder data) => _$this._data = data;

  int _userStatus;
  int get userStatus => _$this._userStatus;
  set userStatus(int userStatus) => _$this._userStatus = userStatus;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OtpVerificationResponseBuilder();

  OtpVerificationResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _userStatus = _$v.userStatus;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtpVerificationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OtpVerificationResponse;
  }

  @override
  void update(void Function(OtpVerificationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtpVerificationResponse build() {
    _$OtpVerificationResponse _$result;
    try {
      _$result = _$v ??
          new _$OtpVerificationResponse._(
              status: status,
              data: _data?.build(),
              userStatus: userStatus,
              message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OtpVerificationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OtpResponseData extends OtpResponseData {
  @override
  final String to;
  @override
  final String channel;
  @override
  final String status;
  @override
  final bool valid;
  @override
  final String token;
  @override
  final String dateUpdated;

  factory _$OtpResponseData([void Function(OtpResponseDataBuilder) updates]) =>
      (new OtpResponseDataBuilder()..update(updates)).build();

  _$OtpResponseData._(
      {this.to,
      this.channel,
      this.status,
      this.valid,
      this.token,
      this.dateUpdated})
      : super._();

  @override
  OtpResponseData rebuild(void Function(OtpResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtpResponseDataBuilder toBuilder() =>
      new OtpResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtpResponseData &&
        to == other.to &&
        channel == other.channel &&
        status == other.status &&
        valid == other.valid &&
        token == other.token &&
        dateUpdated == other.dateUpdated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, to.hashCode), channel.hashCode),
                    status.hashCode),
                valid.hashCode),
            token.hashCode),
        dateUpdated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtpResponseData')
          ..add('to', to)
          ..add('channel', channel)
          ..add('status', status)
          ..add('valid', valid)
          ..add('token', token)
          ..add('dateUpdated', dateUpdated))
        .toString();
  }
}

class OtpResponseDataBuilder
    implements Builder<OtpResponseData, OtpResponseDataBuilder> {
  _$OtpResponseData _$v;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _channel;
  String get channel => _$this._channel;
  set channel(String channel) => _$this._channel = channel;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  bool _valid;
  bool get valid => _$this._valid;
  set valid(bool valid) => _$this._valid = valid;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _dateUpdated;
  String get dateUpdated => _$this._dateUpdated;
  set dateUpdated(String dateUpdated) => _$this._dateUpdated = dateUpdated;

  OtpResponseDataBuilder();

  OtpResponseDataBuilder get _$this {
    if (_$v != null) {
      _to = _$v.to;
      _channel = _$v.channel;
      _status = _$v.status;
      _valid = _$v.valid;
      _token = _$v.token;
      _dateUpdated = _$v.dateUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtpResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OtpResponseData;
  }

  @override
  void update(void Function(OtpResponseDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtpResponseData build() {
    final _$result = _$v ??
        new _$OtpResponseData._(
            to: to,
            channel: channel,
            status: status,
            valid: valid,
            token: token,
            dateUpdated: dateUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
