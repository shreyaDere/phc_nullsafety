import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_email_login_response.g.dart';

abstract class BuiltEmailLoginResponse
    implements Built<BuiltEmailLoginResponse, BuiltEmailLoginResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  Data get data;
  @nullable
  String get message;

  BuiltEmailLoginResponse._();

  factory BuiltEmailLoginResponse([updates(BuiltEmailLoginResponseBuilder b)]) =
      _$BuiltEmailLoginResponse;

  static Serializer<BuiltEmailLoginResponse> get serializer =>
      _$builtEmailLoginResponseSerializer;
}

abstract class Data implements Built<Data, DataBuilder> {
  // fields go here
  @nullable
  String get to;
  @nullable
  String get channel;
  @nullable
  String get status;
  @nullable
  String get dateUpdated;

  Data._();

  factory Data([updates(DataBuilder b)]) = _$Data;

  static Serializer<Data> get serializer => _$dataSerializer;
}
