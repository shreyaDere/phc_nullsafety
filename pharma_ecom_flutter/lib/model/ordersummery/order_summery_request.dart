import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_summery_request.g.dart';

abstract class OrderSummeryRequest
    implements Built<OrderSummeryRequest, OrderSummeryRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  OrderSummeryRequest._();

  factory OrderSummeryRequest([updates(OrderSummeryRequestBuilder b)]) =
      _$OrderSummeryRequest;

  static Serializer<OrderSummeryRequest> get serializer =>
      _$orderSummeryRequestSerializer;
}
