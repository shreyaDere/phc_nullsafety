import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/order_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/track_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_request.dart';

part 'my_order_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class MyOrderService extends ChopperService {
  @Post(path: 'api/checkout/myOrders')
  Future<Response<MyOrderResponse>> getMyOrderData(
      {@Body() MyOrderRequest body, @Header("Authorization") String token});

  @Post(path: 'api/checkout/orderDetail/{id}')
  Future<Response<OrderDetailResponse>> getOrderDetail(
      {@Body() MyOrderRequest body,
      @Header("Authorization") String token,
      @Path() String id});

  @Get(path: 'api/tracking/trackingDetails/{id}')
  Future<Response<TrackOrderResponse>> getTrackingDetails(
      {@Header("Authorization") String token, @Path() String id});

  @Post(path: 'api/checkout/cancelOrder')
  Future<Response<CancelOrderResponse>> cancelOrder(
      {@Body() CancelOrderRequest body, @Header("Authorization") String token});

  static MyOrderService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$MyOrderService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$MyOrderService(client);
  }
}
