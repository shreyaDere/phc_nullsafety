// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NotificationService extends NotificationService {
  _$NotificationService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NotificationService;

  @override
  Future<Response<NotificationResponse>> getNotification({String token}) {
    final $url = '/api/notifications/all';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<NotificationResponse, NotificationResponse>($request);
  }
}
