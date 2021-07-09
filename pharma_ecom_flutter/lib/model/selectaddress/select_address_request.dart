import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'select_address_request.g.dart';

abstract class SelectAddressRequest
    implements Built<SelectAddressRequest, SelectAddressRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  SelectAddressRequest._();

  factory SelectAddressRequest([updates(SelectAddressRequestBuilder b)]) =
      _$SelectAddressRequest;

  static Serializer<SelectAddressRequest> get serializer =>
      _$selectAddressRequestSerializer;
}
