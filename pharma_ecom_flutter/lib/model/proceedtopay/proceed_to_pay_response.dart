import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proceed_to_pay_response.g.dart';

abstract class ProceedToPayResponse
    implements Built<ProceedToPayResponse, ProceedToPayResponseBuilder> {
  // fields go here
  int get status;
  String get message;
  ProceedToPayResponse._();

  factory ProceedToPayResponse([updates(ProceedToPayResponseBuilder b)]) =
      _$ProceedToPayResponse;

  static Serializer<ProceedToPayResponse> get serializer =>
      _$proceedToPayResponseSerializer;
}
