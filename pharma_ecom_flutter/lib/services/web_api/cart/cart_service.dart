import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';

part 'cart_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class CartService extends ChopperService {
  @Post(path: 'api/checkout/addToCart')
  Future<Response<AddToCartResponse>> addToCart(
      {@Body() AddToCartRequest body, @Header("Authorization") String token});

  @Delete(path: 'api/checkout/deleteFromCart/{id}')
  Future<Response<UniversalResponse>> removeFromCart(
      {@Path() String id, @Header("Authorization") String token});

  @Get(path: 'api/checkout/getMyCart')
  Future<Response<GetCartResponse>> getCart(
      {@Header("Authorization") String token});

  @Get(path: 'api/coupons/list')
  Future<Response<CouponResponse>> getCoupons();

  @Post(path: 'api/checkout/calculateTotals')
  Future<Response<CartTotResponse>> getCartTotal(
      {@Header("Authorization") String token, @Body() CartTotRequest body});

  static CartService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$CartService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$CartService(client);
  }
}
