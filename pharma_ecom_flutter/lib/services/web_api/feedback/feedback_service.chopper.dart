// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$FeedbackService extends FeedbackService {
  _$FeedbackService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FeedbackService;

  @override
  Future<Response<FeedBackResponse>> saveFeedback(
      {FeedBackRequest body, String token}) {
    final $url = '/api/feedback/saveFeedback';
    final $headers = {'Authorization': token};
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<FeedBackResponse, FeedBackResponse>($request);
  }
}
