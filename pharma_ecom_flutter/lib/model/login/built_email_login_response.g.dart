// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_email_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltEmailLoginResponse> _$builtEmailLoginResponseSerializer =
    new _$BuiltEmailLoginResponseSerializer();
Serializer<Data> _$dataSerializer = new _$DataSerializer();

class _$BuiltEmailLoginResponseSerializer
    implements StructuredSerializer<BuiltEmailLoginResponse> {
  @override
  final Iterable<Type> types = const [
    BuiltEmailLoginResponse,
    _$BuiltEmailLoginResponse
  ];
  @override
  final String wireName = 'BuiltEmailLoginResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuiltEmailLoginResponse object,
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
            specifiedType: const FullType(Data)));
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
  BuiltEmailLoginResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltEmailLoginResponseBuilder();

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
              specifiedType: const FullType(Data)) as Data);
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

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable<Object> serialize(Serializers serializers, Data object,
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
    if (object.dateUpdated != null) {
      result
        ..add('dateUpdated')
        ..add(serializers.serialize(object.dateUpdated,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

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
        case 'dateUpdated':
          result.dateUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltEmailLoginResponse extends BuiltEmailLoginResponse {
  @override
  final int status;
  @override
  final Data data;
  @override
  final String message;

  factory _$BuiltEmailLoginResponse(
          [void Function(BuiltEmailLoginResponseBuilder) updates]) =>
      (new BuiltEmailLoginResponseBuilder()..update(updates)).build();

  _$BuiltEmailLoginResponse._({this.status, this.data, this.message})
      : super._();

  @override
  BuiltEmailLoginResponse rebuild(
          void Function(BuiltEmailLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltEmailLoginResponseBuilder toBuilder() =>
      new BuiltEmailLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltEmailLoginResponse &&
        status == other.status &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), data.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltEmailLoginResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class BuiltEmailLoginResponseBuilder
    implements
        Builder<BuiltEmailLoginResponse, BuiltEmailLoginResponseBuilder> {
  _$BuiltEmailLoginResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataBuilder _data;
  DataBuilder get data => _$this._data ??= new DataBuilder();
  set data(DataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BuiltEmailLoginResponseBuilder();

  BuiltEmailLoginResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltEmailLoginResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltEmailLoginResponse;
  }

  @override
  void update(void Function(BuiltEmailLoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltEmailLoginResponse build() {
    _$BuiltEmailLoginResponse _$result;
    try {
      _$result = _$v ??
          new _$BuiltEmailLoginResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltEmailLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Data extends Data {
  @override
  final String to;
  @override
  final String channel;
  @override
  final String status;
  @override
  final String dateUpdated;

  factory _$Data([void Function(DataBuilder) updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._({this.to, this.channel, this.status, this.dateUpdated}) : super._();

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        to == other.to &&
        channel == other.channel &&
        status == other.status &&
        dateUpdated == other.dateUpdated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, to.hashCode), channel.hashCode), status.hashCode),
        dateUpdated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('to', to)
          ..add('channel', channel)
          ..add('status', status)
          ..add('dateUpdated', dateUpdated))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data _$v;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _channel;
  String get channel => _$this._channel;
  set channel(String channel) => _$this._channel = channel;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _dateUpdated;
  String get dateUpdated => _$this._dateUpdated;
  set dateUpdated(String dateUpdated) => _$this._dateUpdated = dateUpdated;

  DataBuilder();

  DataBuilder get _$this {
    if (_$v != null) {
      _to = _$v.to;
      _channel = _$v.channel;
      _status = _$v.status;
      _dateUpdated = _$v.dateUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    final _$result = _$v ??
        new _$Data._(
            to: to, channel: channel, status: status, dateUpdated: dateUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
