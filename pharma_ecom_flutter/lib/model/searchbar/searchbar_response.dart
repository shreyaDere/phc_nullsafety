import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'searchbar_response.g.dart';

abstract class SearchBarResponse
    implements Built<SearchBarResponse, SearchBarResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  // @BuiltValueField(wireName: "Products")
  // BuiltList<SerarchProducts> get products;
  @nullable
  SearchData get data;
  @nullable
  String get message;
  SearchBarResponse._();

  factory SearchBarResponse([updates(SearchBarResponseBuilder b)]) =
      _$SearchBarResponse;

  static Serializer<SearchBarResponse> get serializer =>
      _$searchBarResponseSerializer;
}

abstract class SearchData implements Built<SearchData, SearchDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "products")
  BuiltList<SerarchProducts> get products;
  @nullable
  @BuiltValueField(wireName: "brands")
  BuiltList<SearchBrands> get brands;

  SearchData._();

  factory SearchData([updates(SearchDataBuilder b)]) = _$SearchData;

  static Serializer<SearchData> get serializer => _$searchDataSerializer;
}

abstract class SearchBrands
    implements Built<SearchBrands, SearchBrandsBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "slug")
  String get slug;

  SearchBrands._();

  factory SearchBrands([updates(SearchBrandsBuilder b)]) = _$SearchBrands;

  static Serializer<SearchBrands> get serializer => _$searchBrandsSerializer;
}

abstract class SerarchProducts
    implements Built<SerarchProducts, SerarchProductsBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;
  @nullable
  @BuiltValueField(wireName: "slug")
  String get slug;

  SerarchProducts._();

  factory SerarchProducts([updates(SerarchProductsBuilder b)]) =
      _$SerarchProducts;

  static Serializer<SerarchProducts> get serializer =>
      _$serarchProductsSerializer;
}
