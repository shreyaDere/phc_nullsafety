import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'cart_tot_request.g.dart';

abstract class CartTotRequest
    implements Built<CartTotRequest, CartTotRequestBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "billing_address")
  UniversalResponseAddress get billingAddress;
  @nullable
  @BuiltValueField(wireName: "shipping_address")
  UniversalResponseAddress get shippingAddress;
  @nullable
  @BuiltValueField(wireName: "uniqueCode")
  int get uniqueCode;
  @nullable
  @BuiltValueField(wireName: "cart_items")
  BuiltList<UniversalProduct> get cartItems;
  @nullable
  @BuiltValueField(wireName: "coupons")
  BuiltList<String> get coupons;
  @nullable
  @BuiltValueField(wireName: "delivery_type")
  int get deliveryType;
  @nullable
  @BuiltValueField(wireName: "applyRewards")
  int get applyRewards;
  @nullable
  @BuiltValueField(wireName: "prescriptionId")
  String get prescriptionId;
  @nullable
  @BuiltValueField(wireName: "shipping_id")
  String get shippingId;
  @nullable
  @BuiltValueField(wireName: "orderType")
  int get orderType;
  @nullable
  @BuiltValueField(wireName: "pickupAddress")
  String get pickupAddress;
  @nullable
  @BuiltValueField(wireName: "pickupUser")
  PickupUserObj get pickupUser;

  CartTotRequest._();

  factory CartTotRequest([updates(CartTotRequestBuilder b)]) = _$CartTotRequest;

  static Serializer<CartTotRequest> get serializer =>
      _$cartTotRequestSerializer;
}

abstract class PickupUserObj
    implements Built<PickupUserObj, PickupUserObjBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  String get phoneNumber;
  @nullable
  @BuiltValueField(wireName: "otp")
  int get otp;

  PickupUserObj._();

  factory PickupUserObj([updates(PickupUserObjBuilder b)]) = _$PickupUserObj;

  static Serializer<PickupUserObj> get serializer => _$pickupUserObjSerializer;
}
