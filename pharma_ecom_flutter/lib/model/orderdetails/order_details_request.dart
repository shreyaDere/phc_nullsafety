import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_details_request.g.dart';

abstract class OrderDetailsRequest
    implements Built<OrderDetailsRequest, OrderDetailsRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  OrderDetailsRequest._();

  factory OrderDetailsRequest([updates(OrderDetailsRequestBuilder b)]) =
      _$OrderDetailsRequest;

  static Serializer<OrderDetailsRequest> get serializer =>
      _$orderDetailsRequestSerializer;
}
