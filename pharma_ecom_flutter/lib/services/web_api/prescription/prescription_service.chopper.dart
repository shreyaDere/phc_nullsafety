// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PrescriptionService extends PrescriptionService {
  _$PrescriptionService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PrescriptionService;

  @override
  Future<Response<PresciptionResponse>> getPrescriptionList({String token}) {
    final $url = '/api/prescription/prescriptionList';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PresciptionResponse, PresciptionResponse>($request);
  }

  @override
  Future<Response<PrescriptionDetailsResponse>> getPrescriptionDetail(
      {String token, String id}) {
    final $url = '/api/prescription/viewPrescription/$id';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PrescriptionDetailsResponse,
        PrescriptionDetailsResponse>($request);
  }

  @override
  Future<Response<UniversalResponse>> deletePrescriptionDetail(
      {String token, String id}) {
    final $url = '/api/prescription/deletePrescription/$id';
    final $headers = {'Authorization': token};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<UniversalResponse, UniversalResponse>($request);
  }
}
