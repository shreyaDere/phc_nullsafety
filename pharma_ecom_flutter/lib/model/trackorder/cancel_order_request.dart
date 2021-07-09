import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order_request.g.dart';

abstract class CancelOrderRequest
    implements Built<CancelOrderRequest, CancelOrderRequestBuilder> {
  // fields go here
  @nullable
  int get orderID;
  @nullable
  int get orderStatus;

  CancelOrderRequest._();

  factory CancelOrderRequest([updates(CancelOrderRequestBuilder b)]) =
      _$CancelOrderRequest;

  static Serializer<CancelOrderRequest> get serializer =>
      _$cancelOrderRequestSerializer;
}
