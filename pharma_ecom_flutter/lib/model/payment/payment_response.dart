import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_response.g.dart';

abstract class PaymentResponse
    implements Built<PaymentResponse, PaymentResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  String get message;
  @nullable
  PaymentResult get result;

  PaymentResponse._();

  factory PaymentResponse([updates(PaymentResponseBuilder b)]) =
      _$PaymentResponse;

  static Serializer<PaymentResponse> get serializer =>
      _$paymentResponseSerializer;
}

abstract class PaymentResult
    implements Built<PaymentResult, PaymentResultBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "order_id")
  int get orderId;

  PaymentResult._();

  factory PaymentResult([updates(PaymentResultBuilder b)]) = _$PaymentResult;

  static Serializer<PaymentResult> get serializer => _$paymentResultSerializer;
}
