import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_to_Cart_request.g.dart';

abstract class AddToCartRequest
    implements Built<AddToCartRequest, AddToCartRequestBuilder> {
  // fields go here
  @nullable
  String get product_id;
  @nullable
  int get quantity;

  AddToCartRequest._();

  factory AddToCartRequest([updates(AddToCartRequestBuilder b)]) =
      _$AddToCartRequest;

  static Serializer<AddToCartRequest> get serializer =>
      _$addToCartRequestSerializer;
}
