import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';

part 'wish_list.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class WishListService extends ChopperService {
  @Get(path: 'api/wishlist/getWishlist')
  Future<Response<WishListResponse>> getWishList(
      {@Header("Authorization") String token});
  @Post(path: 'api/wishlist/removeFromWishlist/{id}')
  Future<Response<DeleteItemFromWishListResponse>> deleteFromWishList(
      {@Path() String id, @Header("Authorization") String token});
  @Post(path: 'api/wishlist/addToWishlist/{id}')
  Future<Response<AddItemResponse>> addToWishList(
      {@Path() String id, @Header("Authorization") String token});
  static WishListService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$WishListService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$WishListService(client);
  }
}
