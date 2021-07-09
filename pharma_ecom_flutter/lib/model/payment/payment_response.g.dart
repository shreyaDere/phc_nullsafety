// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentResponse> _$paymentResponseSerializer =
    new _$PaymentResponseSerializer();
Serializer<PaymentResult> _$paymentResultSerializer =
    new _$PaymentResultSerializer();

class _$PaymentResponseSerializer
    implements StructuredSerializer<PaymentResponse> {
  @override
  final Iterable<Type> types = const [PaymentResponse, _$PaymentResponse];
  @override
  final String wireName = 'PaymentResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentResponse object,
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
    if (object.result != null) {
      result
        ..add('result')
        ..add(serializers.serialize(object.result,
            specifiedType: const FullType(PaymentResult)));
    }
    return result;
  }

  @override
  PaymentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentResponseBuilder();

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
        case 'result':
          result.result.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentResult)) as PaymentResult);
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentResultSerializer implements StructuredSerializer<PaymentResult> {
  @override
  final Iterable<Type> types = const [PaymentResult, _$PaymentResult];
  @override
  final String wireName = 'PaymentResult';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderId != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PaymentResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'order_id':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentResponse extends PaymentResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final PaymentResult result;

  factory _$PaymentResponse([void Function(PaymentResponseBuilder) updates]) =>
      (new PaymentResponseBuilder()..update(updates)).build();

  _$PaymentResponse._({this.status, this.message, this.result}) : super._();

  @override
  PaymentResponse rebuild(void Function(PaymentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentResponseBuilder toBuilder() =>
      new PaymentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentResponse &&
        status == other.status &&
        message == other.message &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('result', result))
        .toString();
  }
}

class PaymentResponseBuilder
    implements Builder<PaymentResponse, PaymentResponseBuilder> {
  _$PaymentResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PaymentResultBuilder _result;
  PaymentResultBuilder get result =>
      _$this._result ??= new PaymentResultBuilder();
  set result(PaymentResultBuilder result) => _$this._result = result;

  PaymentResponseBuilder();

  PaymentResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _result = _$v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentResponse;
  }

  @override
  void update(void Function(PaymentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentResponse build() {
    _$PaymentResponse _$result;
    try {
      _$result = _$v ??
          new _$PaymentResponse._(
              status: status, message: message, result: _result?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaymentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PaymentResult extends PaymentResult {
  @override
  final int orderId;

  factory _$PaymentResult([void Function(PaymentResultBuilder) updates]) =>
      (new PaymentResultBuilder()..update(updates)).build();

  _$PaymentResult._({this.orderId}) : super._();

  @override
  PaymentResult rebuild(void Function(PaymentResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentResultBuilder toBuilder() => new PaymentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentResult && orderId == other.orderId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, orderId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentResult')
          ..add('orderId', orderId))
        .toString();
  }
}

class PaymentResultBuilder
    implements Builder<PaymentResult, PaymentResultBuilder> {
  _$PaymentResult _$v;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  PaymentResultBuilder();

  PaymentResultBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentResult;
  }

  @override
  void update(void Function(PaymentResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentResult build() {
    final _$result = _$v ?? new _$PaymentResult._(orderId: orderId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
