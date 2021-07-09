import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/notification/notification_response.dart';

part 'notification_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class NotificationService extends ChopperService {
  @Get(path: 'api/notifications/all')
  Future<Response<NotificationResponse>> getNotification(
      {@Header("Authorization") String token});

  static NotificationService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$NotificationService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$NotificationService(client);
  }
}
