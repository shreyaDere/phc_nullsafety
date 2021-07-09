import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'my_order_response.g.dart';

abstract class MyOrderResponse
    implements Built<MyOrderResponse, MyOrderResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  BuiltList<Orders> get orders;
  @nullable
  String get message;
  MyOrderResponse._();

  factory MyOrderResponse([updates(MyOrderResponseBuilder b)]) =
      _$MyOrderResponse;

  static Serializer<MyOrderResponse> get serializer =>
      _$myOrderResponseSerializer;
}

abstract class Orders implements Built<Orders, OrdersBuilder> {
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
  @BuiltValueField(wireName: "order_status")
  int get orderStatus;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "line_items")
  BuiltList<LineItemOrder> get lineItems;

  Orders._();

  factory Orders([updates(OrdersBuilder b)]) = _$Orders;

  static Serializer<Orders> get serializer => _$ordersSerializer;
}

abstract class LineItemOrder
    implements Built<LineItemOrder, LineItemOrderBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "product")
  UniversalProduct get product;
  @nullable
  @BuiltValueField(wireName: "quantity")
  int get quantity;
  @nullable
  @BuiltValueField(wireName: "line_total")
  double get linetotal;

  LineItemOrder._();

  factory LineItemOrder([updates(LineItemOrderBuilder b)]) = _$LineItemOrder;

  static Serializer<LineItemOrder> get serializer => _$lineItemOrderSerializer;
}

// abstract class AddressOrderDetail
//     implements Built<AddressOrderDetail, AddressOrderDetailBuilder> {
//   // fields go here
//   @nullable
//   @BuiltValueField(wireName: "_id")
//   String get id;
//   @nullable
//   @BuiltValueField(wireName: "name")
//   String get name;
//   @nullable
//   @BuiltValueField(wireName: "address1")
//   String get address1;
//   @nullable
//   @BuiltValueField(wireName: "address2")
//   String get address2;
//   @nullable
//   @BuiltValueField(wireName: "city")
//   String get city;
//   @nullable
//   @BuiltValueField(wireName: "state")
//   String get state;
//   @nullable
//   @BuiltValueField(wireName: "country")
//   String get country;
//   @nullable
//   @BuiltValueField(wireName: "zip")
//   String get zip;

//   AddressOrderDetail._();

//   factory AddressOrderDetail([updates(AddressOrderDetailBuilder b)]) =
//       _$AddressOrderDetail;

//   static Serializer<AddressOrderDetail> get serializer =>
//       _$addressOrderDetailSerializer;
// }

// abstract class UserForOrder
//     implements Built<UserForOrder, UserForOrderBuilder> {
//   // fields go here
//   @nullable
//   @BuiltValueField(wireName: "_id")
//   String get sId;
//   @nullable
//   @BuiltValueField(wireName: "user_id")
//   String get userId;
//   @nullable
//   String get name;
//   @nullable
//   String get email;
//   @nullable
//   @BuiltValueField(wireName: "phone_number")
//   String get phoneNumber;

//   UserForOrder._();

//   factory UserForOrder([updates(UserForOrderBuilder b)]) = _$UserForOrder;

//   static Serializer<UserForOrder> get serializer => _$userForOrderSerializer;
// }

// abstract class LineItemsForProduct
//     implements Built<LineItemsForProduct, LineItemsForProductBuilder> {
//   // fields go here
//   @nullable
//   MyOrderProduct get product;
//   @nullable
//   int get quantity;
//   @nullable
//   @BuiltValueField(wireName: "line_total")
//   int get lineTotal;
//   @nullable
//   @BuiltValueField(wireName: "line_tax")
//   TotTaxCartTot get lineTax;
//   @nullable
//   @BuiltValueField(wireName: "line_shipping")
//   int get lineShipping;

//   LineItemsForProduct._();

//   factory LineItemsForProduct([updates(LineItemsForProductBuilder b)]) =
//       _$LineItemsForProduct;

//   static Serializer<LineItemsForProduct> get serializer =>
//       _$lineItemsForProductSerializer;
// }

// abstract class MyOrderProduct
//     implements Built<MyOrderProduct, MyOrderProductBuilder> {
//   // fields go here
//   @nullable
//   @BuiltValueField(wireName: "name")
//   String get name;
//   @nullable
//   @BuiltValueField(wireName: "regular_price")
//   double get regularPrice;
//   @nullable
//   @BuiltValueField(wireName: "sale_price")
//   double get salePrice;
//   @nullable
//   @BuiltValueField(wireName: "featured_image")
//   String get featuredImage;

//   MyOrderProduct._();

//   factory MyOrderProduct([updates(MyOrderProductBuilder b)]) = _$MyOrderProduct;

//   static Serializer<MyOrderProduct> get serializer =>
//       _$myOrderProductSerializer;
// }
