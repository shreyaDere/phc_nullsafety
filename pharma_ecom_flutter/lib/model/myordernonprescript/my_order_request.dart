import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'my_order_request.g.dart';

abstract class MyOrderRequest
    implements Built<MyOrderRequest, MyOrderRequestBuilder> {
  // fields go here
  int get orderType;

  MyOrderRequest._();

  factory MyOrderRequest([updates(MyOrderRequestBuilder b)]) = _$MyOrderRequest;

  static Serializer<MyOrderRequest> get serializer =>
      _$myOrderRequestSerializer;
}
