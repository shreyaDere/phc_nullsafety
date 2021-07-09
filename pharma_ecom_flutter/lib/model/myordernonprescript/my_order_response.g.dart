// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyOrderResponse> _$myOrderResponseSerializer =
    new _$MyOrderResponseSerializer();
Serializer<Orders> _$ordersSerializer = new _$OrdersSerializer();
Serializer<LineItemOrder> _$lineItemOrderSerializer =
    new _$LineItemOrderSerializer();

class _$MyOrderResponseSerializer
    implements StructuredSerializer<MyOrderResponse> {
  @override
  final Iterable<Type> types = const [MyOrderResponse, _$MyOrderResponse];
  @override
  final String wireName = 'MyOrderResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, MyOrderResponse object,
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
            specifiedType:
                const FullType(BuiltList, const [const FullType(Orders)])));
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
  MyOrderResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyOrderResponseBuilder();

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
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Orders)]))
              as BuiltList<Object>);
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

class _$OrdersSerializer implements StructuredSerializer<Orders> {
  @override
  final Iterable<Type> types = const [Orders, _$Orders];
  @override
  final String wireName = 'Orders';

  @override
  Iterable<Object> serialize(Serializers serializers, Orders object,
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
    if (object.lineItems != null) {
      result
        ..add('line_items')
        ..add(serializers.serialize(object.lineItems,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LineItemOrder)])));
    }
    return result;
  }

  @override
  Orders deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersBuilder();

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
        case 'order_status':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line_items':
          result.lineItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LineItemOrder)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$LineItemOrderSerializer implements StructuredSerializer<LineItemOrder> {
  @override
  final Iterable<Type> types = const [LineItemOrder, _$LineItemOrder];
  @override
  final String wireName = 'LineItemOrder';

  @override
  Iterable<Object> serialize(Serializers serializers, LineItemOrder object,
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
    if (object.linetotal != null) {
      result
        ..add('line_total')
        ..add(serializers.serialize(object.linetotal,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  LineItemOrder deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineItemOrderBuilder();

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
          result.linetotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MyOrderResponse extends MyOrderResponse {
  @override
  final int status;
  @override
  final BuiltList<Orders> orders;
  @override
  final String message;

  factory _$MyOrderResponse([void Function(MyOrderResponseBuilder) updates]) =>
      (new MyOrderResponseBuilder()..update(updates)).build();

  _$MyOrderResponse._({this.status, this.orders, this.message}) : super._();

  @override
  MyOrderResponse rebuild(void Function(MyOrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyOrderResponseBuilder toBuilder() =>
      new MyOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyOrderResponse &&
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
    return (newBuiltValueToStringHelper('MyOrderResponse')
          ..add('status', status)
          ..add('orders', orders)
          ..add('message', message))
        .toString();
  }
}

class MyOrderResponseBuilder
    implements Builder<MyOrderResponse, MyOrderResponseBuilder> {
  _$MyOrderResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<Orders> _orders;
  ListBuilder<Orders> get orders =>
      _$this._orders ??= new ListBuilder<Orders>();
  set orders(ListBuilder<Orders> orders) => _$this._orders = orders;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  MyOrderResponseBuilder();

  MyOrderResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _orders = _$v.orders?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyOrderResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MyOrderResponse;
  }

  @override
  void update(void Function(MyOrderResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyOrderResponse build() {
    _$MyOrderResponse _$result;
    try {
      _$result = _$v ??
          new _$MyOrderResponse._(
              status: status, orders: _orders?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MyOrderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Orders extends Orders {
  @override
  final int orderId;
  @override
  final int deliveryType;
  @override
  final double total;
  @override
  final int orderStatus;
  @override
  final String createdAt;
  @override
  final BuiltList<LineItemOrder> lineItems;

  factory _$Orders([void Function(OrdersBuilder) updates]) =>
      (new OrdersBuilder()..update(updates)).build();

  _$Orders._(
      {this.orderId,
      this.deliveryType,
      this.total,
      this.orderStatus,
      this.createdAt,
      this.lineItems})
      : super._();

  @override
  Orders rebuild(void Function(OrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersBuilder toBuilder() => new OrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Orders &&
        orderId == other.orderId &&
        deliveryType == other.deliveryType &&
        total == other.total &&
        orderStatus == other.orderStatus &&
        createdAt == other.createdAt &&
        lineItems == other.lineItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, orderId.hashCode), deliveryType.hashCode),
                    total.hashCode),
                orderStatus.hashCode),
            createdAt.hashCode),
        lineItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Orders')
          ..add('orderId', orderId)
          ..add('deliveryType', deliveryType)
          ..add('total', total)
          ..add('orderStatus', orderStatus)
          ..add('createdAt', createdAt)
          ..add('lineItems', lineItems))
        .toString();
  }
}

class OrdersBuilder implements Builder<Orders, OrdersBuilder> {
  _$Orders _$v;

  int _orderId;
  int get orderId => _$this._orderId;
  set orderId(int orderId) => _$this._orderId = orderId;

  int _deliveryType;
  int get deliveryType => _$this._deliveryType;
  set deliveryType(int deliveryType) => _$this._deliveryType = deliveryType;

  double _total;
  double get total => _$this._total;
  set total(double total) => _$this._total = total;

  int _orderStatus;
  int get orderStatus => _$this._orderStatus;
  set orderStatus(int orderStatus) => _$this._orderStatus = orderStatus;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  ListBuilder<LineItemOrder> _lineItems;
  ListBuilder<LineItemOrder> get lineItems =>
      _$this._lineItems ??= new ListBuilder<LineItemOrder>();
  set lineItems(ListBuilder<LineItemOrder> lineItems) =>
      _$this._lineItems = lineItems;

  OrdersBuilder();

  OrdersBuilder get _$this {
    if (_$v != null) {
      _orderId = _$v.orderId;
      _deliveryType = _$v.deliveryType;
      _total = _$v.total;
      _orderStatus = _$v.orderStatus;
      _createdAt = _$v.createdAt;
      _lineItems = _$v.lineItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Orders other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Orders;
  }

  @override
  void update(void Function(OrdersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Orders build() {
    _$Orders _$result;
    try {
      _$result = _$v ??
          new _$Orders._(
              orderId: orderId,
              deliveryType: deliveryType,
              total: total,
              orderStatus: orderStatus,
              createdAt: createdAt,
              lineItems: _lineItems?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lineItems';
        _lineItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Orders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LineItemOrder extends LineItemOrder {
  @override
  final UniversalProduct product;
  @override
  final int quantity;
  @override
  final double linetotal;

  factory _$LineItemOrder([void Function(LineItemOrderBuilder) updates]) =>
      (new LineItemOrderBuilder()..update(updates)).build();

  _$LineItemOrder._({this.product, this.quantity, this.linetotal}) : super._();

  @override
  LineItemOrder rebuild(void Function(LineItemOrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineItemOrderBuilder toBuilder() => new LineItemOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineItemOrder &&
        product == other.product &&
        quantity == other.quantity &&
        linetotal == other.linetotal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, product.hashCode), quantity.hashCode), linetotal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LineItemOrder')
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('linetotal', linetotal))
        .toString();
  }
}

class LineItemOrderBuilder
    implements Builder<LineItemOrder, LineItemOrderBuilder> {
  _$LineItemOrder _$v;

  UniversalProductBuilder _product;
  UniversalProductBuilder get product =>
      _$this._product ??= new UniversalProductBuilder();
  set product(UniversalProductBuilder product) => _$this._product = product;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  double _linetotal;
  double get linetotal => _$this._linetotal;
  set linetotal(double linetotal) => _$this._linetotal = linetotal;

  LineItemOrderBuilder();

  LineItemOrderBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _quantity = _$v.quantity;
      _linetotal = _$v.linetotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LineItemOrder other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineItemOrder;
  }

  @override
  void update(void Function(LineItemOrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineItemOrder build() {
    _$LineItemOrder _$result;
    try {
      _$result = _$v ??
          new _$LineItemOrder._(
              product: _product?.build(),
              quantity: quantity,
              linetotal: linetotal);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LineItemOrder', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
