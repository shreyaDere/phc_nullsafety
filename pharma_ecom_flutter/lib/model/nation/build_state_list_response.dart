import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'build_state_list_response.g.dart';

abstract class BuildStateListResponse
    implements Built<BuildStateListResponse, BuildStateListResponseBuilder> {
  // fields go here
  int get status;
  DataState get data;
  String get message;

  BuildStateListResponse._();

  factory BuildStateListResponse([updates(BuildStateListResponseBuilder b)]) =
      _$BuildStateListResponse;

  static Serializer<BuildStateListResponse> get serializer =>
      _$buildStateListResponseSerializer;
}

abstract class DataState implements Built<DataState, DataStateBuilder> {
  // fields go here
  BuiltList<StatesListObject> get states;

  DataState._();

  factory DataState([updates(DataStateBuilder b)]) = _$DataState;

  static Serializer<DataState> get serializer => _$dataStateSerializer;
}

abstract class StatesListObject
    implements Built<StatesListObject, StatesListObjectBuilder> {
  // fields go here
  int get id;
  String get name;
  @BuiltValueField(wireName: 'state_code')
  String get stateCode;

  StatesListObject._();

  factory StatesListObject([updates(StatesListObjectBuilder b)]) =
      _$StatesListObject;

  static Serializer<StatesListObject> get serializer =>
      _$statesListObjectSerializer;
}
