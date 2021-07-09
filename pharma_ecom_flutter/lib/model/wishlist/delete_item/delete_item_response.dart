import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_item_response.g.dart';

abstract class DeleteItemFromWishListResponse
    implements
        Built<DeleteItemFromWishListResponse,
            DeleteItemFromWishListResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  BuiltList<DeleteItemData> get data;

  DeleteItemFromWishListResponse._();

  factory DeleteItemFromWishListResponse(
          [updates(DeleteItemFromWishListResponseBuilder b)]) =
      _$DeleteItemFromWishListResponse;

  static Serializer<DeleteItemFromWishListResponse> get serializer =>
      _$deleteItemFromWishListResponseSerializer;
}

abstract class DeleteItemData
    implements Built<DeleteItemData, DeleteItemDataBuilder> {
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

  DeleteItemData._();

  factory DeleteItemData([updates(DeleteItemDataBuilder b)]) = _$DeleteItemData;

  static Serializer<DeleteItemData> get serializer =>
      _$deleteItemDataSerializer;
}
