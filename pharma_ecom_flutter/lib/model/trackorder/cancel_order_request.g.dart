// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelOrderRequest> _$cancelOrderRequestSerializer =
    new _$CancelOrderRequestSerializer();

class _$CancelOrderRequestSerializer
    implements StructuredSerializer<CancelOrderRequest> {
  @override
  final Iterable<Type> types = const [CancelOrderRequest, _$CancelOrderRequest];
  @override
  final String wireName = 'CancelOrderRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, CancelOrderRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderID != null) {
      result
        ..add('orderID')
        ..add(serializers.serialize(object.orderID,
            specifiedType: const FullType(int)));
    }
    if (object.orderStatus != null) {
      result
        ..add('orderStatus')
        ..add(serializers.serialize(object.orderStatus,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CancelOrderRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelOrderRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'orderID':
          result.orderID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderStatus':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CancelOrderRequest extends CancelOrderRequest {
  @override
  final int orderID;
  @override
  final int orderStatus;

  factory _$CancelOrderRequest(
          [void Function(CancelOrderRequestBuilder) updates]) =>
      (new CancelOrderRequestBuilder()..update(updates)).build();

  _$CancelOrderRequest._({this.orderID, this.orderStatus}) : super._();

  @override
  CancelOrderRequest rebuild(
          void Function(CancelOrderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelOrderRequestBuilder toBuilder() =>
      new CancelOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelOrderRequest &&
        orderID == other.orderID &&
        orderStatus == other.orderStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, orderID.hashCode), orderStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CancelOrderRequest')
          ..add('orderID', orderID)
          ..add('orderStatus', orderStatus))
        .toString();
  }
}

class CancelOrderRequestBuilder
    implements Builder<CancelOrderRequest, CancelOrderRequestBuilder> {
  _$CancelOrderRequest _$v;

  int _orderID;
  int get orderID => _$this._orderID;
  set orderID(int orderID) => _$this._orderID = orderID;

  int _orderStatus;
  int get orderStatus => _$this._orderStatus;
  set orderStatus(int orderStatus) => _$this._orderStatus = orderStatus;

  CancelOrderRequestBuilder();

  CancelOrderRequestBuilder get _$this {
    if (_$v != null) {
      _orderID = _$v.orderID;
      _orderStatus = _$v.orderStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelOrderRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CancelOrderRequest;
  }

  @override
  void update(void Function(CancelOrderRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CancelOrderRequest build() {
    final _$result = _$v ??
        new _$CancelOrderRequest._(orderID: orderID, orderStatus: orderStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
