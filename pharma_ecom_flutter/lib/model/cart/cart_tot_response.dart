import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

import 'cart_tot_request.dart';

part 'cart_tot_response.g.dart';

abstract class CartTotResponse
    implements Built<CartTotResponse, CartTotResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "data")
  DataCartTot get data;
  @nullable
  @BuiltValueField(wireName: "message")
  String get message;

  CartTotResponse._();

  factory CartTotResponse([updates(CartTotResponseBuilder b)]) =
      _$CartTotResponse;

  static Serializer<CartTotResponse> get serializer =>
      _$cartTotResponseSerializer;
}

abstract class DataCartTot implements Built<DataCartTot, DataCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "checkout")
  CheckoutCartTot get checkout;
  @nullable
  @BuiltValueField(wireName: "Dates")
  BuiltList<String> get dates;
  @nullable
  @BuiltValueField(wireName: "Slots")
  BuiltList<SlotsCartTot> get slots;

  DataCartTot._();

  factory DataCartTot([updates(DataCartTotBuilder b)]) = _$DataCartTot;

  static Serializer<DataCartTot> get serializer => _$dataCartTotSerializer;
}

abstract class CheckoutCartTot
    implements Built<CheckoutCartTot, CheckoutCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "uniqueCode")
  int get uniqueCode;
  @nullable
  @BuiltValueField(wireName: "line_items")
  BuiltList<LineItemsCartTot> get lineItems;
  @nullable
  @BuiltValueField(wireName: "subtotal")
  double get subtotal;
  @nullable
  @BuiltValueField(wireName: "total_tax")
  TotTaxCartTot get totalTax;
  @nullable
  @BuiltValueField(wireName: "total_shipping")
  double get totalShipping;
  @nullable
  @BuiltValueField(wireName: "delivery_type")
  int get deliveryType;
  @nullable
  @BuiltValueField(wireName: "orderType")
  int get orderType;
  @nullable
  @BuiltValueField(wireName: "coupons")
  BuiltList<String> get coupons;
  @nullable
  @BuiltValueField(wireName: "discount")
  double get discount;
  @nullable
  @BuiltValueField(wireName: "rewardPointsApplied")
  double get rewardPointsApplied;
  @nullable
  @BuiltValueField(wireName: "currentRewardValue")
  double get currentRewardValue;
  @nullable
  @BuiltValueField(wireName: "availableRewardPoints")
  double get availableRewardPoints;
  @nullable
  @BuiltValueField(wireName: "total")
  double get total;
  @nullable
  @BuiltValueField(wireName: "billing_address")
  CartTotDelAddress get billingAddress;
  @nullable
  @BuiltValueField(wireName: "shipping_address")
  CartTotDelAddress get shippingAddress;
  @nullable
  @BuiltValueField(wireName: "eta")
  String get eta;
  @nullable
  @BuiltValueField(wireName: "courier_allocation")
  String get courierAllocation;
  @nullable
  @BuiltValueField(wireName: "shipping_weight")
  double get shippingWeight;
  @nullable
  @BuiltValueField(wireName: "shipping_quantity")
  int get shippingQuantity;
  @nullable
  @BuiltValueField(wireName: "pickupAddress")
  String get pickupAddress;
  @nullable
  @BuiltValueField(wireName: "pickupAddressDetails")
  CalTotPickUpAddress get pickupAddressDetails;
  @nullable
  @BuiltValueField(wireName: "userPrescription")
  PrescriptionCartTotObj get userPrescription;
  @nullable
  @BuiltValueField(wireName: "pickupUser")
  PickupUserObj get pickupUser;

  CheckoutCartTot._();

  factory CheckoutCartTot([updates(CheckoutCartTotBuilder b)]) =
      _$CheckoutCartTot;

  static Serializer<CheckoutCartTot> get serializer =>
      _$checkoutCartTotSerializer;
}

abstract class LineItemsCartTot
    implements Built<LineItemsCartTot, LineItemsCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "product")
  UniversalProduct get product;
  @nullable
  @BuiltValueField(wireName: "quantity")
  int get quantity;
  @nullable
  @BuiltValueField(wireName: "line_total")
  double get lineTotal;
  @nullable
  @BuiltValueField(wireName: "line_tax")
  TotTaxCartTot get lineTax;
  @nullable
  @BuiltValueField(wireName: "line_shipping")
  double get lineShipping;

  LineItemsCartTot._();

  factory LineItemsCartTot([updates(LineItemsCartTotBuilder b)]) =
      _$LineItemsCartTot;

  static Serializer<LineItemsCartTot> get serializer =>
      _$lineItemsCartTotSerializer;
}

abstract class TotTaxCartTot
    implements Built<TotTaxCartTot, TotTaxCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "CGST")
  double get cgst;
  @nullable
  @BuiltValueField(wireName: "SGST")
  double get sgst;
  @nullable
  @BuiltValueField(wireName: "IGST")
  double get igst;
  @nullable
  @BuiltValueField(wireName: "VAT")
  double get vat;

  TotTaxCartTot._();

  factory TotTaxCartTot([updates(TotTaxCartTotBuilder b)]) = _$TotTaxCartTot;

  static Serializer<TotTaxCartTot> get serializer => _$totTaxCartTotSerializer;
}

abstract class SlotsCartTot
    implements Built<SlotsCartTot, SlotsCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "Date")
  String get date;
  @nullable
  @BuiltValueField(wireName: "Time")
  BuiltList<TimeSlotsCartTot> get time;

  SlotsCartTot._();

  factory SlotsCartTot([updates(SlotsCartTotBuilder b)]) = _$SlotsCartTot;

  static Serializer<SlotsCartTot> get serializer => _$slotsCartTotSerializer;
}

abstract class TimeSlotsCartTot
    implements Built<TimeSlotsCartTot, TimeSlotsCartTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "time")
  TimeObjCalTot get time;
  @nullable
  @BuiltValueField(wireName: "capacity")
  int get capacity;
  @nullable
  @BuiltValueField(wireName: "date_id")
  String get dateId;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "updatedAt")
  String get updatedAt;

  TimeSlotsCartTot._();

  factory TimeSlotsCartTot([updates(TimeSlotsCartTotBuilder b)]) =
      _$TimeSlotsCartTot;

  static Serializer<TimeSlotsCartTot> get serializer =>
      _$timeSlotsCartTotSerializer;
}

abstract class TimeObjCalTot
    implements Built<TimeObjCalTot, TimeObjCalTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "startTime")
  String get startTime;
  @nullable
  @BuiltValueField(wireName: "endTime")
  String get endTime;

  TimeObjCalTot._();

  factory TimeObjCalTot([updates(TimeObjCalTotBuilder b)]) = _$TimeObjCalTot;

  static Serializer<TimeObjCalTot> get serializer => _$timeObjCalTotSerializer;
}

abstract class CalTotPickUpAddress
    implements Built<CalTotPickUpAddress, CalTotPickUpAddressBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "pickupBranch")
  PickupBranchCalTot get pickupBranch;

  CalTotPickUpAddress._();

  factory CalTotPickUpAddress([updates(CalTotPickUpAddressBuilder b)]) =
      _$CalTotPickUpAddress;

  static Serializer<CalTotPickUpAddress> get serializer =>
      _$calTotPickUpAddressSerializer;
}

abstract class PickupBranchCalTot
    implements Built<PickupBranchCalTot, PickupBranchCalTotBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  int get phoneNumber;
  @nullable
  @BuiltValueField(wireName: "addressLine1")
  String get addressLine1;
  @nullable
  @BuiltValueField(wireName: "addressLine2")
  String get addressLine2;
  @nullable
  @BuiltValueField(wireName: "addressLine3")
  String get addressLine3;
  @nullable
  @BuiltValueField(wireName: "area")
  String get area;
  @nullable
  @BuiltValueField(wireName: "landmark")
  String get landmark;
  @nullable
  @BuiltValueField(wireName: "city")
  String get city;
  @nullable
  @BuiltValueField(wireName: "zip")
  int get zip;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "updatedAt")
  String get updatedAt;

  PickupBranchCalTot._();

  factory PickupBranchCalTot([updates(PickupBranchCalTotBuilder b)]) =
      _$PickupBranchCalTot;

  static Serializer<PickupBranchCalTot> get serializer =>
      _$pickupBranchCalTotSerializer;
}

abstract class CartTotDelAddress
    implements Built<CartTotDelAddress, CartTotDelAddressBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "label")
  int get label;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  @BuiltValueField(wireName: "city")
  String get city;
  @nullable
  @BuiltValueField(wireName: "state")
  String get state;
  @nullable
  @BuiltValueField(wireName: "country")
  String get country;
  @nullable
  @BuiltValueField(wireName: "zip")
  String get zip;
  @nullable
  @BuiltValueField(wireName: "defaultAddress")
  int get defaultAddress;
  @nullable
  @BuiltValueField(wireName: "user_address")
  UserAddCartTotDelAddress get userAddress;
  @nullable
  String get address1;
  @nullable
  String get address2;

  CartTotDelAddress._();

  factory CartTotDelAddress([updates(CartTotDelAddressBuilder b)]) =
      _$CartTotDelAddress;

  static Serializer<CartTotDelAddress> get serializer =>
      _$cartTotDelAddressSerializer;
}

abstract class UserAddCartTotDelAddress
    implements
        Built<UserAddCartTotDelAddress, UserAddCartTotDelAddressBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "line1")
  String get line1;
  @nullable
  @BuiltValueField(wireName: "line2")
  String get line2;
  @nullable
  @BuiltValueField(wireName: "phoneNumber")
  int get phoneNumber;

  UserAddCartTotDelAddress._();

  factory UserAddCartTotDelAddress(
          [updates(UserAddCartTotDelAddressBuilder b)]) =
      _$UserAddCartTotDelAddress;

  static Serializer<UserAddCartTotDelAddress> get serializer =>
      _$userAddCartTotDelAddressSerializer;
}

abstract class PrescriptionCartTotObj
    implements Built<PrescriptionCartTotObj, PrescriptionCartTotObjBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "prescriptionImage")
  BuiltList<String> get prescriptionImage;
  @nullable
  @BuiltValueField(wireName: "insuranceImage")
  BuiltList<String> get insuranceImage;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "prescriptionTitle")
  String get prescriptionTitle;
  @nullable
  @BuiltValueField(wireName: "prescriptionComment")
  String get prescriptionComment;
  @nullable
  @BuiltValueField(wireName: "prescriptionType")
  int get prescriptionType;
  @nullable
  @BuiltValueField(wireName: "memberId")
  String get memberId;

  PrescriptionCartTotObj._();

  factory PrescriptionCartTotObj([updates(PrescriptionCartTotObjBuilder b)]) =
      _$PrescriptionCartTotObj;

  static Serializer<PrescriptionCartTotObj> get serializer =>
      _$prescriptionCartTotObjSerializer;
}
