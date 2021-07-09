import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order_response.g.dart';

abstract class CancelOrderResponse
    implements Built<CancelOrderResponse, CancelOrderResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  String get message;

  CancelOrderResponse._();

  factory CancelOrderResponse([updates(CancelOrderResponseBuilder b)]) =
      _$CancelOrderResponse;

  static Serializer<CancelOrderResponse> get serializer =>
      _$cancelOrderResponseSerializer;
}
