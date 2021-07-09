// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetCartResponse> _$getCartResponseSerializer =
    new _$GetCartResponseSerializer();
Serializer<UniversalCartProductObject> _$universalCartProductObjectSerializer =
    new _$UniversalCartProductObjectSerializer();

class _$GetCartResponseSerializer
    implements StructuredSerializer<GetCartResponse> {
  @override
  final Iterable<Type> types = const [GetCartResponse, _$GetCartResponse];
  @override
  final String wireName = 'GetCartResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, GetCartResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.uniqueCode != null) {
      result
        ..add('uniqueCode')
        ..add(serializers.serialize(object.uniqueCode,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.cart != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(object.cart,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    return result;
  }

  @override
  GetCartResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetCartResponseBuilder();

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
        case 'uniqueCode':
          result.uniqueCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$UniversalCartProductObjectSerializer
    implements StructuredSerializer<UniversalCartProductObject> {
  @override
  final Iterable<Type> types = const [
    UniversalCartProductObject,
    _$UniversalCartProductObject
  ];
  @override
  final String wireName = 'UniversalCartProductObject';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UniversalCartProductObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(UniversalProduct)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UniversalCartProductObject deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UniversalCartProductObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalProduct))
              as UniversalProduct);
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GetCartResponse extends GetCartResponse {
  @override
  final int status;
  @override
  final int uniqueCode;
  @override
  final String message;
  @override
  final BuiltList<UniversalProduct> cart;

  factory _$GetCartResponse([void Function(GetCartResponseBuilder) updates]) =>
      (new GetCartResponseBuilder()..update(updates)).build();

  _$GetCartResponse._({this.status, this.uniqueCode, this.message, this.cart})
      : super._();

  @override
  GetCartResponse rebuild(void Function(GetCartResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartResponseBuilder toBuilder() =>
      new GetCartResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartResponse &&
        status == other.status &&
        uniqueCode == other.uniqueCode &&
        message == other.message &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, status.hashCode), uniqueCode.hashCode),
            message.hashCode),
        cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCartResponse')
          ..add('status', status)
          ..add('uniqueCode', uniqueCode)
          ..add('message', message)
          ..add('cart', cart))
        .toString();
  }
}

class GetCartResponseBuilder
    implements Builder<GetCartResponse, GetCartResponseBuilder> {
  _$GetCartResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _uniqueCode;
  int get uniqueCode => _$this._uniqueCode;
  set uniqueCode(int uniqueCode) => _$this._uniqueCode = uniqueCode;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<UniversalProduct> _cart;
  ListBuilder<UniversalProduct> get cart =>
      _$this._cart ??= new ListBuilder<UniversalProduct>();
  set cart(ListBuilder<UniversalProduct> cart) => _$this._cart = cart;

  GetCartResponseBuilder();

  GetCartResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _uniqueCode = _$v.uniqueCode;
      _message = _$v.message;
      _cart = _$v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCartResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCartResponse;
  }

  @override
  void update(void Function(GetCartResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCartResponse build() {
    _$GetCartResponse _$result;
    try {
      _$result = _$v ??
          new _$GetCartResponse._(
              status: status,
              uniqueCode: uniqueCode,
              message: message,
              cart: _cart?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetCartResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UniversalCartProductObject extends UniversalCartProductObject {
  @override
  final UniversalProduct product;
  @override
  final int quantity;

  factory _$UniversalCartProductObject(
          [void Function(UniversalCartProductObjectBuilder) updates]) =>
      (new UniversalCartProductObjectBuilder()..update(updates)).build();

  _$UniversalCartProductObject._({this.product, this.quantity}) : super._();

  @override
  UniversalCartProductObject rebuild(
          void Function(UniversalCartProductObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UniversalCartProductObjectBuilder toBuilder() =>
      new UniversalCartProductObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UniversalCartProductObject &&
        product == other.product &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, product.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UniversalCartProductObject')
          ..add('product', product)
          ..add('quantity', quantity))
        .toString();
  }
}

class UniversalCartProductObjectBuilder
    implements
        Builder<UniversalCartProductObject, UniversalCartProductObjectBuilder> {
  _$UniversalCartProductObject _$v;

  UniversalProductBuilder _product;
  UniversalProductBuilder get product =>
      _$this._product ??= new UniversalProductBuilder();
  set product(UniversalProductBuilder product) => _$this._product = product;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  UniversalCartProductObjectBuilder();

  UniversalCartProductObjectBuilder get _$this {
    if (_$v != null) {
      _product = _$v.product?.toBuilder();
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UniversalCartProductObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UniversalCartProductObject;
  }

  @override
  void update(void Function(UniversalCartProductObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UniversalCartProductObject build() {
    _$UniversalCartProductObject _$result;
    try {
      _$result = _$v ??
          new _$UniversalCartProductObject._(
              product: _product?.build(), quantity: quantity);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UniversalCartProductObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
