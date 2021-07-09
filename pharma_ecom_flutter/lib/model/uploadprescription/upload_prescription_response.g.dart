// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_prescription_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UploadPrescriptionResponse> _$uploadPrescriptionResponseSerializer =
    new _$UploadPrescriptionResponseSerializer();

class _$UploadPrescriptionResponseSerializer
    implements StructuredSerializer<UploadPrescriptionResponse> {
  @override
  final Iterable<Type> types = const [
    UploadPrescriptionResponse,
    _$UploadPrescriptionResponse
  ];
  @override
  final String wireName = 'UploadPrescriptionResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UploadPrescriptionResponse object,
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
  UploadPrescriptionResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UploadPrescriptionResponseBuilder();

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

class _$UploadPrescriptionResponse extends UploadPrescriptionResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$UploadPrescriptionResponse(
          [void Function(UploadPrescriptionResponseBuilder) updates]) =>
      (new UploadPrescriptionResponseBuilder()..update(updates)).build();

  _$UploadPrescriptionResponse._({this.status, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'UploadPrescriptionResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'UploadPrescriptionResponse', 'message');
    }
  }

  @override
  UploadPrescriptionResponse rebuild(
          void Function(UploadPrescriptionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPrescriptionResponseBuilder toBuilder() =>
      new UploadPrescriptionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPrescriptionResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadPrescriptionResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class UploadPrescriptionResponseBuilder
    implements
        Builder<UploadPrescriptionResponse, UploadPrescriptionResponseBuilder> {
  _$UploadPrescriptionResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UploadPrescriptionResponseBuilder();

  UploadPrescriptionResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPrescriptionResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UploadPrescriptionResponse;
  }

  @override
  void update(void Function(UploadPrescriptionResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadPrescriptionResponse build() {
    final _$result = _$v ??
        new _$UploadPrescriptionResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
