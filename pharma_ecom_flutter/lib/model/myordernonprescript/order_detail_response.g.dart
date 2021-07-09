// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDetailResponse> _$orderDetailResponseSerializer =
    new _$OrderDetailResponseSerializer();
Serializer<OrderDetail> _$orderDetailSerializer = new _$OrderDetailSerializer();
Serializer<ShippingMethodObjMyOrders> _$shippingMethodObjMyOrdersSerializer =
    new _$ShippingMethodObjMyOrdersSerializer();
Serializer<DeliveryTimeObj> _$deliveryTimeObjSerializer =
    new _$DeliveryTimeObjSerializer();
Serializer<TimeMyOrderObj> _$timeMyOrderObjSerializer =
    new _$TimeMyOrderObjSerializer();
Serializer<OrderTrackingMyOrder> _$orderTrackingMyOrderSerializer =
    new _$OrderTrackingMyOrderSerializer();
Serializer<TotalTaxMyOrders> _$totalTaxMyOrdersSerializer =
    new _$TotalTaxMyOrdersSerializer();

class _$OrderDetailResponseSerializer
    implements StructuredSerializer<OrderDetailResponse> {
  @override
  final Iterable<Type> types = const [
    OrderDetailResponse,
    _$OrderDetailResponse
  ];
  @override
  final String wireName = 'OrderDetailResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderDetailResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.orders != null) {
      result
        ..add('orders')
        ..add(serializers.serialize(object.orders,
            specifiedType: const FullType(OrderDetail)));
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
  OrderDetailResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailResponseBuilder();

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
        case 'orders':
          result.orders.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrderDetail)) as OrderDetail);
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

class _$OrderDetailSerializer implements StructuredSerializer<OrderDetail> {
  @override
  final Iterable<Type> types = const [OrderDetail, _$OrderDetail];
  @override
  final String wireName = 'OrderDetail';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderId != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(object.orderId,
            specifiedType: const FullType(int)));
    }
    if (object.deliveryType != null) {
      result
        ..add('delivery_type')
        ..add(serializers.serialize(object.deliveryType,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(double)));
    }
    if (object.rewardPointsEarned != null) {
      result
        ..add('rewardPointsEarned')
        ..add(serializers.serialize(object.rewardPointsEarned,
            specifiedType: const FullType(double)));
    }
    if (object.rewardPointsApplied != null) {
      result
        ..add('rewardPointsApplied')
        ..add(serializers.serialize(object.rewardPointsApplied,
            specifiedType: const FullType(double)));
    }
    if (object.pickupAddress != null) {
      result
        ..add('pickupAddress')
        ..add(serializers.serialize(object.pickupAddress,
            specifiedType: const FullType(PickupBranchCalTot)));
    }
    if (object.orderStatus != null) {
      result
        ..add('order_status')
        ..add(serializers.serialize(object.orderStatus,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.deliveryDate != null) {
      result
        ..add('deliveryDate')
        ..add(serializers.serialize(object.deliveryDate,
            specifiedType: const FullType(String)));
    }
    if (object.lineItems != null) {
      result
        ..add('line_items')
        ..add(serializers.serialize(object.lineItems,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LineItemOrder)])));
    }
    if (object.prescriptionImage != null) {
      result
        ..add('prescriptionImage')
        ..add(serializers.serialize(object.prescriptionImage,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.insuranceImage != null) {
      result
        ..add('insuranceImage')
        ..add(serializers.serialize(object.insuranceImage,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.coupons != null) {
      result
        ..add('coupons')
        ..add(serializers.serialize(object.coupons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.uniqueCode != null) {
      result
        ..add('uniqueCode')
        ..add(serializers.serialize(object.uniqueCode,
            specifiedType: const FullType(int)));
    }
    if (object.appliedPoints != null) {
      result
        ..add('appliedPoints')
        ..add(serializers.serialize(object.appliedPoints,
            specifiedType: const FullType(double)));
    }
    if (object.totalShipping != null) {
      result
        ..add('total_shipping')
        ..add(serializers.serialize(object.totalShipping,
            specifiedType: const FullType(double)));
    }
    if (object.subtotal != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(object.subtotal,
            specifiedType: const FullType(double)));
    }
    if (object.discount != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(object.discount,
            specifiedType: const FullType(double)));
    }
    if (object.totalTax != null) {
      result
        ..add('total_tax')
        ..add(serializers.serialize(object.totalTax,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TotalTaxMyOrders)])));
    }
    if (object.orderTracking != null) {
      result
        ..add('order_tracking')
        ..add(serializers.serialize(object.orderTracking,
            specifiedType: const FullType(
                BuiltList, const [const FullType(OrderTrackingMyOrder)])));
    }
    if (object.deliveryTime != null) {
      result
        ..add('deliveryTime')
        ..add(serializers.serialize(object.deliveryTime,
            specifiedType: const FullType(DeliveryTimeObj)));
    }
    if (object.prescriptionTitle != null) {
      result
        ..add('prescriptionTitle')
        ..add(serializers.serialize(object.prescriptionTitle,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionComment != null) {
      result
        ..add('prescriptionComment')
        ..add(serializers.serialize(object.prescriptionComment,
            specifiedType: const FullType(String)));
    }
    if (object.shippingMethod != null) {
      result
        ..add('shipping_method')
        ..add(serializers.serialize(object.shippingMethod,
            specifiedType: const FullType(ShippingMethodObjMyOrders)));
    }
    if (object.pickupUser != null) {
      result
        ..add('pickupUser')
        ..add(serializers.serialize(object.pickupUser,
            specifiedType: const FullType(PickupUserObj)));
    }
    return result;
  }

  @override
  OrderDetail deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailBuilder();

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
        case 'delivery_type':
          result.deliveryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rewardPointsEarned':
          result.rewardPointsEarned = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rewardPointsApplied':
          result.rewardPointsApplied = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pickupAddress':
          result.pickupAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PickupBranchCalTot))
              as PickupBranchCalTot);
          break;
        case 'order_status':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryDate':
          result.deliveryDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line_items':
          result.lineItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LineItemOrder)]))
              as BuiltList<Object>);
          break;
        case 'prescriptionImage':
          result.prescriptionImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'insuranceImage':
          result.insuranceImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'coupons':
          result.coupons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'uniqueCode':
          result.uniqueCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'appliedPoints':
          result.appliedPoints = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total_shipping':
          result.totalShipping = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total_tax':
          result.totalTax.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TotalTaxMyOrders)]))
              as BuiltList<Object>);
          break;
        case 'order_tracking':
          result.orderTracking.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderTrackingMyOrder)]))
              as BuiltList<Object>);
          break;
        case 'deliveryTime':
          result.deliveryTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DeliveryTimeObj))
              as DeliveryTimeObj);
          break;
        case 'prescriptionTitle':
          result.prescriptionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionComment':
          result.prescriptionComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shipping_method':
          result.shippingMethod.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShippingMethodObjMyOrders))
              as ShippingMethodObjMyOrders);
          break;
        case 'pickupUser':
          result.pickupUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(PickupUserObj)) as PickupUserObj);
          break;
      }
    }

    return result.build();
  }
}

class _$ShippingMethodObjMyOrdersSerializer
    implements StructuredSerializer<ShippingMethodObjMyOrders> {
  @override
  final Iterable<Type> types = const [
    ShippingMethodObjMyOrders,
    _$ShippingMethodObjMyOrders
  ];
  @override
  final String wireName = 'ShippingMethodObjMyOrders';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ShippingMethodObjMyOrders object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ShippingMethodObjMyOrders deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShippingMethodObjMyOrdersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryTimeObjSerializer
    implements StructuredSerializer<DeliveryTimeObj> {
  @override
  final Iterable<Type> types = const [DeliveryTimeObj, _$DeliveryTimeObj];
  @override
  final String wireName = 'DeliveryTimeObj';

  @override
  Iterable<Object> serialize(Serializers serializers, DeliveryTimeObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.dateId != null) {
      result
        ..add('date_id')
        ..add(serializers.serialize(object.dateId,
            specifiedType: const FullType(String)));
    }
    if (object.capacity != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(object.capacity,
            specifiedType: const FullType(int)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(TimeMyOrderObj)));
    }
    return result;
  }

  @override
  DeliveryTimeObj deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryTimeObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_id':
          result.dateId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeMyOrderObj)) as TimeMyOrderObj);
          break;
      }
    }

    return result.build();
  }
}

class _$TimeMyOrderObjSerializer
    implements StructuredSerializer<TimeMyOrderObj> {
  @override
  final Iterable<Type> types = const [TimeMyOrderObj, _$TimeMyOrderObj];
  @override
  final String wireName = 'TimeMyOrderObj';

  @override
  Iterable<Object> serialize(Serializers serializers, TimeMyOrderObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.startTime != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(object.startTime,
            specifiedType: const FullType(String)));
    }
    if (object.endTime != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(object.endTime,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TimeMyOrderObj deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeMyOrderObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderTrackingMyOrderSerializer
    implements StructuredSerializer<OrderTrackingMyOrder> {
  @override
  final Iterable<Type> types = const [
    OrderTrackingMyOrder,
    _$OrderTrackingMyOrder
  ];
  @override
  final String wireName = 'OrderTrackingMyOrder';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderTrackingMyOrder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.timestamp != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(object.timestamp,
            specifiedType: const FullType(String)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OrderTrackingMyOrder deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderTrackingMyOrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TotalTaxMyOrdersSerializer
    implements StructuredSerializer<TotalTaxMyOrders> {
  @override
  final Iterable<Type> types = const [TotalTaxMyOrders, _$TotalTaxMyOrders];
  @override
  final String wireName = 'TotalTaxMyOrders';

  @override
  Iterable<Object> serialize(Serializers serializers, TotalTaxMyOrders object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.vat != null) {
      result
        ..add('VAT')
        ..add(serializers.serialize(object.vat,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  TotalTaxMyOrders deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TotalTaxMyOrdersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'VAT':
          result.vat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderDetailResponse extends OrderDetailResponse {
  @override
  final int status;
  @override
  final OrderDetail orders;
  @override
  final String message;

  factory _$OrderDetailResponse(
          [void Function(OrderDetailResponseBuilder) updates]) =>
      (new OrderDetailResponseBuilder()..update(updates)).build();

  _$OrderDetailResponse._({this.status, this.orders, this.message}) : super._();

  @override
  OrderDetailResponse rebuild(
          void Function(OrderDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailResponseBuilder toBuilder() =>
      new OrderDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailResponse &&
        status == other.status &&
        orders == other.orders &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), orders.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetailResponse')
          ..add('status', status)
          ..add('orders', orders)
          ..add('message', message))
        .toString();
  }
}

class OrderDetailResponseBuilder
    implements Builder<OrderDetailResponse, OrderDetailResponseBuilder> {
  _$OrderDetailResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  OrderDetailBuilder _orders;
  OrderDetailBuilder get orders => _$this._orders ??= new OrderDetailBuilder();
  set orders(OrderDetailBuilder orders) => _$this._orders = orders;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OrderDetailResponseBuilder();

  OrderDetailResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _orders = _$v.orders?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetailResponse;
  }

  @override
  void update(void Function(OrderDetailResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetailResponse build() {
    _$OrderDetailResponse _$result;
    try {
      _$result = _$v ??
          new _$OrderDetailResponse._(
              status: status, orders: _orders?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OrderDetail extends OrderDetail {
  @override
  final int orderId;
  @override
  final int deliveryType;
  @override
  final double total;
  @override
  final double rewardPointsEarned;
  @override
  final double rewardPointsApplied;
  @override
  final PickupBranchCalTot pickupAddress;
  @override
  final int orderStatus;
  @override
  final String createdAt;
  @override
  final String deliveryDate;
  @override
  final BuiltList<LineItemOrder> lineItems;
  @override
  final BuiltList<String> prescriptionImage;
  @override
  final BuiltList<String> insuranceImage;
  @override
  final BuiltList<String> coupons;
  @override
  final int uniqueCode;
  @override
  final double appliedPoints;
  @override
  final double totalShipping;
  @override
  final double subtotal;
  @override
  final double discount;
  @override
  final BuiltList<TotalTaxMyOrders> totalTax;
  @override
  final BuiltList<OrderTrackingMyOrder> orderTracking;
  @override
  final DeliveryTimeObj deliveryTime;
  @override
  final String prescriptionTitle;
  @override
  final String prescriptionComment;
  @override
  final ShippingMethodObjMyOrders shippingMethod;
  @override
  final PickupUserObj pickupUser;

  factory _$OrderDetail([void Function(OrderDetailBuilder) updates]) =>
      (new OrderDetailBuilder()..update(updates)).build();

  _$OrderDetail._(
      {this.orderId,
      this.deliveryType,
      this.total,
      this.rewardPointsEarned,
      this.rewardPointsApplied,
      this.pickupAddress,
      this.orderStatus,
      this.createdAt,
      this.deliveryDate,
      this.lineItems,
      this.prescriptionImage,
      this.insuranceImage,
      this.coupons,
      this.uniqueCode,
      this.appliedPoints,
      this.totalShipping,
      this.subtotal,
      this.discount,
      this.totalTax,
      this.orderTracking,
      this.deliveryTime,
      this.prescriptionTitle,
      this.prescriptionComment,
      this.shippingMethod,
      this.pickupUser})
      : super._();

  @override
  OrderDetail rebuild(void Function(OrderDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailBuilder toBuilder() => new OrderDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetail &&
        orderId == other.orderId &&
        deliveryType == other.deliveryType &&
        total == other.total &&
        rewardPointsEarned == other.rewardPointsEarned &&
        rewardPointsApplied == other.rewardPointsApplied &&
        pickupAddress == other.pickupAddress &&
        orderStatus == other.orderStatus &&
        createdAt == other.createdAt &&
        deliveryDate == other.deliveryDate &&
        lineItems == other.lineItems &&
        prescriptionImage == other.prescriptionImage &&
        insuranceImage == other.insuranceImage &&
        coupons == other.coupons &&
        uniqueCode == other.uniqueCode &&
        appliedPoints == other.appliedPoints &&
        totalShipping == other.totalShipping &&
        subtotal == other.subtotal &&
        discount == other.discount &&
        totalTax == other.totalTax &&
        orderTracking == other.orderTracking &&
        deliveryTime == other.deliveryTime &&
        prescriptionTitle == other.prescriptionTitle &&
        prescriptionComment == other.prescriptionComment &&
        shippingMethod == other.shippingMethod &&
        pickupUser == other.pickupUser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, orderId.hashCode), deliveryType.hashCode), total.hashCode), rewardPointsEarned.hashCode), rewardPointsApplied.hashCode), pickupAddress.hashCode),
                                                                                orderStatus.hashCode),
                                                                            createdAt.hashCode),
                                                                        deliveryDate.hashCode),
                                                                    lineItems.hashCode),
                                                                prescriptionImage.hashCode),
                                                            insuranceImage.hashCode),
                                                        coupons.hashCode),
                                                    uniqueCode.hashCode),
                                                appliedPoints.hashCode),
                                            totalShipping.hashCode),
                                        subtotal.hashCode),
                                    discount.hashCode),
                                totalTax.hashCode),
                            orderTracking.hashCode),
                        deliveryTime.hashCode),
                    prescriptionTitle.hashCode),
                prescriptionComment.hashCode),
            shippingMethod.hashCode),
        pickupUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetail')
          ..add('orderId', orderId)
          ..add('deliveryType', deliveryType)
          ..add('total', total)
          ..add('rewardPointsEarned', rewardPointsEarned)
          ..add('rewardPointsApplied', rewardPointsApplied)
          ..add('pickupAddress', pickupAddress)
          ..add('orderStatus', orderStatus)
          ..add('createdAt', createdAt)
          ..add('deliveryDate', deliveryDate)
          ..add('lineItems', lineItems)
          ..add('prescriptionImage', prescriptionImage)
          ..add('insuranceImage', insuranceImage)
          ..add('coupons', coupons)
          ..add('uniqueCode', uniqueCode)
          ..add('appliedPoints', appliedPoints)
          ..add('totalShipping', totalShipping)
          ..add('subtotal', subtotal)
          ..add('discount', discount)
          ..add('totalTax', totalTax)
          ..add('orderTracking', orderTracking)
          ..add('deliveryTime', deliveryTime)
          ..add('prescriptionTitle', prescriptionTitle)
          ..add('prescriptionComment', prescriptionComment)
          ..add('shippingMethod', shippingMethod)
          ..add('pickupUser', pickupUser))
        .toString();
  }
}

class OrderDetailBuilder implements Builder<OrderDetail, OrderDetailBuilder> {
  _$OrderDetail _$v;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  int _deliveryType;
  int get deliveryType => _$this._deliveryType;
  set deliveryType(int deliveryType) => _$this._deliveryType = deliveryType;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  double _rewardPointsEarned;
  double get rewardPointsEarned => _$this._rewardPointsEarned;
  set rewardPointsEarned(double rewardPointsEarned) =>
      _$this._rewardPointsEarned = rewardPointsEarned;

  double _rewardPointsApplied;
  double get rewardPointsApplied => _$this._rewardPointsApplied;
  set rewardPointsApplied(double rewardPointsApplied) =>
      _$this._rewardPointsApplied = rewardPointsApplied;

  PickupBranchCalTotBuilder _pickupAddress;
  PickupBranchCalTotBuilder get pickupAddress =>
      _$this._pickupAddress ??= new PickupBranchCalTotBuilder();
  set pickupAddress(PickupBranchCalTotBuilder pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  int _orderStatus;
  int get orderStatus => _$this._orderStatus;
  set orderStatus(int orderStatus) => _$this._orderStatus = orderStatus;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _deliveryDate;
  String get deliveryDate => _$this._deliveryDate;
  set deliveryDate(String deliveryDate) => _$this._deliveryDate = deliveryDate;

  ListBuilder<LineItemOrder> _lineItems;
  ListBuilder<LineItemOrder> get lineItems =>
      _$this._lineItems ??= new ListBuilder<LineItemOrder>();
  set lineItems(ListBuilder<LineItemOrder> lineItems) =>
      _$this._lineItems = lineItems;

  ListBuilder<String> _prescriptionImage;
  ListBuilder<String> get prescriptionImage =>
      _$this._prescriptionImage ??= new ListBuilder<String>();
  set prescriptionImage(ListBuilder<String> prescriptionImage) =>
      _$this._prescriptionImage = prescriptionImage;

  ListBuilder<String> _insuranceImage;
  ListBuilder<String> get insuranceImage =>
      _$this._insuranceImage ??= new ListBuilder<String>();
  set insuranceImage(ListBuilder<String> insuranceImage) =>
      _$this._insuranceImage = insuranceImage;

  ListBuilder<String> _coupons;
  ListBuilder<String> get coupons =>
      _$this._coupons ??= new ListBuilder<String>();
  set coupons(ListBuilder<String> coupons) => _$this._coupons = coupons;

  int _uniqueCode;
  int get uniqueCode => _$this._uniqueCode;
  set uniqueCode(int uniqueCode) => _$this._uniqueCode = uniqueCode;

  double _appliedPoints;
  double get appliedPoints => _$this._appliedPoints;
  set appliedPoints(double appliedPoints) =>
      _$this._appliedPoints = appliedPoints;

  double _totalShipping;
  double get totalShipping => _$this._totalShipping;
  set totalShipping(double totalShipping) =>
      _$this._totalShipping = totalShipping;

  double _subtotal;
  double get subtotal => _$this._subtotal;
  set subtotal(double subtotal) => _$this._subtotal = subtotal;

  double _discount;
  double get discount => _$this._discount;
  set discount(double discount) => _$this._discount = discount;

  ListBuilder<TotalTaxMyOrders> _totalTax;
  ListBuilder<TotalTaxMyOrders> get totalTax =>
      _$this._totalTax ??= new ListBuilder<TotalTaxMyOrders>();
  set totalTax(ListBuilder<TotalTaxMyOrders> totalTax) =>
      _$this._totalTax = totalTax;

  ListBuilder<OrderTrackingMyOrder> _orderTracking;
  ListBuilder<OrderTrackingMyOrder> get orderTracking =>
      _$this._orderTracking ??= new ListBuilder<OrderTrackingMyOrder>();
  set orderTracking(ListBuilder<OrderTrackingMyOrder> orderTracking) =>
      _$this._orderTracking = orderTracking;

  DeliveryTimeObjBuilder _deliveryTime;
  DeliveryTimeObjBuilder get deliveryTime =>
      _$this._deliveryTime ??= new DeliveryTimeObjBuilder();
  set deliveryTime(DeliveryTimeObjBuilder deliveryTime) =>
      _$this._deliveryTime = deliveryTime;

  String _prescriptionTitle;
  String get prescriptionTitle => _$this._prescriptionTitle;
  set prescriptionTitle(String prescriptionTitle) =>
      _$this._prescriptionTitle = prescriptionTitle;

  String _prescriptionComment;
  String get prescriptionComment => _$this._prescriptionComment;
  set prescriptionComment(String prescriptionComment) =>
      _$this._prescriptionComment = prescriptionComment;

  ShippingMethodObjMyOrdersBuilder _shippingMethod;
  ShippingMethodObjMyOrdersBuilder get shippingMethod =>
      _$this._shippingMethod ??= new ShippingMethodObjMyOrdersBuilder();
  set shippingMethod(ShippingMethodObjMyOrdersBuilder shippingMethod) =>
      _$this._shippingMethod = shippingMethod;

  PickupUserObjBuilder _pickupUser;
  PickupUserObjBuilder get pickupUser =>
      _$this._pickupUser ??= new PickupUserObjBuilder();
  set pickupUser(PickupUserObjBuilder pickupUser) =>
      _$this._pickupUser = pickupUser;

  OrderDetailBuilder();

  OrderDetailBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _deliveryType = _$v.deliveryType;
      _total = _$v.total;
      _rewardPointsEarned = _$v.rewardPointsEarned;
      _rewardPointsApplied = _$v.rewardPointsApplied;
      _pickupAddress = _$v.pickupAddress?.toBuilder();
      _orderStatus = _$v.orderStatus;
      _createdAt = _$v.createdAt;
      _deliveryDate = _$v.deliveryDate;
      _lineItems = _$v.lineItems?.toBuilder();
      _prescriptionImage = _$v.prescriptionImage?.toBuilder();
      _insuranceImage = _$v.insuranceImage?.toBuilder();
      _coupons = _$v.coupons?.toBuilder();
      _uniqueCode = _$v.uniqueCode;
      _appliedPoints = _$v.appliedPoints;
      _totalShipping = _$v.totalShipping;
      _subtotal = _$v.subtotal;
      _discount = _$v.discount;
      _totalTax = _$v.totalTax?.toBuilder();
      _orderTracking = _$v.orderTracking?.toBuilder();
      _deliveryTime = _$v.deliveryTime?.toBuilder();
      _prescriptionTitle = _$v.prescriptionTitle;
      _prescriptionComment = _$v.prescriptionComment;
      _shippingMethod = _$v.shippingMethod?.toBuilder();
      _pickupUser = _$v.pickupUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderDetail;
  }

  @override
  void update(void Function(OrderDetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetail build() {
    _$OrderDetail _$result;
    try {
      _$result = _$v ??
          new _$OrderDetail._(
              orderId: orderId,
              deliveryType: deliveryType,
              total: total,
              rewardPointsEarned: rewardPointsEarned,
              rewardPointsApplied: rewardPointsApplied,
              pickupAddress: _pickupAddress?.build(),
              orderStatus: orderStatus,
              createdAt: createdAt,
              deliveryDate: deliveryDate,
              lineItems: _lineItems?.build(),
              prescriptionImage: _prescriptionImage?.build(),
              insuranceImage: _insuranceImage?.build(),
              coupons: _coupons?.build(),
              uniqueCode: uniqueCode,
              appliedPoints: appliedPoints,
              totalShipping: totalShipping,
              subtotal: subtotal,
              discount: discount,
              totalTax: _totalTax?.build(),
              orderTracking: _orderTracking?.build(),
              deliveryTime: _deliveryTime?.build(),
              prescriptionTitle: prescriptionTitle,
              prescriptionComment: prescriptionComment,
              shippingMethod: _shippingMethod?.build(),
              pickupUser: _pickupUser?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupAddress';
        _pickupAddress?.build();

        _$failedField = 'lineItems';
        _lineItems?.build();
        _$failedField = 'prescriptionImage';
        _prescriptionImage?.build();
        _$failedField = 'insuranceImage';
        _insuranceImage?.build();
        _$failedField = 'coupons';
        _coupons?.build();

        _$failedField = 'totalTax';
        _totalTax?.build();
        _$failedField = 'orderTracking';
        _orderTracking?.build();
        _$failedField = 'deliveryTime';
        _deliveryTime?.build();

        _$failedField = 'shippingMethod';
        _shippingMethod?.build();
        _$failedField = 'pickupUser';
        _pickupUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrderDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ShippingMethodObjMyOrders extends ShippingMethodObjMyOrders {
  @override
  final String name;
  @override
  final String description;

  factory _$ShippingMethodObjMyOrders(
          [void Function(ShippingMethodObjMyOrdersBuilder) updates]) =>
      (new ShippingMethodObjMyOrdersBuilder()..update(updates)).build();

  _$ShippingMethodObjMyOrders._({this.name, this.description}) : super._();

  @override
  ShippingMethodObjMyOrders rebuild(
          void Function(ShippingMethodObjMyOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShippingMethodObjMyOrdersBuilder toBuilder() =>
      new ShippingMethodObjMyOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShippingMethodObjMyOrders &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShippingMethodObjMyOrders')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class ShippingMethodObjMyOrdersBuilder
    implements
        Builder<ShippingMethodObjMyOrders, ShippingMethodObjMyOrdersBuilder> {
  _$ShippingMethodObjMyOrders _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ShippingMethodObjMyOrdersBuilder();

  ShippingMethodObjMyOrdersBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShippingMethodObjMyOrders other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShippingMethodObjMyOrders;
  }

  @override
  void update(void Function(ShippingMethodObjMyOrdersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShippingMethodObjMyOrders build() {
    final _$result = _$v ??
        new _$ShippingMethodObjMyOrders._(name: name, description: description);
    replace(_$result);
    return _$result;
  }
}

class _$DeliveryTimeObj extends DeliveryTimeObj {
  @override
  final String id;
  @override
  final String dateId;
  @override
  final int capacity;
  @override
  final TimeMyOrderObj time;

  factory _$DeliveryTimeObj([void Function(DeliveryTimeObjBuilder) updates]) =>
      (new DeliveryTimeObjBuilder()..update(updates)).build();

  _$DeliveryTimeObj._({this.id, this.dateId, this.capacity, this.time})
      : super._();

  @override
  DeliveryTimeObj rebuild(void Function(DeliveryTimeObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryTimeObjBuilder toBuilder() =>
      new DeliveryTimeObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryTimeObj &&
        id == other.id &&
        dateId == other.dateId &&
        capacity == other.capacity &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), dateId.hashCode), capacity.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeliveryTimeObj')
          ..add('id', id)
          ..add('dateId', dateId)
          ..add('capacity', capacity)
          ..add('time', time))
        .toString();
  }
}

class DeliveryTimeObjBuilder
    implements Builder<DeliveryTimeObj, DeliveryTimeObjBuilder> {
  _$DeliveryTimeObj _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _dateId;
  String get dateId => _$this._dateId;
  set dateId(String dateId) => _$this._dateId = dateId;

  int _capacity;
  int get capacity => _$this._capacity;
  set capacity(int capacity) => _$this._capacity = capacity;

  TimeMyOrderObjBuilder _time;
  TimeMyOrderObjBuilder get time =>
      _$this._time ??= new TimeMyOrderObjBuilder();
  set time(TimeMyOrderObjBuilder time) => _$this._time = time;

  DeliveryTimeObjBuilder();

  DeliveryTimeObjBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _dateId = _$v.dateId;
      _capacity = _$v.capacity;
      _time = _$v.time?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryTimeObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeliveryTimeObj;
  }

  @override
  void update(void Function(DeliveryTimeObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeliveryTimeObj build() {
    _$DeliveryTimeObj _$result;
    try {
      _$result = _$v ??
          new _$DeliveryTimeObj._(
              id: id, dateId: dateId, capacity: capacity, time: _time?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'time';
        _time?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DeliveryTimeObj', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TimeMyOrderObj extends TimeMyOrderObj {
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$TimeMyOrderObj([void Function(TimeMyOrderObjBuilder) updates]) =>
      (new TimeMyOrderObjBuilder()..update(updates)).build();

  _$TimeMyOrderObj._({this.startTime, this.endTime}) : super._();

  @override
  TimeMyOrderObj rebuild(void Function(TimeMyOrderObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeMyOrderObjBuilder toBuilder() =>
      new TimeMyOrderObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeMyOrderObj &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, startTime.hashCode), endTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimeMyOrderObj')
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeMyOrderObjBuilder
    implements Builder<TimeMyOrderObj, TimeMyOrderObjBuilder> {
  _$TimeMyOrderObj _$v;

  String _startTime;
  String get startTime => _$this._startTime;
  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;
  String get endTime => _$this._endTime;
  set endTime(String endTime) => _$this._endTime = endTime;

  TimeMyOrderObjBuilder();

  TimeMyOrderObjBuilder get _$this {
    if (_$v != null) {
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeMyOrderObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimeMyOrderObj;
  }

  @override
  void update(void Function(TimeMyOrderObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeMyOrderObj build() {
    final _$result =
        _$v ?? new _$TimeMyOrderObj._(startTime: startTime, endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

class _$OrderTrackingMyOrder extends OrderTrackingMyOrder {
  @override
  final String id;
  @override
  final String timestamp;
  @override
  final String comments;
  @override
  final int status;

  factory _$OrderTrackingMyOrder(
          [void Function(OrderTrackingMyOrderBuilder) updates]) =>
      (new OrderTrackingMyOrderBuilder()..update(updates)).build();

  _$OrderTrackingMyOrder._(
      {this.id, this.timestamp, this.comments, this.status})
      : super._();

  @override
  OrderTrackingMyOrder rebuild(
          void Function(OrderTrackingMyOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderTrackingMyOrderBuilder toBuilder() =>
      new OrderTrackingMyOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderTrackingMyOrder &&
        id == other.id &&
        timestamp == other.timestamp &&
        comments == other.comments &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), timestamp.hashCode), comments.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderTrackingMyOrder')
          ..add('id', id)
          ..add('timestamp', timestamp)
          ..add('comments', comments)
          ..add('status', status))
        .toString();
  }
}

class OrderTrackingMyOrderBuilder
    implements Builder<OrderTrackingMyOrder, OrderTrackingMyOrderBuilder> {
  _$OrderTrackingMyOrder _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _timestamp;
  String get timestamp => _$this._timestamp;
  set timestamp(String timestamp) => _$this._timestamp = timestamp;

  String _comments;
  String get comments => _$this._comments;
  set comments(String comments) => _$this._comments = comments;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  OrderTrackingMyOrderBuilder();

  OrderTrackingMyOrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _timestamp = _$v.timestamp;
      _comments = _$v.comments;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderTrackingMyOrder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderTrackingMyOrder;
  }

  @override
  void update(void Function(OrderTrackingMyOrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderTrackingMyOrder build() {
    final _$result = _$v ??
        new _$OrderTrackingMyOrder._(
            id: id, timestamp: timestamp, comments: comments, status: status);
    replace(_$result);
    return _$result;
  }
}

class _$TotalTaxMyOrders extends TotalTaxMyOrders {
  @override
  final double vat;

  factory _$TotalTaxMyOrders(
          [void Function(TotalTaxMyOrdersBuilder) updates]) =>
      (new TotalTaxMyOrdersBuilder()..update(updates)).build();

  _$TotalTaxMyOrders._({this.vat}) : super._();

  @override
  TotalTaxMyOrders rebuild(void Function(TotalTaxMyOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotalTaxMyOrdersBuilder toBuilder() =>
      new TotalTaxMyOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotalTaxMyOrders && vat == other.vat;
  }

  @override
  int get hashCode {
    return $jf($jc(0, vat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TotalTaxMyOrders')..add('vat', vat))
        .toString();
  }
}

class TotalTaxMyOrdersBuilder
    implements Builder<TotalTaxMyOrders, TotalTaxMyOrdersBuilder> {
  _$TotalTaxMyOrders _$v;

  double _vat;
  double get vat => _$this._vat;
  set vat(double vat) => _$this._vat = vat;

  TotalTaxMyOrdersBuilder();

  TotalTaxMyOrdersBuilder get _$this {
    if (_$v != null) {
      _vat = _$v.vat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TotalTaxMyOrders other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TotalTaxMyOrders;
  }

  @override
  void update(void Function(TotalTaxMyOrdersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TotalTaxMyOrders build() {
    final _$result = _$v ?? new _$TotalTaxMyOrders._(vat: vat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
