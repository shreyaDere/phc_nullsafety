import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

part 'prescription_details_response.g.dart';

abstract class PrescriptionDetailsResponse
    implements
        Built<PrescriptionDetailsResponse, PrescriptionDetailsResponseBuilder> {
  // fields go here
  int get status;
  PrescriptionDetailsData get data;
  String get message;

  PrescriptionDetailsResponse._();

  factory PrescriptionDetailsResponse(
          [updates(PrescriptionDetailsResponseBuilder b)]) =
      _$PrescriptionDetailsResponse;

  static Serializer<PrescriptionDetailsResponse> get serializer =>
      _$prescriptionDetailsResponseSerializer;
}

abstract class PrescriptionDetailsData
    implements Built<PrescriptionDetailsData, PrescriptionDetailsDataBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get sId;
  @nullable
  BuiltList<String> get prescriptionImage;
  @nullable
  BuiltList<String> get insuranceImage;
  @nullable
  int get prescriptionValidity;
  @nullable
  String get memberId;
  @nullable
  int get uniqueCode;
  @nullable
  @BuiltValueField(wireName: "line_items")
  BuiltList<UniversalProduct> get lineItems;
  @nullable
  String get prescriptionComment;
  @nullable
  String get adminComment;

  PrescriptionDetailsData._();

  factory PrescriptionDetailsData([updates(PrescriptionDetailsDataBuilder b)]) =
      _$PrescriptionDetailsData;

  static Serializer<PrescriptionDetailsData> get serializer =>
      _$prescriptionDetailsDataSerializer;
}
