import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'select_address_response.g.dart';

abstract class SelectAddressResponse
    implements Built<SelectAddressResponse, SelectAddressResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  SelectAddressResponse._();

  factory SelectAddressResponse([updates(SelectAddressResponseBuilder b)]) =
      _$SelectAddressResponse;

  static Serializer<SelectAddressResponse> get serializer =>
      _$selectAddressResponseSerializer;
}
