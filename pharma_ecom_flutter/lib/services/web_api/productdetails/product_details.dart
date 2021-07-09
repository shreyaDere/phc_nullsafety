import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'product_details.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ProductDetailsService extends ChopperService {
  @Get(path: 'api/products/{id}')
  Future<Response<ProductDetailResponse>> productDetails({@Path() String id});

  static ProductDetailsService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$ProductDetailsService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$ProductDetailsService(client);
  }
}
