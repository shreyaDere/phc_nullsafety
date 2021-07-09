// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_tot_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartTotResponse> _$cartTotResponseSerializer =
    new _$CartTotResponseSerializer();
Serializer<DataCartTot> _$dataCartTotSerializer = new _$DataCartTotSerializer();
Serializer<CheckoutCartTot> _$checkoutCartTotSerializer =
    new _$CheckoutCartTotSerializer();
Serializer<LineItemsCartTot> _$lineItemsCartTotSerializer =
    new _$LineItemsCartTotSerializer();
Serializer<TotTaxCartTot> _$totTaxCartTotSerializer =
    new _$TotTaxCartTotSerializer();
Serializer<SlotsCartTot> _$slotsCartTotSerializer =
    new _$SlotsCartTotSerializer();
Serializer<TimeSlotsCartTot> _$timeSlotsCartTotSerializer =
    new _$TimeSlotsCartTotSerializer();
Serializer<TimeObjCalTot> _$timeObjCalTotSerializer =
    new _$TimeObjCalTotSerializer();
Serializer<CalTotPickUpAddress> _$calTotPickUpAddressSerializer =
    new _$CalTotPickUpAddressSerializer();
Serializer<PickupBranchCalTot> _$pickupBranchCalTotSerializer =
    new _$PickupBranchCalTotSerializer();
Serializer<CartTotDelAddress> _$cartTotDelAddressSerializer =
    new _$CartTotDelAddressSerializer();
Serializer<UserAddCartTotDelAddress> _$userAddCartTotDelAddressSerializer =
    new _$UserAddCartTotDelAddressSerializer();
Serializer<PrescriptionCartTotObj> _$prescriptionCartTotObjSerializer =
    new _$PrescriptionCartTotObjSerializer();

class _$CartTotResponseSerializer
    implements StructuredSerializer<CartTotResponse> {
  @override
  final Iterable<Type> types = const [CartTotResponse, _$CartTotResponse];
  @override
  final String wireName = 'CartTotResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, CartTotResponse object,
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
            specifiedType: const FullType(DataCartTot)));
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
  CartTotResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartTotResponseBuilder();

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
              specifiedType: const FullType(DataCartTot)) as DataCartTot);
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

class _$DataCartTotSerializer implements StructuredSerializer<DataCartTot> {
  @override
  final Iterable<Type> types = const [DataCartTot, _$DataCartTot];
  @override
  final String wireName = 'DataCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, DataCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.checkout != null) {
      result
        ..add('checkout')
        ..add(serializers.serialize(object.checkout,
            specifiedType: const FullType(CheckoutCartTot)));
    }
    if (object.dates != null) {
      result
        ..add('Dates')
        ..add(serializers.serialize(object.dates,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.slots != null) {
      result
        ..add('Slots')
        ..add(serializers.serialize(object.slots,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SlotsCartTot)])));
    }
    return result;
  }

  @override
  DataCartTot deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataCartTotBuilder();

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
        case 'Dates':
          result.dates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Slots':
          result.slots.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SlotsCartTot)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CheckoutCartTotSerializer
    implements StructuredSerializer<CheckoutCartTot> {
  @override
  final Iterable<Type> types = const [CheckoutCartTot, _$CheckoutCartTot];
  @override
  final String wireName = 'CheckoutCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckoutCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.uniqueCode != null) {
      result
        ..add('uniqueCode')
        ..add(serializers.serialize(object.uniqueCode,
            specifiedType: const FullType(int)));
    }
    if (object.lineItems != null) {
      result
        ..add('line_items')
        ..add(serializers.serialize(object.lineItems,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LineItemsCartTot)])));
    }
    if (object.subtotal != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(object.subtotal,
            specifiedType: const FullType(double)));
    }
    if (object.totalTax != null) {
      result
        ..add('total_tax')
        ..add(serializers.serialize(object.totalTax,
            specifiedType: const FullType(TotTaxCartTot)));
    }
    if (object.totalShipping != null) {
      result
        ..add('total_shipping')
        ..add(serializers.serialize(object.totalShipping,
            specifiedType: const FullType(double)));
    }
    if (object.deliveryType != null) {
      result
        ..add('delivery_type')
        ..add(serializers.serialize(object.deliveryType,
            specifiedType: const FullType(int)));
    }
    if (object.orderType != null) {
      result
        ..add('orderType')
        ..add(serializers.serialize(object.orderType,
            specifiedType: const FullType(int)));
    }
    if (object.coupons != null) {
      result
        ..add('coupons')
        ..add(serializers.serialize(object.coupons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.discount != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(object.discount,
            specifiedType: const FullType(double)));
    }
    if (object.rewardPointsApplied != null) {
      result
        ..add('rewardPointsApplied')
        ..add(serializers.serialize(object.rewardPointsApplied,
            specifiedType: const FullType(double)));
    }
    if (object.currentRewardValue != null) {
      result
        ..add('currentRewardValue')
        ..add(serializers.serialize(object.currentRewardValue,
            specifiedType: const FullType(double)));
    }
    if (object.availableRewardPoints != null) {
      result
        ..add('availableRewardPoints')
        ..add(serializers.serialize(object.availableRewardPoints,
            specifiedType: const FullType(double)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(double)));
    }
    if (object.billingAddress != null) {
      result
        ..add('billing_address')
        ..add(serializers.serialize(object.billingAddress,
            specifiedType: const FullType(CartTotDelAddress)));
    }
    if (object.shippingAddress != null) {
      result
        ..add('shipping_address')
        ..add(serializers.serialize(object.shippingAddress,
            specifiedType: const FullType(CartTotDelAddress)));
    }
    if (object.eta != null) {
      result
        ..add('eta')
        ..add(serializers.serialize(object.eta,
            specifiedType: const FullType(String)));
    }
    if (object.courierAllocation != null) {
      result
        ..add('courier_allocation')
        ..add(serializers.serialize(object.courierAllocation,
            specifiedType: const FullType(String)));
    }
    if (object.shippingWeight != null) {
      result
        ..add('shipping_weight')
        ..add(serializers.serialize(object.shippingWeight,
            specifiedType: const FullType(double)));
    }
    if (object.shippingQuantity != null) {
      result
        ..add('shipping_quantity')
        ..add(serializers.serialize(object.shippingQuantity,
            specifiedType: const FullType(int)));
    }
    if (object.pickupAddress != null) {
      result
        ..add('pickupAddress')
        ..add(serializers.serialize(object.pickupAddress,
            specifiedType: const FullType(String)));
    }
    if (object.pickupAddressDetails != null) {
      result
        ..add('pickupAddressDetails')
        ..add(serializers.serialize(object.pickupAddressDetails,
            specifiedType: const FullType(CalTotPickUpAddress)));
    }
    if (object.userPrescription != null) {
      result
        ..add('userPrescription')
        ..add(serializers.serialize(object.userPrescription,
            specifiedType: const FullType(PrescriptionCartTotObj)));
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
  CheckoutCartTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckoutCartTotBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uniqueCode':
          result.uniqueCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'line_items':
          result.lineItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LineItemsCartTot)]))
              as BuiltList<Object>);
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total_tax':
          result.totalTax.replace(serializers.deserialize(value,
              specifiedType: const FullType(TotTaxCartTot)) as TotTaxCartTot);
          break;
        case 'total_shipping':
          result.totalShipping = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'delivery_type':
          result.deliveryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderType':
          result.orderType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'coupons':
          result.coupons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rewardPointsApplied':
          result.rewardPointsApplied = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'currentRewardValue':
          result.currentRewardValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'availableRewardPoints':
          result.availableRewardPoints = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'billing_address':
          result.billingAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CartTotDelAddress))
              as CartTotDelAddress);
          break;
        case 'shipping_address':
          result.shippingAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CartTotDelAddress))
              as CartTotDelAddress);
          break;
        case 'eta':
          result.eta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'courier_allocation':
          result.courierAllocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shipping_weight':
          result.shippingWeight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'shipping_quantity':
          result.shippingQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupAddress':
          result.pickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupAddressDetails':
          result.pickupAddressDetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CalTotPickUpAddress))
              as CalTotPickUpAddress);
          break;
        case 'userPrescription':
          result.userPrescription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PrescriptionCartTotObj))
              as PrescriptionCartTotObj);
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

class _$LineItemsCartTotSerializer
    implements StructuredSerializer<LineItemsCartTot> {
  @override
  final Iterable<Type> types = const [LineItemsCartTot, _$LineItemsCartTot];
  @override
  final String wireName = 'LineItemsCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, LineItemsCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(UniversalProduct)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    if (object.lineTotal != null) {
      result
        ..add('line_total')
        ..add(serializers.serialize(object.lineTotal,
            specifiedType: const FullType(double)));
    }
    if (object.lineTax != null) {
      result
        ..add('line_tax')
        ..add(serializers.serialize(object.lineTax,
            specifiedType: const FullType(TotTaxCartTot)));
    }
    if (object.lineShipping != null) {
      result
        ..add('line_shipping')
        ..add(serializers.serialize(object.lineShipping,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  LineItemsCartTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineItemsCartTotBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalProduct))
              as UniversalProduct);
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'line_total':
          result.lineTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'line_tax':
          result.lineTax.replace(serializers.deserialize(value,
              specifiedType: const FullType(TotTaxCartTot)) as TotTaxCartTot);
          break;
        case 'line_shipping':
          result.lineShipping = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TotTaxCartTotSerializer implements StructuredSerializer<TotTaxCartTot> {
  @override
  final Iterable<Type> types = const [TotTaxCartTot, _$TotTaxCartTot];
  @override
  final String wireName = 'TotTaxCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, TotTaxCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cgst != null) {
      result
        ..add('CGST')
        ..add(serializers.serialize(object.cgst,
            specifiedType: const FullType(double)));
    }
    if (object.sgst != null) {
      result
        ..add('SGST')
        ..add(serializers.serialize(object.sgst,
            specifiedType: const FullType(double)));
    }
    if (object.igst != null) {
      result
        ..add('IGST')
        ..add(serializers.serialize(object.igst,
            specifiedType: const FullType(double)));
    }
    if (object.vat != null) {
      result
        ..add('VAT')
        ..add(serializers.serialize(object.vat,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  TotTaxCartTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TotTaxCartTotBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'CGST':
          result.cgst = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'SGST':
          result.sgst = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'IGST':
          result.igst = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'VAT':
          result.vat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$SlotsCartTotSerializer implements StructuredSerializer<SlotsCartTot> {
  @override
  final Iterable<Type> types = const [SlotsCartTot, _$SlotsCartTot];
  @override
  final String wireName = 'SlotsCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, SlotsCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TimeSlotsCartTot)])));
    }
    return result;
  }

  @override
  SlotsCartTot deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SlotsCartTotBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Time':
          result.time.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeSlotsCartTot)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TimeSlotsCartTotSerializer
    implements StructuredSerializer<TimeSlotsCartTot> {
  @override
  final Iterable<Type> types = const [TimeSlotsCartTot, _$TimeSlotsCartTot];
  @override
  final String wireName = 'TimeSlotsCartTot';

  @override
  Iterable<Object> serialize(Serializers serializers, TimeSlotsCartTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(TimeObjCalTot)));
    }
    if (object.capacity != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(object.capacity,
            specifiedType: const FullType(int)));
    }
    if (object.dateId != null) {
      result
        ..add('date_id')
        ..add(serializers.serialize(object.dateId,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TimeSlotsCartTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeSlotsCartTotBuilder();

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
        case 'time':
          result.time.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimeObjCalTot)) as TimeObjCalTot);
          break;
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date_id':
          result.dateId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeObjCalTotSerializer implements StructuredSerializer<TimeObjCalTot> {
  @override
  final Iterable<Type> types = const [TimeObjCalTot, _$TimeObjCalTot];
  @override
  final String wireName = 'TimeObjCalTot';

  @override
  Iterable<Object> serialize(Serializers serializers, TimeObjCalTot object,
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
  TimeObjCalTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeObjCalTotBuilder();

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

class _$CalTotPickUpAddressSerializer
    implements StructuredSerializer<CalTotPickUpAddress> {
  @override
  final Iterable<Type> types = const [
    CalTotPickUpAddress,
    _$CalTotPickUpAddress
  ];
  @override
  final String wireName = 'CalTotPickUpAddress';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CalTotPickUpAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.pickupBranch != null) {
      result
        ..add('pickupBranch')
        ..add(serializers.serialize(object.pickupBranch,
            specifiedType: const FullType(PickupBranchCalTot)));
    }
    return result;
  }

  @override
  CalTotPickUpAddress deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CalTotPickUpAddressBuilder();

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
        case 'pickupBranch':
          result.pickupBranch.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PickupBranchCalTot))
              as PickupBranchCalTot);
          break;
      }
    }

    return result.build();
  }
}

class _$PickupBranchCalTotSerializer
    implements StructuredSerializer<PickupBranchCalTot> {
  @override
  final Iterable<Type> types = const [PickupBranchCalTot, _$PickupBranchCalTot];
  @override
  final String wireName = 'PickupBranchCalTot';

  @override
  Iterable<Object> serialize(Serializers serializers, PickupBranchCalTot object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(int)));
    }
    if (object.addressLine1 != null) {
      result
        ..add('addressLine1')
        ..add(serializers.serialize(object.addressLine1,
            specifiedType: const FullType(String)));
    }
    if (object.addressLine2 != null) {
      result
        ..add('addressLine2')
        ..add(serializers.serialize(object.addressLine2,
            specifiedType: const FullType(String)));
    }
    if (object.addressLine3 != null) {
      result
        ..add('addressLine3')
        ..add(serializers.serialize(object.addressLine3,
            specifiedType: const FullType(String)));
    }
    if (object.area != null) {
      result
        ..add('area')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(String)));
    }
    if (object.landmark != null) {
      result
        ..add('landmark')
        ..add(serializers.serialize(object.landmark,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PickupBranchCalTot deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickupBranchCalTotBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'addressLine1':
          result.addressLine1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressLine2':
          result.addressLine2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressLine3':
          result.addressLine3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'landmark':
          result.landmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CartTotDelAddressSerializer
    implements StructuredSerializer<CartTotDelAddress> {
  @override
  final Iterable<Type> types = const [CartTotDelAddress, _$CartTotDelAddress];
  @override
  final String wireName = 'CartTotDelAddress';

  @override
  Iterable<Object> serialize(Serializers serializers, CartTotDelAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(String)));
    }
    if (object.defaultAddress != null) {
      result
        ..add('defaultAddress')
        ..add(serializers.serialize(object.defaultAddress,
            specifiedType: const FullType(int)));
    }
    if (object.userAddress != null) {
      result
        ..add('user_address')
        ..add(serializers.serialize(object.userAddress,
            specifiedType: const FullType(UserAddCartTotDelAddress)));
    }
    if (object.address1 != null) {
      result
        ..add('address1')
        ..add(serializers.serialize(object.address1,
            specifiedType: const FullType(String)));
    }
    if (object.address2 != null) {
      result
        ..add('address2')
        ..add(serializers.serialize(object.address2,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CartTotDelAddress deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartTotDelAddressBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'defaultAddress':
          result.defaultAddress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_address':
          result.userAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserAddCartTotDelAddress))
              as UserAddCartTotDelAddress);
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserAddCartTotDelAddressSerializer
    implements StructuredSerializer<UserAddCartTotDelAddress> {
  @override
  final Iterable<Type> types = const [
    UserAddCartTotDelAddress,
    _$UserAddCartTotDelAddress
  ];
  @override
  final String wireName = 'UserAddCartTotDelAddress';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UserAddCartTotDelAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.line1 != null) {
      result
        ..add('line1')
        ..add(serializers.serialize(object.line1,
            specifiedType: const FullType(String)));
    }
    if (object.line2 != null) {
      result
        ..add('line2')
        ..add(serializers.serialize(object.line2,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserAddCartTotDelAddress deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserAddCartTotDelAddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'line1':
          result.line1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line2':
          result.line2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PrescriptionCartTotObjSerializer
    implements StructuredSerializer<PrescriptionCartTotObj> {
  @override
  final Iterable<Type> types = const [
    PrescriptionCartTotObj,
    _$PrescriptionCartTotObj
  ];
  @override
  final String wireName = 'PrescriptionCartTotObj';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PrescriptionCartTotObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
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
    if (object.prescriptionType != null) {
      result
        ..add('prescriptionType')
        ..add(serializers.serialize(object.prescriptionType,
            specifiedType: const FullType(int)));
    }
    if (object.memberId != null) {
      result
        ..add('memberId')
        ..add(serializers.serialize(object.memberId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrescriptionCartTotObj deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrescriptionCartTotObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionTitle':
          result.prescriptionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionComment':
          result.prescriptionComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionType':
          result.prescriptionType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memberId':
          result.memberId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CartTotResponse extends CartTotResponse {
  @override
  final int status;
  @override
  final DataCartTot data;
  @override
  final String message;

  factory _$CartTotResponse([void Function(CartTotResponseBuilder) updates]) =>
      (new CartTotResponseBuilder()..update(updates)).build();

  _$CartTotResponse._({this.status, this.data, this.message}) : super._();

  @override
  CartTotResponse rebuild(void Function(CartTotResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartTotResponseBuilder toBuilder() =>
      new CartTotResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartTotResponse &&
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
    return (newBuiltValueToStringHelper('CartTotResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class CartTotResponseBuilder
    implements Builder<CartTotResponse, CartTotResponseBuilder> {
  _$CartTotResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataCartTotBuilder _data;
  DataCartTotBuilder get data => _$this._data ??= new DataCartTotBuilder();
  set data(DataCartTotBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CartTotResponseBuilder();

  CartTotResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartTotResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CartTotResponse;
  }

  @override
  void update(void Function(CartTotResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartTotResponse build() {
    _$CartTotResponse _$result;
    try {
      _$result = _$v ??
          new _$CartTotResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartTotResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataCartTot extends DataCartTot {
  @override
  final CheckoutCartTot checkout;
  @override
  final BuiltList<String> dates;
  @override
  final BuiltList<SlotsCartTot> slots;

  factory _$DataCartTot([void Function(DataCartTotBuilder) updates]) =>
      (new DataCartTotBuilder()..update(updates)).build();

  _$DataCartTot._({this.checkout, this.dates, this.slots}) : super._();

  @override
  DataCartTot rebuild(void Function(DataCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataCartTotBuilder toBuilder() => new DataCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataCartTot &&
        checkout == other.checkout &&
        dates == other.dates &&
        slots == other.slots;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, checkout.hashCode), dates.hashCode), slots.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataCartTot')
          ..add('checkout', checkout)
          ..add('dates', dates)
          ..add('slots', slots))
        .toString();
  }
}

class DataCartTotBuilder implements Builder<DataCartTot, DataCartTotBuilder> {
  _$DataCartTot _$v;

  CheckoutCartTotBuilder _checkout;
  CheckoutCartTotBuilder get checkout =>
      _$this._checkout ??= new CheckoutCartTotBuilder();
  set checkout(CheckoutCartTotBuilder checkout) => _$this._checkout = checkout;

  ListBuilder<String> _dates;
  ListBuilder<String> get dates => _$this._dates ??= new ListBuilder<String>();
  set dates(ListBuilder<String> dates) => _$this._dates = dates;

  ListBuilder<SlotsCartTot> _slots;
  ListBuilder<SlotsCartTot> get slots =>
      _$this._slots ??= new ListBuilder<SlotsCartTot>();
  set slots(ListBuilder<SlotsCartTot> slots) => _$this._slots = slots;

  DataCartTotBuilder();

  DataCartTotBuilder get _$this {
    if (_$v != null) {
      _checkout = _$v.checkout?.toBuilder();
      _dates = _$v.dates?.toBuilder();
      _slots = _$v.slots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataCartTot;
  }

  @override
  void update(void Function(DataCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataCartTot build() {
    _$DataCartTot _$result;
    try {
      _$result = _$v ??
          new _$DataCartTot._(
              checkout: _checkout?.build(),
              dates: _dates?.build(),
              slots: _slots?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'checkout';
        _checkout?.build();
        _$failedField = 'dates';
        _dates?.build();
        _$failedField = 'slots';
        _slots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataCartTot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CheckoutCartTot extends CheckoutCartTot {
  @override
  final int uniqueCode;
  @override
  final BuiltList<LineItemsCartTot> lineItems;
  @override
  final double subtotal;
  @override
  final TotTaxCartTot totalTax;
  @override
  final double totalShipping;
  @override
  final int deliveryType;
  @override
  final int orderType;
  @override
  final BuiltList<String> coupons;
  @override
  final double discount;
  @override
  final double rewardPointsApplied;
  @override
  final double currentRewardValue;
  @override
  final double availableRewardPoints;
  @override
  final double total;
  @override
  final CartTotDelAddress billingAddress;
  @override
  final CartTotDelAddress shippingAddress;
  @override
  final String eta;
  @override
  final String courierAllocation;
  @override
  final double shippingWeight;
  @override
  final int shippingQuantity;
  @override
  final String pickupAddress;
  @override
  final CalTotPickUpAddress pickupAddressDetails;
  @override
  final PrescriptionCartTotObj userPrescription;
  @override
  final PickupUserObj pickupUser;

  factory _$CheckoutCartTot([void Function(CheckoutCartTotBuilder) updates]) =>
      (new CheckoutCartTotBuilder()..update(updates)).build();

  _$CheckoutCartTot._(
      {this.uniqueCode,
      this.lineItems,
      this.subtotal,
      this.totalTax,
      this.totalShipping,
      this.deliveryType,
      this.orderType,
      this.coupons,
      this.discount,
      this.rewardPointsApplied,
      this.currentRewardValue,
      this.availableRewardPoints,
      this.total,
      this.billingAddress,
      this.shippingAddress,
      this.eta,
      this.courierAllocation,
      this.shippingWeight,
      this.shippingQuantity,
      this.pickupAddress,
      this.pickupAddressDetails,
      this.userPrescription,
      this.pickupUser})
      : super._();

  @override
  CheckoutCartTot rebuild(void Function(CheckoutCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutCartTotBuilder toBuilder() =>
      new CheckoutCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutCartTot &&
        uniqueCode == other.uniqueCode &&
        lineItems == other.lineItems &&
        subtotal == other.subtotal &&
        totalTax == other.totalTax &&
        totalShipping == other.totalShipping &&
        deliveryType == other.deliveryType &&
        orderType == other.orderType &&
        coupons == other.coupons &&
        discount == other.discount &&
        rewardPointsApplied == other.rewardPointsApplied &&
        currentRewardValue == other.currentRewardValue &&
        availableRewardPoints == other.availableRewardPoints &&
        total == other.total &&
        billingAddress == other.billingAddress &&
        shippingAddress == other.shippingAddress &&
        eta == other.eta &&
        courierAllocation == other.courierAllocation &&
        shippingWeight == other.shippingWeight &&
        shippingQuantity == other.shippingQuantity &&
        pickupAddress == other.pickupAddress &&
        pickupAddressDetails == other.pickupAddressDetails &&
        userPrescription == other.userPrescription &&
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
                                                                            $jc($jc($jc($jc($jc(0, uniqueCode.hashCode), lineItems.hashCode), subtotal.hashCode), totalTax.hashCode),
                                                                                totalShipping.hashCode),
                                                                            deliveryType.hashCode),
                                                                        orderType.hashCode),
                                                                    coupons.hashCode),
                                                                discount.hashCode),
                                                            rewardPointsApplied.hashCode),
                                                        currentRewardValue.hashCode),
                                                    availableRewardPoints.hashCode),
                                                total.hashCode),
                                            billingAddress.hashCode),
                                        shippingAddress.hashCode),
                                    eta.hashCode),
                                courierAllocation.hashCode),
                            shippingWeight.hashCode),
                        shippingQuantity.hashCode),
                    pickupAddress.hashCode),
                pickupAddressDetails.hashCode),
            userPrescription.hashCode),
        pickupUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckoutCartTot')
          ..add('uniqueCode', uniqueCode)
          ..add('lineItems', lineItems)
          ..add('subtotal', subtotal)
          ..add('totalTax', totalTax)
          ..add('totalShipping', totalShipping)
          ..add('deliveryType', deliveryType)
          ..add('orderType', orderType)
          ..add('coupons', coupons)
          ..add('discount', discount)
          ..add('rewardPointsApplied', rewardPointsApplied)
          ..add('currentRewardValue', currentRewardValue)
          ..add('availableRewardPoints', availableRewardPoints)
          ..add('total', total)
          ..add('billingAddress', billingAddress)
          ..add('shippingAddress', shippingAddress)
          ..add('eta', eta)
          ..add('courierAllocation', courierAllocation)
          ..add('shippingWeight', shippingWeight)
          ..add('shippingQuantity', shippingQuantity)
          ..add('pickupAddress', pickupAddress)
          ..add('pickupAddressDetails', pickupAddressDetails)
          ..add('userPrescription', userPrescription)
          ..add('pickupUser', pickupUser))
        .toString();
  }
}

class CheckoutCartTotBuilder
    implements Builder<CheckoutCartTot, CheckoutCartTotBuilder> {
  _$CheckoutCartTot _$v;

  int _uniqueCode;
  int get uniqueCode => _$this._uniqueCode;
  set uniqueCode(int uniqueCode) => _$this._uniqueCode = uniqueCode;

  ListBuilder<LineItemsCartTot> _lineItems;
  ListBuilder<LineItemsCartTot> get lineItems =>
      _$this._lineItems ??= new ListBuilder<LineItemsCartTot>();
  set lineItems(ListBuilder<LineItemsCartTot> lineItems) =>
      _$this._lineItems = lineItems;

  double _subtotal;
  double get subtotal => _$this._subtotal;
  set subtotal(double subtotal) => _$this._subtotal = subtotal;

  TotTaxCartTotBuilder _totalTax;
  TotTaxCartTotBuilder get totalTax =>
      _$this._totalTax ??= new TotTaxCartTotBuilder();
  set totalTax(TotTaxCartTotBuilder totalTax) => _$this._totalTax = totalTax;

  double _totalShipping;
  double get totalShipping => _$this._totalShipping;
  set totalShipping(double totalShipping) =>
      _$this._totalShipping = totalShipping;

  int _deliveryType;
  int get deliveryType => _$this._deliveryType;
  set deliveryType(int deliveryType) => _$this._deliveryType = deliveryType;

  int _orderType;
  int get orderType => _$this._orderType;
  set orderType(int orderType) => _$this._orderType = orderType;

  ListBuilder<String> _coupons;
  ListBuilder<String> get coupons =>
      _$this._coupons ??= new ListBuilder<String>();
  set coupons(ListBuilder<String> coupons) => _$this._coupons = coupons;

  double _discount;
  double get discount => _$this._discount;
  set discount(double discount) => _$this._discount = discount;

  double _rewardPointsApplied;
  double get rewardPointsApplied => _$this._rewardPointsApplied;
  set rewardPointsApplied(double rewardPointsApplied) =>
      _$this._rewardPointsApplied = rewardPointsApplied;

  double _currentRewardValue;
  double get currentRewardValue => _$this._currentRewardValue;
  set currentRewardValue(double currentRewardValue) =>
      _$this._currentRewardValue = currentRewardValue;

  double _availableRewardPoints;
  double get availableRewardPoints => _$this._availableRewardPoints;
  set availableRewardPoints(double availableRewardPoints) =>
      _$this._availableRewardPoints = availableRewardPoints;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  CartTotDelAddressBuilder _billingAddress;
  CartTotDelAddressBuilder get billingAddress =>
      _$this._billingAddress ??= new CartTotDelAddressBuilder();
  set billingAddress(CartTotDelAddressBuilder billingAddress) =>
      _$this._billingAddress = billingAddress;

  CartTotDelAddressBuilder _shippingAddress;
  CartTotDelAddressBuilder get shippingAddress =>
      _$this._shippingAddress ??= new CartTotDelAddressBuilder();
  set shippingAddress(CartTotDelAddressBuilder shippingAddress) =>
      _$this._shippingAddress = shippingAddress;

  String _eta;
  String get eta => _$this._eta;
  set eta(String eta) => _$this._eta = eta;

  String _courierAllocation;
  String get courierAllocation => _$this._courierAllocation;
  set courierAllocation(String courierAllocation) =>
      _$this._courierAllocation = courierAllocation;

  double _shippingWeight;
  double get shippingWeight => _$this._shippingWeight;
  set shippingWeight(double shippingWeight) =>
      _$this._shippingWeight = shippingWeight;

  int _shippingQuantity;
  int get shippingQuantity => _$this._shippingQuantity;
  set shippingQuantity(int shippingQuantity) =>
      _$this._shippingQuantity = shippingQuantity;

  String _pickupAddress;
  String get pickupAddress => _$this._pickupAddress;
  set pickupAddress(String pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  CalTotPickUpAddressBuilder _pickupAddressDetails;
  CalTotPickUpAddressBuilder get pickupAddressDetails =>
      _$this._pickupAddressDetails ??= new CalTotPickUpAddressBuilder();
  set pickupAddressDetails(CalTotPickUpAddressBuilder pickupAddressDetails) =>
      _$this._pickupAddressDetails = pickupAddressDetails;

  PrescriptionCartTotObjBuilder _userPrescription;
  PrescriptionCartTotObjBuilder get userPrescription =>
      _$this._userPrescription ??= new PrescriptionCartTotObjBuilder();
  set userPrescription(PrescriptionCartTotObjBuilder userPrescription) =>
      _$this._userPrescription = userPrescription;

  PickupUserObjBuilder _pickupUser;
  PickupUserObjBuilder get pickupUser =>
      _$this._pickupUser ??= new PickupUserObjBuilder();
  set pickupUser(PickupUserObjBuilder pickupUser) =>
      _$this._pickupUser = pickupUser;

  CheckoutCartTotBuilder();

  CheckoutCartTotBuilder get _$this {
    if (_$v != null) {
      _uniqueCode = _$v.uniqueCode;
      _lineItems = _$v.lineItems?.toBuilder();
      _subtotal = _$v.subtotal;
      _totalTax = _$v.totalTax?.toBuilder();
      _totalShipping = _$v.totalShipping;
      _deliveryType = _$v.deliveryType;
      _orderType = _$v.orderType;
      _coupons = _$v.coupons?.toBuilder();
      _discount = _$v.discount;
      _rewardPointsApplied = _$v.rewardPointsApplied;
      _currentRewardValue = _$v.currentRewardValue;
      _availableRewardPoints = _$v.availableRewardPoints;
      _total = _$v.total;
      _billingAddress = _$v.billingAddress?.toBuilder();
      _shippingAddress = _$v.shippingAddress?.toBuilder();
      _eta = _$v.eta;
      _courierAllocation = _$v.courierAllocation;
      _shippingWeight = _$v.shippingWeight;
      _shippingQuantity = _$v.shippingQuantity;
      _pickupAddress = _$v.pickupAddress;
      _pickupAddressDetails = _$v.pickupAddressDetails?.toBuilder();
      _userPrescription = _$v.userPrescription?.toBuilder();
      _pickupUser = _$v.pickupUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckoutCartTot;
  }

  @override
  void update(void Function(CheckoutCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckoutCartTot build() {
    _$CheckoutCartTot _$result;
    try {
      _$result = _$v ??
          new _$CheckoutCartTot._(
              uniqueCode: uniqueCode,
              lineItems: _lineItems?.build(),
              subtotal: subtotal,
              totalTax: _totalTax?.build(),
              totalShipping: totalShipping,
              deliveryType: deliveryType,
              orderType: orderType,
              coupons: _coupons?.build(),
              discount: discount,
              rewardPointsApplied: rewardPointsApplied,
              currentRewardValue: currentRewardValue,
              availableRewardPoints: availableRewardPoints,
              total: total,
              billingAddress: _billingAddress?.build(),
              shippingAddress: _shippingAddress?.build(),
              eta: eta,
              courierAllocation: courierAllocation,
              shippingWeight: shippingWeight,
              shippingQuantity: shippingQuantity,
              pickupAddress: pickupAddress,
              pickupAddressDetails: _pickupAddressDetails?.build(),
              userPrescription: _userPrescription?.build(),
              pickupUser: _pickupUser?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lineItems';
        _lineItems?.build();

        _$failedField = 'totalTax';
        _totalTax?.build();

        _$failedField = 'coupons';
        _coupons?.build();

        _$failedField = 'billingAddress';
        _billingAddress?.build();
        _$failedField = 'shippingAddress';
        _shippingAddress?.build();

        _$failedField = 'pickupAddressDetails';
        _pickupAddressDetails?.build();
        _$failedField = 'userPrescription';
        _userPrescription?.build();
        _$failedField = 'pickupUser';
        _pickupUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CheckoutCartTot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LineItemsCartTot extends LineItemsCartTot {
  @override
  final UniversalProduct product;
  @override
  final int quantity;
  @override
  final double lineTotal;
  @override
  final TotTaxCartTot lineTax;
  @override
  final double lineShipping;

  factory _$LineItemsCartTot(
          [void Function(LineItemsCartTotBuilder) updates]) =>
      (new LineItemsCartTotBuilder()..update(updates)).build();

  _$LineItemsCartTot._(
      {this.product,
      this.quantity,
      this.lineTotal,
      this.lineTax,
      this.lineShipping})
      : super._();

  @override
  LineItemsCartTot rebuild(void Function(LineItemsCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineItemsCartTotBuilder toBuilder() =>
      new LineItemsCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineItemsCartTot &&
        product == other.product &&
        quantity == other.quantity &&
        lineTotal == other.lineTotal &&
        lineTax == other.lineTax &&
        lineShipping == other.lineShipping;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, product.hashCode), quantity.hashCode),
                lineTotal.hashCode),
            lineTax.hashCode),
        lineShipping.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LineItemsCartTot')
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('lineTotal', lineTotal)
          ..add('lineTax', lineTax)
          ..add('lineShipping', lineShipping))
        .toString();
  }
}

class LineItemsCartTotBuilder
    implements Builder<LineItemsCartTot, LineItemsCartTotBuilder> {
  _$LineItemsCartTot _$v;

  UniversalProductBuilder _product;
  UniversalProductBuilder get product =>
      _$this._product ??= new UniversalProductBuilder();
  set product(UniversalProductBuilder product) => _$this._product = product;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  double _lineTotal;
  double get lineTotal => _$this._lineTotal;
  set lineTotal(double lineTotal) => _$this._lineTotal = lineTotal;

  TotTaxCartTotBuilder _lineTax;
  TotTaxCartTotBuilder get lineTax =>
      _$this._lineTax ??= new TotTaxCartTotBuilder();
  set lineTax(TotTaxCartTotBuilder lineTax) => _$this._lineTax = lineTax;

  double _lineShipping;
  double get lineShipping => _$this._lineShipping;
  set lineShipping(double lineShipping) => _$this._lineShipping = lineShipping;

  LineItemsCartTotBuilder();

  LineItemsCartTotBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _quantity = _$v.quantity;
      _lineTotal = _$v.lineTotal;
      _lineTax = _$v.lineTax?.toBuilder();
      _lineShipping = _$v.lineShipping;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LineItemsCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineItemsCartTot;
  }

  @override
  void update(void Function(LineItemsCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineItemsCartTot build() {
    _$LineItemsCartTot _$result;
    try {
      _$result = _$v ??
          new _$LineItemsCartTot._(
              product: _product?.build(),
              quantity: quantity,
              lineTotal: lineTotal,
              lineTax: _lineTax?.build(),
              lineShipping: lineShipping);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();

        _$failedField = 'lineTax';
        _lineTax?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LineItemsCartTot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TotTaxCartTot extends TotTaxCartTot {
  @override
  final double cgst;
  @override
  final double sgst;
  @override
  final double igst;
  @override
  final double vat;

  factory _$TotTaxCartTot([void Function(TotTaxCartTotBuilder) updates]) =>
      (new TotTaxCartTotBuilder()..update(updates)).build();

  _$TotTaxCartTot._({this.cgst, this.sgst, this.igst, this.vat}) : super._();

  @override
  TotTaxCartTot rebuild(void Function(TotTaxCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TotTaxCartTotBuilder toBuilder() => new TotTaxCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotTaxCartTot &&
        cgst == other.cgst &&
        sgst == other.sgst &&
        igst == other.igst &&
        vat == other.vat;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, cgst.hashCode), sgst.hashCode), igst.hashCode),
        vat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TotTaxCartTot')
          ..add('cgst', cgst)
          ..add('sgst', sgst)
          ..add('igst', igst)
          ..add('vat', vat))
        .toString();
  }
}

class TotTaxCartTotBuilder
    implements Builder<TotTaxCartTot, TotTaxCartTotBuilder> {
  _$TotTaxCartTot _$v;

  double _cgst;
  double get cgst => _$this._cgst;
  set cgst(double cgst) => _$this._cgst = cgst;

  double _sgst;
  double get sgst => _$this._sgst;
  set sgst(double sgst) => _$this._sgst = sgst;

  double _igst;
  double get igst => _$this._igst;
  set igst(double igst) => _$this._igst = igst;

  double _vat;
  double get vat => _$this._vat;
  set vat(double vat) => _$this._vat = vat;

  TotTaxCartTotBuilder();

  TotTaxCartTotBuilder get _$this {
    if (_$v != null) {
      _cgst = _$v.cgst;
      _sgst = _$v.sgst;
      _igst = _$v.igst;
      _vat = _$v.vat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TotTaxCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TotTaxCartTot;
  }

  @override
  void update(void Function(TotTaxCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TotTaxCartTot build() {
    final _$result = _$v ??
        new _$TotTaxCartTot._(cgst: cgst, sgst: sgst, igst: igst, vat: vat);
    replace(_$result);
    return _$result;
  }
}

class _$SlotsCartTot extends SlotsCartTot {
  @override
  final String date;
  @override
  final BuiltList<TimeSlotsCartTot> time;

  factory _$SlotsCartTot([void Function(SlotsCartTotBuilder) updates]) =>
      (new SlotsCartTotBuilder()..update(updates)).build();

  _$SlotsCartTot._({this.date, this.time}) : super._();

  @override
  SlotsCartTot rebuild(void Function(SlotsCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SlotsCartTotBuilder toBuilder() => new SlotsCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlotsCartTot && date == other.date && time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SlotsCartTot')
          ..add('date', date)
          ..add('time', time))
        .toString();
  }
}

class SlotsCartTotBuilder
    implements Builder<SlotsCartTot, SlotsCartTotBuilder> {
  _$SlotsCartTot _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ListBuilder<TimeSlotsCartTot> _time;
  ListBuilder<TimeSlotsCartTot> get time =>
      _$this._time ??= new ListBuilder<TimeSlotsCartTot>();
  set time(ListBuilder<TimeSlotsCartTot> time) => _$this._time = time;

  SlotsCartTotBuilder();

  SlotsCartTotBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _time = _$v.time?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SlotsCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SlotsCartTot;
  }

  @override
  void update(void Function(SlotsCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SlotsCartTot build() {
    _$SlotsCartTot _$result;
    try {
      _$result = _$v ?? new _$SlotsCartTot._(date: date, time: _time?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'time';
        _time?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SlotsCartTot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TimeSlotsCartTot extends TimeSlotsCartTot {
  @override
  final String id;
  @override
  final TimeObjCalTot time;
  @override
  final int capacity;
  @override
  final String dateId;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$TimeSlotsCartTot(
          [void Function(TimeSlotsCartTotBuilder) updates]) =>
      (new TimeSlotsCartTotBuilder()..update(updates)).build();

  _$TimeSlotsCartTot._(
      {this.id,
      this.time,
      this.capacity,
      this.dateId,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  TimeSlotsCartTot rebuild(void Function(TimeSlotsCartTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotsCartTotBuilder toBuilder() =>
      new TimeSlotsCartTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotsCartTot &&
        id == other.id &&
        time == other.time &&
        capacity == other.capacity &&
        dateId == other.dateId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), time.hashCode), capacity.hashCode),
                dateId.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimeSlotsCartTot')
          ..add('id', id)
          ..add('time', time)
          ..add('capacity', capacity)
          ..add('dateId', dateId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TimeSlotsCartTotBuilder
    implements Builder<TimeSlotsCartTot, TimeSlotsCartTotBuilder> {
  _$TimeSlotsCartTot _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  TimeObjCalTotBuilder _time;
  TimeObjCalTotBuilder get time => _$this._time ??= new TimeObjCalTotBuilder();
  set time(TimeObjCalTotBuilder time) => _$this._time = time;

  int _capacity;
  int get capacity => _$this._capacity;
  set capacity(int capacity) => _$this._capacity = capacity;

  String _dateId;
  String get dateId => _$this._dateId;
  set dateId(String dateId) => _$this._dateId = dateId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  TimeSlotsCartTotBuilder();

  TimeSlotsCartTotBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _time = _$v.time?.toBuilder();
      _capacity = _$v.capacity;
      _dateId = _$v.dateId;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotsCartTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimeSlotsCartTot;
  }

  @override
  void update(void Function(TimeSlotsCartTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeSlotsCartTot build() {
    _$TimeSlotsCartTot _$result;
    try {
      _$result = _$v ??
          new _$TimeSlotsCartTot._(
              id: id,
              time: _time?.build(),
              capacity: capacity,
              dateId: dateId,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'time';
        _time?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimeSlotsCartTot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TimeObjCalTot extends TimeObjCalTot {
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$TimeObjCalTot([void Function(TimeObjCalTotBuilder) updates]) =>
      (new TimeObjCalTotBuilder()..update(updates)).build();

  _$TimeObjCalTot._({this.startTime, this.endTime}) : super._();

  @override
  TimeObjCalTot rebuild(void Function(TimeObjCalTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeObjCalTotBuilder toBuilder() => new TimeObjCalTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeObjCalTot &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, startTime.hashCode), endTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimeObjCalTot')
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeObjCalTotBuilder
    implements Builder<TimeObjCalTot, TimeObjCalTotBuilder> {
  _$TimeObjCalTot _$v;

  String _startTime;
  String get startTime => _$this._startTime;
  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;
  String get endTime => _$this._endTime;
  set endTime(String endTime) => _$this._endTime = endTime;

  TimeObjCalTotBuilder();

  TimeObjCalTotBuilder get _$this {
    if (_$v != null) {
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeObjCalTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimeObjCalTot;
  }

  @override
  void update(void Function(TimeObjCalTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeObjCalTot build() {
    final _$result =
        _$v ?? new _$TimeObjCalTot._(startTime: startTime, endTime: endTime);
    replace(_$result);
    return _$result;
  }
}

class _$CalTotPickUpAddress extends CalTotPickUpAddress {
  @override
  final String id;
  @override
  final PickupBranchCalTot pickupBranch;

  factory _$CalTotPickUpAddress(
          [void Function(CalTotPickUpAddressBuilder) updates]) =>
      (new CalTotPickUpAddressBuilder()..update(updates)).build();

  _$CalTotPickUpAddress._({this.id, this.pickupBranch}) : super._();

  @override
  CalTotPickUpAddress rebuild(
          void Function(CalTotPickUpAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalTotPickUpAddressBuilder toBuilder() =>
      new CalTotPickUpAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalTotPickUpAddress &&
        id == other.id &&
        pickupBranch == other.pickupBranch;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), pickupBranch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalTotPickUpAddress')
          ..add('id', id)
          ..add('pickupBranch', pickupBranch))
        .toString();
  }
}

class CalTotPickUpAddressBuilder
    implements Builder<CalTotPickUpAddress, CalTotPickUpAddressBuilder> {
  _$CalTotPickUpAddress _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  PickupBranchCalTotBuilder _pickupBranch;
  PickupBranchCalTotBuilder get pickupBranch =>
      _$this._pickupBranch ??= new PickupBranchCalTotBuilder();
  set pickupBranch(PickupBranchCalTotBuilder pickupBranch) =>
      _$this._pickupBranch = pickupBranch;

  CalTotPickUpAddressBuilder();

  CalTotPickUpAddressBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalTotPickUpAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CalTotPickUpAddress;
  }

  @override
  void update(void Function(CalTotPickUpAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalTotPickUpAddress build() {
    _$CalTotPickUpAddress _$result;
    try {
      _$result = _$v ??
          new _$CalTotPickUpAddress._(
              id: id, pickupBranch: _pickupBranch?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalTotPickUpAddress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PickupBranchCalTot extends PickupBranchCalTot {
  @override
  final String id;
  @override
  final String name;
  @override
  final int phoneNumber;
  @override
  final String addressLine1;
  @override
  final String addressLine2;
  @override
  final String addressLine3;
  @override
  final String area;
  @override
  final String landmark;
  @override
  final String city;
  @override
  final int zip;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$PickupBranchCalTot(
          [void Function(PickupBranchCalTotBuilder) updates]) =>
      (new PickupBranchCalTotBuilder()..update(updates)).build();

  _$PickupBranchCalTot._(
      {this.id,
      this.name,
      this.phoneNumber,
      this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.area,
      this.landmark,
      this.city,
      this.zip,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  PickupBranchCalTot rebuild(
          void Function(PickupBranchCalTotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickupBranchCalTotBuilder toBuilder() =>
      new PickupBranchCalTotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickupBranchCalTot &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        addressLine3 == other.addressLine3 &&
        area == other.area &&
        landmark == other.landmark &&
        city == other.city &&
        zip == other.zip &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            phoneNumber.hashCode),
                                        addressLine1.hashCode),
                                    addressLine2.hashCode),
                                addressLine3.hashCode),
                            area.hashCode),
                        landmark.hashCode),
                    city.hashCode),
                zip.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PickupBranchCalTot')
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('addressLine1', addressLine1)
          ..add('addressLine2', addressLine2)
          ..add('addressLine3', addressLine3)
          ..add('area', area)
          ..add('landmark', landmark)
          ..add('city', city)
          ..add('zip', zip)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PickupBranchCalTotBuilder
    implements Builder<PickupBranchCalTot, PickupBranchCalTotBuilder> {
  _$PickupBranchCalTot _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _addressLine1;
  String get addressLine1 => _$this._addressLine1;
  set addressLine1(String addressLine1) => _$this._addressLine1 = addressLine1;

  String _addressLine2;
  String get addressLine2 => _$this._addressLine2;
  set addressLine2(String addressLine2) => _$this._addressLine2 = addressLine2;

  String _addressLine3;
  String get addressLine3 => _$this._addressLine3;
  set addressLine3(String addressLine3) => _$this._addressLine3 = addressLine3;

  String _area;
  String get area => _$this._area;
  set area(String area) => _$this._area = area;

  String _landmark;
  String get landmark => _$this._landmark;
  set landmark(String landmark) => _$this._landmark = landmark;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  int _zip;
  int get zip => _$this._zip;
  set zip(int zip) => _$this._zip = zip;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  PickupBranchCalTotBuilder();

  PickupBranchCalTotBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _phoneNumber = _$v.phoneNumber;
      _addressLine1 = _$v.addressLine1;
      _addressLine2 = _$v.addressLine2;
      _addressLine3 = _$v.addressLine3;
      _area = _$v.area;
      _landmark = _$v.landmark;
      _city = _$v.city;
      _zip = _$v.zip;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickupBranchCalTot other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickupBranchCalTot;
  }

  @override
  void update(void Function(PickupBranchCalTotBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickupBranchCalTot build() {
    final _$result = _$v ??
        new _$PickupBranchCalTot._(
            id: id,
            name: name,
            phoneNumber: phoneNumber,
            addressLine1: addressLine1,
            addressLine2: addressLine2,
            addressLine3: addressLine3,
            area: area,
            landmark: landmark,
            city: city,
            zip: zip,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

class _$CartTotDelAddress extends CartTotDelAddress {
  @override
  final String id;
  @override
  final int label;
  @override
  final String name;
  @override
  final String userId;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final String zip;
  @override
  final int defaultAddress;
  @override
  final UserAddCartTotDelAddress userAddress;
  @override
  final String address1;
  @override
  final String address2;

  factory _$CartTotDelAddress(
          [void Function(CartTotDelAddressBuilder) updates]) =>
      (new CartTotDelAddressBuilder()..update(updates)).build();

  _$CartTotDelAddress._(
      {this.id,
      this.label,
      this.name,
      this.userId,
      this.city,
      this.state,
      this.country,
      this.zip,
      this.defaultAddress,
      this.userAddress,
      this.address1,
      this.address2})
      : super._();

  @override
  CartTotDelAddress rebuild(void Function(CartTotDelAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartTotDelAddressBuilder toBuilder() =>
      new CartTotDelAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartTotDelAddress &&
        id == other.id &&
        label == other.label &&
        name == other.name &&
        userId == other.userId &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        zip == other.zip &&
        defaultAddress == other.defaultAddress &&
        userAddress == other.userAddress &&
        address1 == other.address1 &&
        address2 == other.address2;
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
                                            $jc($jc(0, id.hashCode),
                                                label.hashCode),
                                            name.hashCode),
                                        userId.hashCode),
                                    city.hashCode),
                                state.hashCode),
                            country.hashCode),
                        zip.hashCode),
                    defaultAddress.hashCode),
                userAddress.hashCode),
            address1.hashCode),
        address2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartTotDelAddress')
          ..add('id', id)
          ..add('label', label)
          ..add('name', name)
          ..add('userId', userId)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('zip', zip)
          ..add('defaultAddress', defaultAddress)
          ..add('userAddress', userAddress)
          ..add('address1', address1)
          ..add('address2', address2))
        .toString();
  }
}

class CartTotDelAddressBuilder
    implements Builder<CartTotDelAddress, CartTotDelAddressBuilder> {
  _$CartTotDelAddress _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _label;
  int get label => _$this._label;
  set label(int label) => _$this._label = label;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  int _defaultAddress;
  int get defaultAddress => _$this._defaultAddress;
  set defaultAddress(int defaultAddress) =>
      _$this._defaultAddress = defaultAddress;

  UserAddCartTotDelAddressBuilder _userAddress;
  UserAddCartTotDelAddressBuilder get userAddress =>
      _$this._userAddress ??= new UserAddCartTotDelAddressBuilder();
  set userAddress(UserAddCartTotDelAddressBuilder userAddress) =>
      _$this._userAddress = userAddress;

  String _address1;
  String get address1 => _$this._address1;
  set address1(String address1) => _$this._address1 = address1;

  String _address2;
  String get address2 => _$this._address2;
  set address2(String address2) => _$this._address2 = address2;

  CartTotDelAddressBuilder();

  CartTotDelAddressBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _label = _$v.label;
      _name = _$v.name;
      _userId = _$v.userId;
      _city = _$v.city;
      _state = _$v.state;
      _country = _$v.country;
      _zip = _$v.zip;
      _defaultAddress = _$v.defaultAddress;
      _userAddress = _$v.userAddress?.toBuilder();
      _address1 = _$v.address1;
      _address2 = _$v.address2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartTotDelAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CartTotDelAddress;
  }

  @override
  void update(void Function(CartTotDelAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartTotDelAddress build() {
    _$CartTotDelAddress _$result;
    try {
      _$result = _$v ??
          new _$CartTotDelAddress._(
              id: id,
              label: label,
              name: name,
              userId: userId,
              city: city,
              state: state,
              country: country,
              zip: zip,
              defaultAddress: defaultAddress,
              userAddress: _userAddress?.build(),
              address1: address1,
              address2: address2);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userAddress';
        _userAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartTotDelAddress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserAddCartTotDelAddress extends UserAddCartTotDelAddress {
  @override
  final String line1;
  @override
  final String line2;
  @override
  final int phoneNumber;

  factory _$UserAddCartTotDelAddress(
          [void Function(UserAddCartTotDelAddressBuilder) updates]) =>
      (new UserAddCartTotDelAddressBuilder()..update(updates)).build();

  _$UserAddCartTotDelAddress._({this.line1, this.line2, this.phoneNumber})
      : super._();

  @override
  UserAddCartTotDelAddress rebuild(
          void Function(UserAddCartTotDelAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAddCartTotDelAddressBuilder toBuilder() =>
      new UserAddCartTotDelAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAddCartTotDelAddress &&
        line1 == other.line1 &&
        line2 == other.line2 &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, line1.hashCode), line2.hashCode), phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserAddCartTotDelAddress')
          ..add('line1', line1)
          ..add('line2', line2)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class UserAddCartTotDelAddressBuilder
    implements
        Builder<UserAddCartTotDelAddress, UserAddCartTotDelAddressBuilder> {
  _$UserAddCartTotDelAddress _$v;

  String _line1;
  String get line1 => _$this._line1;
  set line1(String line1) => _$this._line1 = line1;

  String _line2;
  String get line2 => _$this._line2;
  set line2(String line2) => _$this._line2 = line2;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  UserAddCartTotDelAddressBuilder();

  UserAddCartTotDelAddressBuilder get _$this {
    if (_$v != null) {
      _line1 = _$v.line1;
      _line2 = _$v.line2;
      _phoneNumber = _$v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAddCartTotDelAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserAddCartTotDelAddress;
  }

  @override
  void update(void Function(UserAddCartTotDelAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserAddCartTotDelAddress build() {
    final _$result = _$v ??
        new _$UserAddCartTotDelAddress._(
            line1: line1, line2: line2, phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

class _$PrescriptionCartTotObj extends PrescriptionCartTotObj {
  @override
  final BuiltList<String> prescriptionImage;
  @override
  final BuiltList<String> insuranceImage;
  @override
  final String id;
  @override
  final String prescriptionTitle;
  @override
  final String prescriptionComment;
  @override
  final int prescriptionType;
  @override
  final String memberId;

  factory _$PrescriptionCartTotObj(
          [void Function(PrescriptionCartTotObjBuilder) updates]) =>
      (new PrescriptionCartTotObjBuilder()..update(updates)).build();

  _$PrescriptionCartTotObj._(
      {this.prescriptionImage,
      this.insuranceImage,
      this.id,
      this.prescriptionTitle,
      this.prescriptionComment,
      this.prescriptionType,
      this.memberId})
      : super._();

  @override
  PrescriptionCartTotObj rebuild(
          void Function(PrescriptionCartTotObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrescriptionCartTotObjBuilder toBuilder() =>
      new PrescriptionCartTotObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrescriptionCartTotObj &&
        prescriptionImage == other.prescriptionImage &&
        insuranceImage == other.insuranceImage &&
        id == other.id &&
        prescriptionTitle == other.prescriptionTitle &&
        prescriptionComment == other.prescriptionComment &&
        prescriptionType == other.prescriptionType &&
        memberId == other.memberId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, prescriptionImage.hashCode),
                            insuranceImage.hashCode),
                        id.hashCode),
                    prescriptionTitle.hashCode),
                prescriptionComment.hashCode),
            prescriptionType.hashCode),
        memberId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrescriptionCartTotObj')
          ..add('prescriptionImage', prescriptionImage)
          ..add('insuranceImage', insuranceImage)
          ..add('id', id)
          ..add('prescriptionTitle', prescriptionTitle)
          ..add('prescriptionComment', prescriptionComment)
          ..add('prescriptionType', prescriptionType)
          ..add('memberId', memberId))
        .toString();
  }
}

class PrescriptionCartTotObjBuilder
    implements Builder<PrescriptionCartTotObj, PrescriptionCartTotObjBuilder> {
  _$PrescriptionCartTotObj _$v;

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

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _prescriptionTitle;
  String get prescriptionTitle => _$this._prescriptionTitle;
  set prescriptionTitle(String prescriptionTitle) =>
      _$this._prescriptionTitle = prescriptionTitle;

  String _prescriptionComment;
  String get prescriptionComment => _$this._prescriptionComment;
  set prescriptionComment(String prescriptionComment) =>
      _$this._prescriptionComment = prescriptionComment;

  int _prescriptionType;
  int get prescriptionType => _$this._prescriptionType;
  set prescriptionType(int prescriptionType) =>
      _$this._prescriptionType = prescriptionType;

  String _memberId;
  String get memberId => _$this._memberId;
  set memberId(String memberId) => _$this._memberId = memberId;

  PrescriptionCartTotObjBuilder();

  PrescriptionCartTotObjBuilder get _$this {
    if (_$v != null) {
      _prescriptionImage = _$v.prescriptionImage?.toBuilder();
      _insuranceImage = _$v.insuranceImage?.toBuilder();
      _id = _$v.id;
      _prescriptionTitle = _$v.prescriptionTitle;
      _prescriptionComment = _$v.prescriptionComment;
      _prescriptionType = _$v.prescriptionType;
      _memberId = _$v.memberId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrescriptionCartTotObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrescriptionCartTotObj;
  }

  @override
  void update(void Function(PrescriptionCartTotObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrescriptionCartTotObj build() {
    _$PrescriptionCartTotObj _$result;
    try {
      _$result = _$v ??
          new _$PrescriptionCartTotObj._(
              prescriptionImage: _prescriptionImage?.build(),
              insuranceImage: _insuranceImage?.build(),
              id: id,
              prescriptionTitle: prescriptionTitle,
              prescriptionComment: prescriptionComment,
              prescriptionType: prescriptionType,
              memberId: memberId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'prescriptionImage';
        _prescriptionImage?.build();
        _$failedField = 'insuranceImage';
        _insuranceImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrescriptionCartTotObj', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
