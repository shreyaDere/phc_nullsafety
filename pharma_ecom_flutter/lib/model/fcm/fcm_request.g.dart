// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FcmRequest> _$fcmRequestSerializer = new _$FcmRequestSerializer();

class _$FcmRequestSerializer implements StructuredSerializer<FcmRequest> {
  @override
  final Iterable<Type> types = const [FcmRequest, _$FcmRequest];
  @override
  final String wireName = 'FcmRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, FcmRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.fcmToken != null) {
      result
        ..add('fcm_token')
        ..add(serializers.serialize(object.fcmToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FcmRequest deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FcmRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'fcm_token':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FcmRequest extends FcmRequest {
  @override
  final String fcmToken;

  factory _$FcmRequest([void Function(FcmRequestBuilder) updates]) =>
      (new FcmRequestBuilder()..update(updates)).build();

  _$FcmRequest._({this.fcmToken}) : super._();

  @override
  FcmRequest rebuild(void Function(FcmRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FcmRequestBuilder toBuilder() => new FcmRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FcmRequest && fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, fcmToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FcmRequest')
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class FcmRequestBuilder implements Builder<FcmRequest, FcmRequestBuilder> {
  _$FcmRequest _$v;

  String _fcmToken;
  String get fcmToken => _$this._fcmToken;
  set fcmToken(String fcmToken) => _$this._fcmToken = fcmToken;

  FcmRequestBuilder();

  FcmRequestBuilder get _$this {
    if (_$v != null) {
      _fcmToken = _$v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FcmRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FcmRequest;
  }

  @override
  void update(void Function(FcmRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FcmRequest build() {
    final _$result = _$v ?? new _$FcmRequest._(fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
