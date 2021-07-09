import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescriptiondetails/prescription_details_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';

part 'prescription_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class PrescriptionService extends ChopperService {
  @Get(path: 'api/prescription/prescriptionList')
  Future<Response<PresciptionResponse>> getPrescriptionList(
      {@Header("Authorization") String token});
  @Get(path: 'api/prescription/viewPrescription/{id}')
  Future<Response<PrescriptionDetailsResponse>> getPrescriptionDetail(
      {@Header("Authorization") String token, @Path() String id});
  @Post(path: 'api/prescription/deletePrescription/{id}')
  Future<Response<UniversalResponse>> deletePrescriptionDetail(
      {@Header("Authorization") String token, @Path() String id});

  static PrescriptionService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$PrescriptionService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$PrescriptionService(client);
  }
}
