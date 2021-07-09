import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/brands/brands_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/brands/brand_response.dart';

part 'brands_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class BrandsService extends ChopperService {
  @Post(path: 'api/categories/getProductsOnBrands')
  Future<Response<BrandsResponse>> getProductsBranads(
      {@Body() BrandsRequest body});

  static BrandsService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$BrandsService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$BrandsService(client);
  }
}
