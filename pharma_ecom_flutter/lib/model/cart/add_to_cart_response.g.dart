// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddToCartResponse> _$addToCartResponseSerializer =
    new _$AddToCartResponseSerializer();
Serializer<Cart> _$cartSerializer = new _$CartSerializer();

class _$AddToCartResponseSerializer
    implements StructuredSerializer<AddToCartResponse> {
  @override
  final Iterable<Type> types = const [AddToCartResponse, _$AddToCartResponse];
  @override
  final String wireName = 'AddToCartResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AddToCartResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.cart != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(object.cart,
            specifiedType: const FullType(Cart)));
    }
    return result;
  }

  @override
  AddToCartResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddToCartResponseBuilder();

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
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
              specifiedType: const FullType(Cart)) as Cart);
          break;
      }
    }

    return result.build();
  }
}

class _$CartSerializer implements StructuredSerializer<Cart> {
  @override
  final Iterable<Type> types = const [Cart, _$Cart];
  @override
  final String wireName = 'Cart';

  @override
  Iterable<Object> serialize(Serializers serializers, Cart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(int)));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.selectedAttributes != null) {
      result
        ..add('selected_attributes')
        ..add(serializers.serialize(object.selectedAttributes,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Cart deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'selected_attributes':
          result.selectedAttributes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddToCartResponse extends AddToCartResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final Cart cart;

  factory _$AddToCartResponse(
          [void Function(AddToCartResponseBuilder) updates]) =>
      (new AddToCartResponseBuilder()..update(updates)).build();

  _$AddToCartResponse._({this.status, this.message, this.cart}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('AddToCartResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('AddToCartResponse', 'message');
    }
  }

  @override
  AddToCartResponse rebuild(void Function(AddToCartResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartResponseBuilder toBuilder() =>
      new AddToCartResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartResponse &&
        status == other.status &&
        message == other.message &&
        cart == other.cart;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), cart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCartResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('cart', cart))
        .toString();
  }
}

class AddToCartResponseBuilder
    implements Builder<AddToCartResponse, AddToCartResponseBuilder> {
  _$AddToCartResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CartBuilder _cart;
  CartBuilder get cart => _$this._cart ??= new CartBuilder();
  set cart(CartBuilder cart) => _$this._cart = cart;

  AddToCartResponseBuilder();

  AddToCartResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _cart = _$v.cart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToCartResponse;
  }

  @override
  void update(void Function(AddToCartResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartResponse build() {
    _$AddToCartResponse _$result;
    try {
      _$result = _$v ??
          new _$AddToCartResponse._(
              status: status, message: message, cart: _cart?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddToCartResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Cart extends Cart {
  @override
  final int quantity;
  @override
  final int type;
  @override
  final String sId;
  @override
  final String productId;
  @override
  final String userId;
  @override
  final String selectedAttributes;

  factory _$Cart([void Function(CartBuilder) updates]) =>
      (new CartBuilder()..update(updates)).build();

  _$Cart._(
      {this.quantity,
      this.type,
      this.sId,
      this.productId,
      this.userId,
      this.selectedAttributes})
      : super._();

  @override
  Cart rebuild(void Function(CartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartBuilder toBuilder() => new CartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cart &&
        quantity == other.quantity &&
        type == other.type &&
        sId == other.sId &&
        productId == other.productId &&
        userId == other.userId &&
        selectedAttributes == other.selectedAttributes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, quantity.hashCode), type.hashCode),
                    sId.hashCode),
                productId.hashCode),
            userId.hashCode),
        selectedAttributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cart')
          ..add('quantity', quantity)
          ..add('type', type)
          ..add('sId', sId)
          ..add('productId', productId)
          ..add('userId', userId)
          ..add('selectedAttributes', selectedAttributes))
        .toString();
  }
}

class CartBuilder implements Builder<Cart, CartBuilder> {
  _$Cart _$v;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _selectedAttributes;
  String get selectedAttributes => _$this._selectedAttributes;
  set selectedAttributes(String selectedAttributes) =>
      _$this._selectedAttributes = selectedAttributes;

  CartBuilder();

  CartBuilder get _$this {
    if (_$v != null) {
      _quantity = _$v.quantity;
      _type = _$v.type;
      _sId = _$v.sId;
      _productId = _$v.productId;
      _userId = _$v.userId;
      _selectedAttributes = _$v.selectedAttributes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cart;
  }

  @override
  void update(void Function(CartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cart build() {
    final _$result = _$v ??
        new _$Cart._(
            quantity: quantity,
            type: type,
            sId: sId,
            productId: productId,
            userId: userId,
            selectedAttributes: selectedAttributes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
