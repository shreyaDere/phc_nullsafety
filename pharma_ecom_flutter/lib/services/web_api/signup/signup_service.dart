import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_response.dart';

part 'signup_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class SignUpService extends ChopperService {
  @Post(path: 'api/otpauth/verify?phoneNumber={phoneNumber}&code={code}')
  Future<Response<SignUpResponse>> signup({@Body() SignupRequest body});

  static SignUpService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$SignUpService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$SignUpService(client);
  }
}
