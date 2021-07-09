import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
part 'prescription_response.g.dart';

abstract class PresciptionResponse
    implements Built<PresciptionResponse, PresciptionResponseBuilder> {
  // fields go here
  int get status;
  @nullable
  BuiltList<PrescriptionData> get data;
  String get message;

  PresciptionResponse._();

  factory PresciptionResponse([updates(PresciptionResponseBuilder b)]) =
      _$PresciptionResponse;

  static Serializer<PresciptionResponse> get serializer =>
      _$presciptionResponseSerializer;
}

abstract class PrescriptionData
    implements Built<PrescriptionData, PrescriptionDataBuilder> {
  // fields go here
  @nullable
  BuiltList<String> get prescriptionImage;
  @nullable
  BuiltList<String> get insuranceImage;
  @nullable
  @BuiltValueField(wireName: "line_items")
  BuiltList<LineItems> get lineItems;
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  @BuiltValueField(wireName: "user_Id")
  String get userId;
  @nullable
  String get userName;
  @nullable
  String get prescriptionTitle;
  @nullable
  String get prescriptionComment;
  @nullable
  int get prescriptionType;
  @nullable
  String get memberId;
  @nullable
  String get createdAt;
  @nullable
  String get updatedAt;
  @nullable
  String get uploadTime;
  @nullable
  int get prescriptionStatus;
  @nullable
  int get prescriptionValidity;
  @nullable
  String get adminComment;

  PrescriptionData._();

  factory PrescriptionData([updates(PrescriptionDataBuilder b)]) =
      _$PrescriptionData;

  static Serializer<PrescriptionData> get serializer =>
      _$prescriptionDataSerializer;
}

abstract class LineItems implements Built<LineItems, LineItemsBuilder> {
  // fields go here
  @nullable
  int get quantity;
  @nullable
  UniversalProduct get product;
  @nullable
  int get lineTotal;

  LineItems._();

  factory LineItems([updates(LineItemsBuilder b)]) = _$LineItems;

  static Serializer<LineItems> get serializer => _$lineItemsSerializer;
}
