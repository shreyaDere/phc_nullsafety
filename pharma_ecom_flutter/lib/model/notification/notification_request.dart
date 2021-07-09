import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request.g.dart';

abstract class NotificationRequest
    implements Built<NotificationRequest, NotificationRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  NotificationRequest._();

  factory NotificationRequest([updates(NotificationRequestBuilder b)]) =
      _$NotificationRequest;

  static Serializer<NotificationRequest> get serializer =>
      _$notificationRequestSerializer;
}
