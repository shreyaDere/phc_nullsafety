import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';

part 'onBording_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class OnBordingService extends ChopperService {
  @Get(path: 'api/boarding/getBoardingScreen')
  Future<Response<OnBordingResponse>> getOnboardings();

  static OnBordingService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$OnBordingService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$OnBordingService(client);
  }
}
