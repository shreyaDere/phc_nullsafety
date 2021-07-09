import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/allcomment/all_comment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';

part 'all_comment_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class AllCommentService extends ChopperService {
  @Get(path: 'api/reviews/allReview/{id}')
  Future<Response<AllCommentResponse>> getAllComment(
      {@Path() String id, @Header("Authorization") String token});

  static AllCommentService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$AllCommentService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$AllCommentService(client);
  }
}
