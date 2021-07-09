import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_cities_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_countries_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_state_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';

part 'nations_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class NationsService extends ChopperService {
  @Get(path: 'getCountries')
  Future<Response<BuildCountriesListResponse>> getCountries();

  @Get(path: 'getStatesForCountry/{id}')
  Future<Response<BuildStateListResponse>> getStates({@Path() String id});

  @Get(path: 'getCitiesForState/{cid}/{sid}')
  Future<Response<BuildCitiesListResponse>> getCities(
      {@Path() String cid, @Path() String sid});

  static NationsService create() {
    final client = ChopperClient(
        baseUrl: "https://threenations.herokuapp.com",
        services: [_$NationsService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // HeaderInterceptor(),
        ]);
    return _$NationsService(client);
  }
}
