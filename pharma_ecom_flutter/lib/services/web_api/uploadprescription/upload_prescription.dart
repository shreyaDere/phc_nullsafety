import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/data/build_value_converter.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/uploadprescription/upload_prescription_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/uploadprescription/upload_prescription_response.dart';

part 'upload_prescription.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class UploadPrescriptionService extends ChopperService {
  @Post(path: 'api/auth/login')
  Future<Response<UploadPrescriptionResponse>> uploadPrescription(
      {@Body() UploadPrescriptionRequest body});

  static UploadPrescriptionService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$UploadPrescriptionService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          // ignore: todo
          //TODO: Add authentication token here from shared_preferences
          // HeaderInterceptor(),
        ]);
    return _$UploadPrescriptionService(client);
  }
}
