import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proceed_to_pay_request.g.dart';

abstract class ProceedToPayRequest
    implements Built<ProceedToPayRequest, ProceedToPayRequestBuilder> {
  // fields go here
  String get email;
  String get password;

  ProceedToPayRequest._();

  factory ProceedToPayRequest([updates(ProceedToPayRequestBuilder b)]) =
      _$ProceedToPayRequest;

  static Serializer<ProceedToPayRequest> get serializer =>
      _$proceedToPayRequestSerializer;
}
