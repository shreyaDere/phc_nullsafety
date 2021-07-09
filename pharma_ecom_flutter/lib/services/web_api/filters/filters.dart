import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/filters/filters_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/filters/filters_response.dart';

part 'filters.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class FilterService extends ChopperService {
  @Post(path: 'api/auth/login')
  Future<Response<FilterResponse>> getFilters({@Body() FilterRequest body});

  static FilterService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$FilterService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$FilterService(client);
  }
}
