import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'wishlist_response.g.dart';

abstract class WishListResponse
    implements Built<WishListResponse, WishListResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  @nullable
  BuiltList<UniversalProduct> get data;

  WishListResponse._();

  factory WishListResponse([updates(WishListResponseBuilder b)]) =
      _$WishListResponse;

  static Serializer<WishListResponse> get serializer =>
      _$wishListResponseSerializer;
}
