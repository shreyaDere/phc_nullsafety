import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';

part 'order_detail_response.g.dart';

abstract class OrderDetailResponse
    implements Built<OrderDetailResponse, OrderDetailResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  OrderDetail get orders;
  @nullable
  String get message;

  OrderDetailResponse._();

  factory OrderDetailResponse([updates(OrderDetailResponseBuilder b)]) =
      _$OrderDetailResponse;

  static Serializer<OrderDetailResponse> get serializer =>
      _$orderDetailResponseSerializer;
}

abstract class OrderDetail implements Built<OrderDetail, OrderDetailBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "order_id")
  int get orderId;
  @nullable
  @BuiltValueField(wireName: "delivery_type")
  int get deliveryType;
  @nullable
  @BuiltValueField(wireName: "total")
  double get total;
  @nullable
  @BuiltValueField(wireName: "rewardPointsEarned")
  double get rewardPointsEarned;
  @nullable
  @BuiltValueField(wireName: "rewardPointsApplied")
  double get rewardPointsApplied;
  @nullable
  @BuiltValueField(wireName: "pickupAddress")
  PickupBranchCalTot get pickupAddress;
  @nullable
  @BuiltValueField(wireName: "order_status")
  int get orderStatus;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "deliveryDate")
  String get deliveryDate;
  @nullable
  @BuiltValueField(wireName: "line_items")
  BuiltList<LineItemOrder> get lineItems;
  @nullable
  @BuiltValueField(wireName: "prescriptionImage")
  BuiltList<String> get prescriptionImage;
  @nullable
  @BuiltValueField(wireName: "insuranceImage")
  BuiltList<String> get insuranceImage;
  @nullable
  @BuiltValueField(wireName: "coupons")
  BuiltList<String> get coupons;
  @nullable
  @BuiltValueField(wireName: "uniqueCode")
  int get uniqueCode;
  @nullable
  @BuiltValueField(wireName: "appliedPoints")
  double get appliedPoints;
  @nullable
  @BuiltValueField(wireName: "total_shipping")
  double get totalShipping;
  @nullable
  @BuiltValueField(wireName: "subtotal")
  double get subtotal;
  @nullable
  @BuiltValueField(wireName: "discount")
  double get discount;
  @nullable
  @BuiltValueField(wireName: "total_tax")
  BuiltList<TotalTaxMyOrders> get totalTax;
  @nullable
  @BuiltValueField(wireName: "order_tracking")
  BuiltList<OrderTrackingMyOrder> get orderTracking;
  @nullable
  @BuiltValueField(wireName: "deliveryTime")
  DeliveryTimeObj get deliveryTime;
  @nullable
  @BuiltValueField(wireName: "prescriptionTitle")
  String get prescriptionTitle;
  @nullable
  @BuiltValueField(wireName: "prescriptionComment")
  String get prescriptionComment;
  @nullable
  @BuiltValueField(wireName: "shipping_method")
  ShippingMethodObjMyOrders get shippingMethod;
  @nullable
  @BuiltValueField(wireName: "pickupUser")
  PickupUserObj get pickupUser;

  OrderDetail._();

  factory OrderDetail([updates(OrderDetailBuilder b)]) = _$OrderDetail;

  static Serializer<OrderDetail> get serializer => _$orderDetailSerializer;
}

abstract class ShippingMethodObjMyOrders
    implements
        Built<ShippingMethodObjMyOrders, ShippingMethodObjMyOrdersBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "description")
  String get description;

  ShippingMethodObjMyOrders._();

  factory ShippingMethodObjMyOrders(
          [updates(ShippingMethodObjMyOrdersBuilder b)]) =
      _$ShippingMethodObjMyOrders;

  static Serializer<ShippingMethodObjMyOrders> get serializer =>
      _$shippingMethodObjMyOrdersSerializer;
}

abstract class DeliveryTimeObj
    implements Built<DeliveryTimeObj, DeliveryTimeObjBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "date_id")
  String get dateId;
  @nullable
  @BuiltValueField(wireName: "capacity")
  int get capacity;
  @nullable
  @BuiltValueField(wireName: "time")
  TimeMyOrderObj get time;

  DeliveryTimeObj._();

  factory DeliveryTimeObj([updates(DeliveryTimeObjBuilder b)]) =
      _$DeliveryTimeObj;

  static Serializer<DeliveryTimeObj> get serializer =>
      _$deliveryTimeObjSerializer;
}

abstract class TimeMyOrderObj
    implements Built<TimeMyOrderObj, TimeMyOrderObjBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "startTime")
  String get startTime;
  @nullable
  @BuiltValueField(wireName: "endTime")
  String get endTime;

  TimeMyOrderObj._();

  factory TimeMyOrderObj([updates(TimeMyOrderObjBuilder b)]) = _$TimeMyOrderObj;

  static Serializer<TimeMyOrderObj> get serializer =>
      _$timeMyOrderObjSerializer;
}

abstract class OrderTrackingMyOrder
    implements Built<OrderTrackingMyOrder, OrderTrackingMyOrderBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "timestamp")
  String get timestamp;
  @nullable
  @BuiltValueField(wireName: "comments")
  String get comments;
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;

  OrderTrackingMyOrder._();

  factory OrderTrackingMyOrder([updates(OrderTrackingMyOrderBuilder b)]) =
      _$OrderTrackingMyOrder;

  static Serializer<OrderTrackingMyOrder> get serializer =>
      _$orderTrackingMyOrderSerializer;
}

abstract class TotalTaxMyOrders
    implements Built<TotalTaxMyOrders, TotalTaxMyOrdersBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "VAT")
  double get vat;

  TotalTaxMyOrders._();

  factory TotalTaxMyOrders([updates(TotalTaxMyOrdersBuilder b)]) =
      _$TotalTaxMyOrders;

  static Serializer<TotalTaxMyOrders> get serializer =>
      _$totalTaxMyOrdersSerializer;
}
