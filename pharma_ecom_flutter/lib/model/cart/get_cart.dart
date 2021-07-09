import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'get_cart.g.dart';

abstract class GetCartResponse
    implements Built<GetCartResponse, GetCartResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "uniqueCode")
  int get uniqueCode;
  @nullable
  @BuiltValueField(wireName: "message")
  String get message;
  @nullable
  @BuiltValueField(wireName: "cart")
  BuiltList<UniversalProduct> get cart;

  GetCartResponse._();

  factory GetCartResponse([updates(GetCartResponseBuilder b)]) =
      _$GetCartResponse;

  static Serializer<GetCartResponse> get serializer =>
      _$getCartResponseSerializer;
}

abstract class UniversalCartProductObject
    implements
        Built<UniversalCartProductObject, UniversalCartProductObjectBuilder> {
  // fields go here
  @nullable
  UniversalProduct get product;
  @nullable
  int get quantity;
  // @nullable
  // @BuiltValueField(wireName: "selected_attributes")
  // String get message;

  UniversalCartProductObject._();

  factory UniversalCartProductObject(
          [updates(UniversalCartProductObjectBuilder b)]) =
      _$UniversalCartProductObject;

  static Serializer<UniversalCartProductObject> get serializer =>
      _$universalCartProductObjectSerializer;
}
