import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/productgridlist_response.dart';

part 'Product_grid_list.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ProductGridListService extends ChopperService {
  @Post(path: 'api/categories/categoryData/{id}')
  Future<Response<ProductGridListResponse>> productGridList(
      {@Path() String id,
      @Header("Authorization") String token,
      @Body() ProductGridlistRequest body});

  static ProductGridListService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$ProductGridListService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$ProductGridListService(client);
  }
}
