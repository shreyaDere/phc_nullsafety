import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_address_response.g.dart';

abstract class DeleteAddressResponse
    implements Built<DeleteAddressResponse, DeleteAddressResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  String get message;

  DeleteAddressResponse._();

  factory DeleteAddressResponse([updates(DeleteAddressResponseBuilder b)]) =
      _$DeleteAddressResponse;

  static Serializer<DeleteAddressResponse> get serializer =>
      _$deleteAddressResponseSerializer;
}
