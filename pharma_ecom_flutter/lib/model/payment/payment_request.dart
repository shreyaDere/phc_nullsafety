import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';

part 'payment_request.g.dart';

abstract class PaymentRequest
    implements Built<PaymentRequest, PaymentRequestBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "checkout")
  CheckoutCartTot get checkout;
  @nullable
  @BuiltValueField(wireName: "dateSlot")
  String get dateSlot;
  @nullable
  @BuiltValueField(wireName: "timeSlotId")
  String get timeSlotId;
  @nullable
  @BuiltValueField(wireName: "paymentId")
  String get paymentId;
  @nullable
  @BuiltValueField(wireName: "paymentDetail")
  PaymentObj get paymentDetail;

  PaymentRequest._();

  factory PaymentRequest([updates(PaymentRequestBuilder b)]) = _$PaymentRequest;

  static Serializer<PaymentRequest> get serializer =>
      _$paymentRequestSerializer;
}

abstract class PaymentObj implements Built<PaymentObj, PaymentObjBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "paymentId")
  String get paymentId;
  @nullable
  @BuiltValueField(wireName: "paymentType")
  String get paymentType;
  @nullable
  @BuiltValueField(wireName: "paymentStatus")
  String get paymentStatus;

  PaymentObj._();

  factory PaymentObj([updates(PaymentObjBuilder b)]) = _$PaymentObj;

  static Serializer<PaymentObj> get serializer => _$paymentObjSerializer;
}
