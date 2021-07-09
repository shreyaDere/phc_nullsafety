import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/proceedtopay/proceed_to_pay_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/proceedtopay/proceed_to_pay_response.dart';

part 'proceed_to_pay.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ProceedToPayService extends ChopperService {
  @Post(path: 'api/auth/login')
  Future<Response<ProceedToPayResponse>> proceedToPayDetails(
      {@Body() ProceedToPayRequest body});

  static ProceedToPayService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$ProceedToPayService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$ProceedToPayService(client);
  }
}
