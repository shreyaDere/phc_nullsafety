import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/orderdetails/order_details_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/orderdetails/order_details_response.dart';

part 'order_detail.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class OrderDetailsService extends ChopperService {
  @Post(path: 'api/auth/login')
  Future<Response<OrderDetailsResponse>> orderDetails(
      {@Body() OrderDetailsRequest body});

  static OrderDetailsService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$OrderDetailsService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$OrderDetailsService(client);
  }
}
