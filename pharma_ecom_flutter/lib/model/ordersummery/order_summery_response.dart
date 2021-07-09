import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_summery_response.g.dart';

abstract class OrderSummeryResponse
    implements Built<OrderSummeryResponse, OrderSummeryResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  OrderSummeryResponse._();

  factory OrderSummeryResponse([updates(OrderSummeryResponseBuilder b)]) =
      _$OrderSummeryResponse;

  static Serializer<OrderSummeryResponse> get serializer =>
      _$orderSummeryResponseSerializer;
}
