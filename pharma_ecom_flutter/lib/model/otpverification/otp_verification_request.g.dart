// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OtpVerificationRequest> _$otpVerificationRequestSerializer =
    new _$OtpVerificationRequestSerializer();

class _$OtpVerificationRequestSerializer
    implements StructuredSerializer<OtpVerificationRequest> {
  @override
  final Iterable<Type> types = const [
    OtpVerificationRequest,
    _$OtpVerificationRequest
  ];
  @override
  final String wireName = 'OtpVerificationRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OtpVerificationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(int)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OtpVerificationRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtpVerificationRequestBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OtpVerificationRequest extends OtpVerificationRequest {
  @override
  final int phoneNumber;
  @override
  final String code;

  factory _$OtpVerificationRequest(
          [void Function(OtpVerificationRequestBuilder) updates]) =>
      (new OtpVerificationRequestBuilder()..update(updates)).build();

  _$OtpVerificationRequest._({this.phoneNumber, this.code}) : super._() {
    if (phoneNumber == null) {
      throw new BuiltValueNullFieldError(
          'OtpVerificationRequest', 'phoneNumber');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('OtpVerificationRequest', 'code');
    }
  }

  @override
  OtpVerificationRequest rebuild(
          void Function(OtpVerificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtpVerificationRequestBuilder toBuilder() =>
      new OtpVerificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtpVerificationRequest &&
        phoneNumber == other.phoneNumber &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, phoneNumber.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtpVerificationRequest')
          ..add('phoneNumber', phoneNumber)
          ..add('code', code))
        .toString();
  }
}

class OtpVerificationRequestBuilder
    implements Builder<OtpVerificationRequest, OtpVerificationRequestBuilder> {
  _$OtpVerificationRequest _$v;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  OtpVerificationRequestBuilder();

  OtpVerificationRequestBuilder get _$this {
    if (_$v != null) {
      _phoneNumber = _$v.phoneNumber;
      _code = _$v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtpVerificationRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OtpVerificationRequest;
  }

  @override
  void update(void Function(OtpVerificationRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtpVerificationRequest build() {
    final _$result = _$v ??
        new _$OtpVerificationRequest._(phoneNumber: phoneNumber, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
