// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_prescription.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$UploadPrescriptionService extends UploadPrescriptionService {
  _$UploadPrescriptionService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UploadPrescriptionService;

  @override
  Future<Response<UploadPrescriptionResponse>> uploadPrescription(
      {UploadPrescriptionRequest body}) {
    final $url = '/api/auth/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<UploadPrescriptionResponse, UploadPrescriptionResponse>($request);
  }
}
