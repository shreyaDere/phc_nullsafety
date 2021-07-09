import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/search_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/searchbar_response.dart';

part 'search_bar.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class SearchBarService extends ChopperService {
  @Post(path: 'api/products/search')
  Future<Response<SearchBarResponse>> getSearchString(
      {@Body() SearchRequest body});

  static SearchBarService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$SearchBarService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$SearchBarService(client);
  }
}
