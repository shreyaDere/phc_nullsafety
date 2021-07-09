import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/categories_detailsbrands_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/category_get_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';

part 'categories_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class CategoriesService extends ChopperService {
  @Get(path: 'api/categories/getAllCategories')
  Future<Response<CategoryGetResponse>> getAllCategories(
      {@Header("Authorization") String token});

  @Get(path: 'api/categories/getSubCategories/{id}')
  Future<Response<CategoriesDetailsBrandsResponse>> getCategoryDetails(
      {@Path() String id, @Header("Authorization") String token});

  static CategoriesService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$CategoriesService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$CategoriesService(client);
  }
}
