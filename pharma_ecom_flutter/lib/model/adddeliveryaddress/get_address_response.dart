import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'add_delivery_address_response.dart';

part 'get_address_response.g.dart';

abstract class GetAddressResponse
    implements Built<GetAddressResponse, GetAddressResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  BuiltList<UniversalResponseAddress> get data;
  @nullable
  String get message;

  GetAddressResponse._();

  factory GetAddressResponse([updates(GetAddressResponseBuilder b)]) =
      _$GetAddressResponse;

  static Serializer<GetAddressResponse> get serializer =>
      _$getAddressResponseSerializer;
}
