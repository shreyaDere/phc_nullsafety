import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_details_response.g.dart';

abstract class OrderDetailsResponse
    implements Built<OrderDetailsResponse, OrderDetailsResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  OrderDetailsResponse._();

  factory OrderDetailsResponse([updates(OrderDetailsResponseBuilder b)]) =
      _$OrderDetailsResponse;

  static Serializer<OrderDetailsResponse> get serializer =>
      _$orderDetailsResponseSerializer;
}
