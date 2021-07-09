import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'build_cities_list_response.g.dart';

abstract class BuildCitiesListResponse
    implements Built<BuildCitiesListResponse, BuildCitiesListResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  DataCitiesList get data;
  @nullable
  String get message;

  BuildCitiesListResponse._();

  factory BuildCitiesListResponse([updates(BuildCitiesListResponseBuilder b)]) =
      _$BuildCitiesListResponse;

  static Serializer<BuildCitiesListResponse> get serializer =>
      _$buildCitiesListResponseSerializer;
}

abstract class DataCitiesList
    implements Built<DataCitiesList, DataCitiesListBuilder> {
  // fields go here
  @nullable
  BuiltList<CitiesListObject> get cities;

  DataCitiesList._();

  factory DataCitiesList([updates(DataCitiesListBuilder b)]) = _$DataCitiesList;

  static Serializer<DataCitiesList> get serializer =>
      _$dataCitiesListSerializer;
}

abstract class CitiesListObject
    implements Built<CitiesListObject, CitiesListObjectBuilder> {
  // fields go here
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  String get latitude;
  @nullable
  String get longitude;

  CitiesListObject._();

  factory CitiesListObject([updates(CitiesListObjectBuilder b)]) =
      _$CitiesListObject;

  static Serializer<CitiesListObject> get serializer =>
      _$citiesListObjectSerializer;
}
