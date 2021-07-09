// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_comment_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AllCommentService extends AllCommentService {
  _$AllCommentService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AllCommentService;

  @override
  Future<Response<AllCommentResponse>> getAllComment(
      {String id, String token}) {
    final $url = '/api/reviews/allReview/$id';
    final $headers = {'Authorization': token};
    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<AllCommentResponse, AllCommentResponse>($request);
  }
}
