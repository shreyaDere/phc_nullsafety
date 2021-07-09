import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_response.dart';

part 'feedback_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class FeedbackService extends ChopperService {
  @Post(path: 'api/feedback/saveFeedback')
  Future<Response<FeedBackResponse>> saveFeedback(
      {@Body() FeedBackRequest body, @Header("Authorization") String token});

  static FeedbackService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$FeedbackService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$FeedbackService(client);
  }
}
