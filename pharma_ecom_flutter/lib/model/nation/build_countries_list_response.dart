import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'build_countries_list_response.g.dart';

abstract class BuildCountriesListResponse
    implements
        Built<BuildCountriesListResponse, BuildCountriesListResponseBuilder> {
  // fields go here

  int get status;
  DataCountries get data;
  String get message;

  BuildCountriesListResponse._();

  factory BuildCountriesListResponse(
          [updates(BuildCountriesListResponseBuilder b)]) =
      _$BuildCountriesListResponse;

  static Serializer<BuildCountriesListResponse> get serializer =>
      _$buildCountriesListResponseSerializer;
}

abstract class DataCountries
    implements Built<DataCountries, DataCountriesBuilder> {
  // fields go here
  BuiltList<CountriesList> get countries;

  DataCountries._();

  factory DataCountries([updates(DataCountriesBuilder b)]) = _$DataCountries;

  static Serializer<DataCountries> get serializer => _$dataCountriesSerializer;
}

abstract class CountriesList
    implements Built<CountriesList, CountriesListBuilder> {
  // fields go here
  int get id;
  String get name;
  String get capital;
  String get currency;
  @BuiltValueField(wireName: 'phone_code')
  String get phoneCode;
  String get iso2;
  String get iso3;

  CountriesList._();

  factory CountriesList([updates(CountriesListBuilder b)]) = _$CountriesList;

  static Serializer<CountriesList> get serializer => _$countriesListSerializer;
}
