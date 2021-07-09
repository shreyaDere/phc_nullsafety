// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universal_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UniversalResponse> _$universalResponseSerializer =
    new _$UniversalResponseSerializer();

class _$UniversalResponseSerializer
    implements StructuredSerializer<UniversalResponse> {
  @override
  final Iterable<Type> types = const [UniversalResponse, _$UniversalResponse];
  @override
  final String wireName = 'UniversalResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, UniversalResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
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
  UniversalResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UniversalResponseBuilder();

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

class _$UniversalResponse extends UniversalResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$UniversalResponse(
          [void Function(UniversalResponseBuilder) updates]) =>
      (new UniversalResponseBuilder()..update(updates)).build();

  _$UniversalResponse._({this.status, this.message}) : super._();

  @override
  UniversalResponse rebuild(void Function(UniversalResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UniversalResponseBuilder toBuilder() =>
      new UniversalResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UniversalResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UniversalResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class UniversalResponseBuilder
    implements Builder<UniversalResponse, UniversalResponseBuilder> {
  _$UniversalResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UniversalResponseBuilder();

  UniversalResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UniversalResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UniversalResponse;
  }

  @override
  void update(void Function(UniversalResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UniversalResponse build() {
    final _$result =
        _$v ?? new _$UniversalResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
