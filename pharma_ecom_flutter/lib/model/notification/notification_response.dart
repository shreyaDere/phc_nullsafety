import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_response.g.dart';

abstract class NotificationResponse
    implements Built<NotificationResponse, NotificationResponseBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "status")
  int get status;
  @nullable
  @BuiltValueField(wireName: "data")
  DataNotification get data;
  @nullable
  @BuiltValueField(wireName: "message")
  String get message;

  NotificationResponse._();

  factory NotificationResponse([updates(NotificationResponseBuilder b)]) =
      _$NotificationResponse;

  static Serializer<NotificationResponse> get serializer =>
      _$notificationResponseSerializer;
}

abstract class DataNotification
    implements Built<DataNotification, DataNotificationBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "notifications")
  BuiltList<NotificationObj> get notifications;

  DataNotification._();

  factory DataNotification([updates(DataNotificationBuilder b)]) =
      _$DataNotification;

  static Serializer<DataNotification> get serializer =>
      _$dataNotificationSerializer;
}

abstract class NotificationObj
    implements Built<NotificationObj, NotificationObjBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "title")
  String get title;
  @nullable
  @BuiltValueField(wireName: "body")
  String get body;
  @nullable
  @BuiltValueField(wireName: "type")
  String get type;
  @nullable
  @BuiltValueField(wireName: "action")
  String get action;
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  @BuiltValueField(wireName: "type_id")
  String get typeId;
  @nullable
  @BuiltValueField(wireName: "createdAt")
  String get createdAt;
  @nullable
  @BuiltValueField(wireName: "updatedAt")
  String get updatedAt;

  NotificationObj._();

  factory NotificationObj([updates(NotificationObjBuilder b)]) =
      _$NotificationObj;

  static Serializer<NotificationObj> get serializer =>
      _$notificationObjSerializer;
}
