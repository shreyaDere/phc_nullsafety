import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'coupon_response.g.dart';

abstract class CouponResponse
    implements Built<CouponResponse, CouponResponseBuilder> {
  // fields go here
  int get status;
  CouponData get data;
  String get message;
  CouponResponse._();

  factory CouponResponse([updates(CouponResponseBuilder b)]) = _$CouponResponse;

  static Serializer<CouponResponse> get serializer =>
      _$couponResponseSerializer;
}

abstract class CouponData implements Built<CouponData, CouponDataBuilder> {
  @nullable
  BuiltList<Coupons> get coupons;
  CouponData._();

  factory CouponData([updates(CouponDataBuilder b)]) = _$CouponData;

  static Serializer<CouponData> get serializer => _$couponDataSerializer;
}

abstract class Coupons implements Built<Coupons, CouponsBuilder> {
  @nullable
  @BuiltValueField(wireName: "min_cart_amount")
  int get minCartAmount;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  String get code;
  @nullable
  String get type;
  @nullable
  String get expiry;
  @nullable
  int get value;
  @nullable
  int get iV;
  @nullable
  String get description;
  Coupons._();

  factory Coupons([updates(CouponsBuilder b)]) = _$Coupons;

  static Serializer<Coupons> get serializer => _$couponsSerializer;
}
