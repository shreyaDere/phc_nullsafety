import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_method.g.dart';

abstract class PaymentMethodResponse
    implements Built<PaymentMethodResponse, PaymentMethodResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  String get message;
  @nullable
  DataPaymentMethod get data;

  PaymentMethodResponse._();

  factory PaymentMethodResponse([updates(PaymentMethodResponseBuilder b)]) =
      _$PaymentMethodResponse;

  static Serializer<PaymentMethodResponse> get serializer =>
      _$paymentMethodResponseSerializer;
}

abstract class DataPaymentMethod
    implements Built<DataPaymentMethod, DataPaymentMethodBuilder> {
  // fields go here
  @nullable
  BuiltList<ShippingMethods> get shippingMethods;

  DataPaymentMethod._();

  factory DataPaymentMethod([updates(DataPaymentMethodBuilder b)]) =
      _$DataPaymentMethod;

  static Serializer<DataPaymentMethod> get serializer =>
      _$dataPaymentMethodSerializer;
}

abstract class ShippingMethods
    implements Built<ShippingMethods, ShippingMethodsBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "_id")
  String get id;
  @nullable
  @BuiltValueField(wireName: "name")
  String get name;

  ShippingMethods._();

  factory ShippingMethods([updates(ShippingMethodsBuilder b)]) =
      _$ShippingMethods;

  static Serializer<ShippingMethods> get serializer =>
      _$shippingMethodsSerializer;
}
