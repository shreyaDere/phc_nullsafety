import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/splash/splash_response.dart';

part 'splash_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class SplashService extends ChopperService {
  @Get(path: 'api/splash/getSplashScreen')
  Future<Response<SplashResponse>> getSplashData();

  static SplashService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$SplashService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$SplashService(client);
  }
}
