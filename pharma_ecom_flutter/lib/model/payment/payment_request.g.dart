// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentRequest> _$paymentRequestSerializer =
    new _$PaymentRequestSerializer();
Serializer<PaymentObj> _$paymentObjSerializer = new _$PaymentObjSerializer();

class _$PaymentRequestSerializer
    implements StructuredSerializer<PaymentRequest> {
  @override
  final Iterable<Type> types = const [PaymentRequest, _$PaymentRequest];
  @override
  final String wireName = 'PaymentRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.checkout != null) {
      result
        ..add('checkout')
        ..add(serializers.serialize(object.checkout,
            specifiedType: const FullType(CheckoutCartTot)));
    }
    if (object.dateSlot != null) {
      result
        ..add('dateSlot')
        ..add(serializers.serialize(object.dateSlot,
            specifiedType: const FullType(String)));
    }
    if (object.timeSlotId != null) {
      result
        ..add('timeSlotId')
        ..add(serializers.serialize(object.timeSlotId,
            specifiedType: const FullType(String)));
    }
    if (object.paymentId != null) {
      result
        ..add('paymentId')
        ..add(serializers.serialize(object.paymentId,
            specifiedType: const FullType(String)));
    }
    if (object.paymentDetail != null) {
      result
        ..add('paymentDetail')
        ..add(serializers.serialize(object.paymentDetail,
            specifiedType: const FullType(PaymentObj)));
    }
    return result;
  }

  @override
  PaymentRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'checkout':
          result.checkout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CheckoutCartTot))
              as CheckoutCartTot);
          break;
        case 'dateSlot':
          result.dateSlot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeSlotId':
          result.timeSlotId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentDetail':
          result.paymentDetail.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentObj)) as PaymentObj);
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentObjSerializer implements StructuredSerializer<PaymentObj> {
  @override
  final Iterable<Type> types = const [PaymentObj, _$PaymentObj];
  @override
  final String wireName = 'PaymentObj';

  @override
  Iterable<Object> serialize(Serializers serializers, PaymentObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.paymentId != null) {
      result
        ..add('paymentId')
        ..add(serializers.serialize(object.paymentId,
            specifiedType: const FullType(String)));
    }
    if (object.paymentType != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(object.paymentType,
            specifiedType: const FullType(String)));
    }
    if (object.paymentStatus != null) {
      result
        ..add('paymentStatus')
        ..add(serializers.serialize(object.paymentStatus,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PaymentObj deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'paymentId':
          result.paymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paymentStatus':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentRequest extends PaymentRequest {
  @override
  final CheckoutCartTot checkout;
  @override
  final String dateSlot;
  @override
  final String timeSlotId;
  @override
  final String paymentId;
  @override
  final PaymentObj paymentDetail;

  factory _$PaymentRequest([void Function(PaymentRequestBuilder) updates]) =>
      (new PaymentRequestBuilder()..update(updates)).build();

  _$PaymentRequest._(
      {this.checkout,
      this.dateSlot,
      this.timeSlotId,
      this.paymentId,
      this.paymentDetail})
      : super._();

  @override
  PaymentRequest rebuild(void Function(PaymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentRequestBuilder toBuilder() =>
      new PaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentRequest &&
        checkout == other.checkout &&
        dateSlot == other.dateSlot &&
        timeSlotId == other.timeSlotId &&
        paymentId == other.paymentId &&
        paymentDetail == other.paymentDetail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, checkout.hashCode), dateSlot.hashCode),
                timeSlotId.hashCode),
            paymentId.hashCode),
        paymentDetail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentRequest')
          ..add('checkout', checkout)
          ..add('dateSlot', dateSlot)
          ..add('timeSlotId', timeSlotId)
          ..add('paymentId', paymentId)
          ..add('paymentDetail', paymentDetail))
        .toString();
  }
}

class PaymentRequestBuilder
    implements Builder<PaymentRequest, PaymentRequestBuilder> {
  _$PaymentRequest _$v;

  CheckoutCartTotBuilder _checkout;
  CheckoutCartTotBuilder get checkout =>
      _$this._checkout ??= new CheckoutCartTotBuilder();
  set checkout(CheckoutCartTotBuilder checkout) => _$this._checkout = checkout;

  String _dateSlot;
  String get dateSlot => _$this._dateSlot;
  set dateSlot(String dateSlot) => _$this._dateSlot = dateSlot;

  String _timeSlotId;
  String get timeSlotId => _$this._timeSlotId;
  set timeSlotId(String timeSlotId) => _$this._timeSlotId = timeSlotId;

  String _paymentId;
  String get paymentId => _$this._paymentId;
  set paymentId(String paymentId) => _$this._paymentId = paymentId;

  PaymentObjBuilder _paymentDetail;
  PaymentObjBuilder get paymentDetail =>
      _$this._paymentDetail ??= new PaymentObjBuilder();
  set paymentDetail(PaymentObjBuilder paymentDetail) =>
      _$this._paymentDetail = paymentDetail;

  PaymentRequestBuilder();

  PaymentRequestBuilder get _$this {
    if (_$v != null) {
      _checkout = _$v.checkout?.toBuilder();
      _dateSlot = _$v.dateSlot;
      _timeSlotId = _$v.timeSlotId;
      _paymentId = _$v.paymentId;
      _paymentDetail = _$v.paymentDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentRequest;
  }

  @override
  void update(void Function(PaymentRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentRequest build() {
    _$PaymentRequest _$result;
    try {
      _$result = _$v ??
          new _$PaymentRequest._(
              checkout: _checkout?.build(),
              dateSlot: dateSlot,
              timeSlotId: timeSlotId,
              paymentId: paymentId,
              paymentDetail: _paymentDetail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'checkout';
        _checkout?.build();

        _$failedField = 'paymentDetail';
        _paymentDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PaymentObj extends PaymentObj {
  @override
  final String paymentId;
  @override
  final String paymentType;
  @override
  final String paymentStatus;

  factory _$PaymentObj([void Function(PaymentObjBuilder) updates]) =>
      (new PaymentObjBuilder()..update(updates)).build();

  _$PaymentObj._({this.paymentId, this.paymentType, this.paymentStatus})
      : super._();

  @override
  PaymentObj rebuild(void Function(PaymentObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentObjBuilder toBuilder() => new PaymentObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentObj &&
        paymentId == other.paymentId &&
        paymentType == other.paymentType &&
        paymentStatus == other.paymentStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, paymentId.hashCode), paymentType.hashCode),
        paymentStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentObj')
          ..add('paymentId', paymentId)
          ..add('paymentType', paymentType)
          ..add('paymentStatus', paymentStatus))
        .toString();
  }
}

class PaymentObjBuilder implements Builder<PaymentObj, PaymentObjBuilder> {
  _$PaymentObj _$v;

  String _paymentId;
  String get paymentId => _$this._paymentId;
  set paymentId(String paymentId) => _$this._paymentId = paymentId;

  String _paymentType;
  String get paymentType => _$this._paymentType;
  set paymentType(String paymentType) => _$this._paymentType = paymentType;

  String _paymentStatus;
  String get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  PaymentObjBuilder();

  PaymentObjBuilder get _$this {
    if (_$v != null) {
      _paymentId = _$v.paymentId;
      _paymentType = _$v.paymentType;
      _paymentStatus = _$v.paymentStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentObj;
  }

  @override
  void update(void Function(PaymentObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentObj build() {
    final _$result = _$v ??
        new _$PaymentObj._(
            paymentId: paymentId,
            paymentType: paymentType,
            paymentStatus: paymentStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
