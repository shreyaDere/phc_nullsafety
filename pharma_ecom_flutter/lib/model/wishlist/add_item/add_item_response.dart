import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_item_response.g.dart';

abstract class AddItemResponse
    implements Built<AddItemResponse, AddItemResponseBuilder> {
  // fields go here
  int get status;
  @nullable
  BuiltList<AddItemData> get data;
  String get message;

  AddItemResponse._();

  factory AddItemResponse([updates(AddItemResponseBuilder b)]) =
      _$AddItemResponse;

  static Serializer<AddItemResponse> get serializer =>
      _$addItemResponseSerializer;
}

abstract class AddItemData implements Built<AddItemData, AddItemDataBuilder> {
  // fields go here
  @BuiltValueField(wireName: "_id")
  @nullable
  String get sId;
  @nullable
  @BuiltValueField(wireName: "product_slug")
  String get productSlug;
  @BuiltValueField(wireName: "user_id")
  @nullable
  String get userId;
  AddItemData._();

  factory AddItemData([updates(AddItemDataBuilder b)]) = _$AddItemData;

  static Serializer<AddItemData> get serializer => _$addItemDataSerializer;
}
