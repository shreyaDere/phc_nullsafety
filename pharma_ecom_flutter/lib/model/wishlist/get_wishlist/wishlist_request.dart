import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wishlist_request.g.dart';

abstract class WishListRequest
    implements Built<WishListRequest, WishListRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  WishListRequest._();

  factory WishListRequest([updates(WishListRequestBuilder b)]) =
      _$WishListRequest;

  static Serializer<WishListRequest> get serializer =>
      _$wishListRequestSerializer;
}
