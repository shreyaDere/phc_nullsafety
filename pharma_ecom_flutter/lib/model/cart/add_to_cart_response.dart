import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_to_cart_response.g.dart';

abstract class AddToCartResponse
    implements Built<AddToCartResponse, AddToCartResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  @nullable
  Cart get cart;

  AddToCartResponse._();

  factory AddToCartResponse([updates(AddToCartResponseBuilder b)]) =
      _$AddToCartResponse;

  static Serializer<AddToCartResponse> get serializer =>
      _$addToCartResponseSerializer;
}

abstract class Cart implements Built<Cart, CartBuilder> {
  // fields go here
  @nullable
  int get quantity;
  @nullable
  int get type;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  @BuiltValueField(wireName: "product_id")
  String get productId;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  @BuiltValueField(wireName: "selected_attributes")
  String get selectedAttributes;
  Cart._();

  factory Cart([updates(CartBuilder b)]) = _$Cart;

  static Serializer<Cart> get serializer => _$cartSerializer;
}
