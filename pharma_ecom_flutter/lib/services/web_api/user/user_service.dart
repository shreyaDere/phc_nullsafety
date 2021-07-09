import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/userstatus/user_status_response.dart';

part 'user_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class UserService extends ChopperService {
  @Post(path: 'api/otpauth/verify?phoneNumber={phoneNumber}&code={code}')
  Future<Response<SignUpResponse>> signup({@Body() SignupRequest body});

  @Post(path: 'api/otpauth/login')
  Future<Response<BuiltEmailLoginResponse>> emailLogin({
    @Body() BuiltEmailLoginRequest body,
  });

  @Post(path: 'api/otpauth/verify')
  Future<Response<OtpVerificationResponse>> otpVerification(
      {@Body() OtpVerificationRequest body});

  @Get(path: 'api/users/me/')
  Future<Response<EditProfileResponse>> getUserProfile(
      {@Header("Authorization") String token});

  @Post(path: 'api/users/updateFcmToken')
  Future<Response<FcmResponse>> updateFcm(
      {@Header("Authorization") String token, @Body() FcmRequest body});

  @Get(path: 'api/checkActiveStatus')
  Future<Response<UserStatusResponse>> checkActiveStatus(
      {@Header("Authorization") String token});

  static UserService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$UserService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$UserService(client);
  }
}
