import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/paymentmetod/payment_method.dart';

part 'payment.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class PaymentService extends ChopperService {
  @Post(path: 'api/checkout/payment')
  Future<Response<PaymentResponse>> payment(
      {@Body() PaymentRequest body, @Header("Authorization") String token});

  @Get(path: 'api/shipping/getShippingMethods')
  Future<Response<PaymentMethodResponse>> getPaymentMethods(
      {@Header("Authorization") String token});

  static PaymentService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$PaymentService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$PaymentService(client);
  }
}
