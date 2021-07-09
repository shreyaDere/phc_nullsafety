// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentMethodResponse> _$paymentMethodResponseSerializer =
    new _$PaymentMethodResponseSerializer();
Serializer<DataPaymentMethod> _$dataPaymentMethodSerializer =
    new _$DataPaymentMethodSerializer();
Serializer<ShippingMethods> _$shippingMethodsSerializer =
    new _$ShippingMethodsSerializer();

class _$PaymentMethodResponseSerializer
    implements StructuredSerializer<PaymentMethodResponse> {
  @override
  final Iterable<Type> types = const [
    PaymentMethodResponse,
    _$PaymentMethodResponse
  ];
  @override
  final String wireName = 'PaymentMethodResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PaymentMethodResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(DataPaymentMethod)));
    }
    return result;
  }

  @override
  PaymentMethodResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentMethodResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataPaymentMethod))
              as DataPaymentMethod);
          break;
      }
    }

    return result.build();
  }
}

class _$DataPaymentMethodSerializer
    implements StructuredSerializer<DataPaymentMethod> {
  @override
  final Iterable<Type> types = const [DataPaymentMethod, _$DataPaymentMethod];
  @override
  final String wireName = 'DataPaymentMethod';

  @override
  Iterable<Object> serialize(Serializers serializers, DataPaymentMethod object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.shippingMethods != null) {
      result
        ..add('shippingMethods')
        ..add(serializers.serialize(object.shippingMethods,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ShippingMethods)])));
    }
    return result;
  }

  @override
  DataPaymentMethod deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataPaymentMethodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'shippingMethods':
          result.shippingMethods.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ShippingMethods)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ShippingMethodsSerializer
    implements StructuredSerializer<ShippingMethods> {
  @override
  final Iterable<Type> types = const [ShippingMethods, _$ShippingMethods];
  @override
  final String wireName = 'ShippingMethods';

  @override
  Iterable<Object> serialize(Serializers serializers, ShippingMethods object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ShippingMethods deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShippingMethodsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentMethodResponse extends PaymentMethodResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final DataPaymentMethod data;

  factory _$PaymentMethodResponse(
          [void Function(PaymentMethodResponseBuilder) updates]) =>
      (new PaymentMethodResponseBuilder()..update(updates)).build();

  _$PaymentMethodResponse._({this.status, this.message, this.data}) : super._();

  @override
  PaymentMethodResponse rebuild(
          void Function(PaymentMethodResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentMethodResponseBuilder toBuilder() =>
      new PaymentMethodResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentMethodResponse &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentMethodResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class PaymentMethodResponseBuilder
    implements Builder<PaymentMethodResponse, PaymentMethodResponseBuilder> {
  _$PaymentMethodResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataPaymentMethodBuilder _data;
  DataPaymentMethodBuilder get data =>
      _$this._data ??= new DataPaymentMethodBuilder();
  set data(DataPaymentMethodBuilder data) => _$this._data = data;

  PaymentMethodResponseBuilder();

  PaymentMethodResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentMethodResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PaymentMethodResponse;
  }

  @override
  void update(void Function(PaymentMethodResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentMethodResponse build() {
    _$PaymentMethodResponse _$result;
    try {
      _$result = _$v ??
          new _$PaymentMethodResponse._(
              status: status, message: message, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PaymentMethodResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataPaymentMethod extends DataPaymentMethod {
  @override
  final BuiltList<ShippingMethods> shippingMethods;

  factory _$DataPaymentMethod(
          [void Function(DataPaymentMethodBuilder) updates]) =>
      (new DataPaymentMethodBuilder()..update(updates)).build();

  _$DataPaymentMethod._({this.shippingMethods}) : super._();

  @override
  DataPaymentMethod rebuild(void Function(DataPaymentMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataPaymentMethodBuilder toBuilder() =>
      new DataPaymentMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataPaymentMethod &&
        shippingMethods == other.shippingMethods;
  }

  @override
  int get hashCode {
    return $jf($jc(0, shippingMethods.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataPaymentMethod')
          ..add('shippingMethods', shippingMethods))
        .toString();
  }
}

class DataPaymentMethodBuilder
    implements Builder<DataPaymentMethod, DataPaymentMethodBuilder> {
  _$DataPaymentMethod _$v;

  ListBuilder<ShippingMethods> _shippingMethods;
  ListBuilder<ShippingMethods> get shippingMethods =>
      _$this._shippingMethods ??= new ListBuilder<ShippingMethods>();
  set shippingMethods(ListBuilder<ShippingMethods> shippingMethods) =>
      _$this._shippingMethods = shippingMethods;

  DataPaymentMethodBuilder();

  DataPaymentMethodBuilder get _$this {
    if (_$v != null) {
      _shippingMethods = _$v.shippingMethods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataPaymentMethod other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataPaymentMethod;
  }

  @override
  void update(void Function(DataPaymentMethodBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataPaymentMethod build() {
    _$DataPaymentMethod _$result;
    try {
      _$result = _$v ??
          new _$DataPaymentMethod._(shippingMethods: _shippingMethods?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'shippingMethods';
        _shippingMethods?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataPaymentMethod', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ShippingMethods extends ShippingMethods {
  @override
  final String id;
  @override
  final String name;

  factory _$ShippingMethods([void Function(ShippingMethodsBuilder) updates]) =>
      (new ShippingMethodsBuilder()..update(updates)).build();

  _$ShippingMethods._({this.id, this.name}) : super._();

  @override
  ShippingMethods rebuild(void Function(ShippingMethodsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShippingMethodsBuilder toBuilder() =>
      new ShippingMethodsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShippingMethods && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShippingMethods')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ShippingMethodsBuilder
    implements Builder<ShippingMethods, ShippingMethodsBuilder> {
  _$ShippingMethods _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ShippingMethodsBuilder();

  ShippingMethodsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShippingMethods other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ShippingMethods;
  }

  @override
  void update(void Function(ShippingMethodsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShippingMethods build() {
    final _$result = _$v ?? new _$ShippingMethods._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
