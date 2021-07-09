import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_addset_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_adset_request.dart';

part 'addset.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class AdsetsService extends ChopperService {
  @Post(path: 'api/adsets/getMultipleAdsets')
  Future<Response<GetMultipleAdsetsResponse>> getMultipleAdsets(
      {@Body() MultipleAdsetsRequest body,
      @Header("Authorization") String token});

  static AdsetsService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$AdsetsService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$AdsetsService(client);
  }
}
