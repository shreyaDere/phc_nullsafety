// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_tot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartTotRequest> _$cartTotRequestSerializer =
    new _$CartTotRequestSerializer();
Serializer<PickupUserObj> _$pickupUserObjSerializer =
    new _$PickupUserObjSerializer();

class _$CartTotRequestSerializer
    implements StructuredSerializer<CartTotRequest> {
  @override
  final Iterable<Type> types = const [CartTotRequest, _$CartTotRequest];
  @override
  final String wireName = 'CartTotRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, CartTotRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billingAddress != null) {
      result
        ..add('billing_address')
        ..add(serializers.serialize(object.billingAddress,
            specifiedType: const FullType(UniversalResponseAddress)));
    }
    if (object.shippingAddress != null) {
      result
        ..add('shipping_address')
        ..add(serializers.serialize(object.shippingAddress,
            specifiedType: const FullType(UniversalResponseAddress)));
    }
    if (object.uniqueCode != null) {
      result
        ..add('uniqueCode')
        ..add(serializers.serialize(object.uniqueCode,
            specifiedType: const FullType(int)));
    }
    if (object.cartItems != null) {
      result
        ..add('cart_items')
        ..add(serializers.serialize(object.cartItems,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.coupons != null) {
      result
        ..add('coupons')
        ..add(serializers.serialize(object.coupons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.deliveryType != null) {
      result
        ..add('delivery_type')
        ..add(serializers.serialize(object.deliveryType,
            specifiedType: const FullType(int)));
    }
    if (object.applyRewards != null) {
      result
        ..add('applyRewards')
        ..add(serializers.serialize(object.applyRewards,
            specifiedType: const FullType(int)));
    }
    if (object.prescriptionId != null) {
      result
        ..add('prescriptionId')
        ..add(serializers.serialize(object.prescriptionId,
            specifiedType: const FullType(String)));
    }
    if (object.shippingId != null) {
      result
        ..add('shipping_id')
        ..add(serializers.serialize(object.shippingId,
            specifiedType: const FullType(String)));
    }
    if (object.orderType != null) {
      result
        ..add('orderType')
        ..add(serializers.serialize(object.orderType,
            specifiedType: const FullType(int)));
    }
    if (object.pickupAddress != null) {
      result
        ..add('pickupAddress')
        ..add(serializers.serialize(object.pickupAddress,
            specifiedType: const FullType(String)));
    }
    if (object.pickupUser != null) {
      result
        ..add('pickupUser')
        ..add(serializers.serialize(object.pickupUser,
            specifiedType: const FullType(PickupUserObj)));
    }
    return result;
  }

  @override
  CartTotRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartTotRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billing_address':
          result.billingAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalResponseAddress))
              as UniversalResponseAddress);
          break;
        case 'shipping_address':
          result.shippingAddress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalResponseAddress))
              as UniversalResponseAddress);
          break;
        case 'uniqueCode':
          result.uniqueCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cart_items':
          result.cartItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'coupons':
          result.coupons.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'delivery_type':
          result.deliveryType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'applyRewards':
          result.applyRewards = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prescriptionId':
          result.prescriptionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shipping_id':
          result.shippingId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderType':
          result.orderType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupAddress':
          result.pickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupUser':
          result.pickupUser.replace(serializers.deserialize(value,
              specifiedType: const FullType(PickupUserObj)) as PickupUserObj);
          break;
      }
    }

    return result.build();
  }
}

class _$PickupUserObjSerializer implements StructuredSerializer<PickupUserObj> {
  @override
  final Iterable<Type> types = const [PickupUserObj, _$PickupUserObj];
  @override
  final String wireName = 'PickupUserObj';

  @override
  Iterable<Object> serialize(Serializers serializers, PickupUserObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.otp != null) {
      result
        ..add('otp')
        ..add(serializers.serialize(object.otp,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PickupUserObj deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickupUserObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CartTotRequest extends CartTotRequest {
  @override
  final UniversalResponseAddress billingAddress;
  @override
  final UniversalResponseAddress shippingAddress;
  @override
  final int uniqueCode;
  @override
  final BuiltList<UniversalProduct> cartItems;
  @override
  final BuiltList<String> coupons;
  @override
  final int deliveryType;
  @override
  final int applyRewards;
  @override
  final String prescriptionId;
  @override
  final String shippingId;
  @override
  final int orderType;
  @override
  final String pickupAddress;
  @override
  final PickupUserObj pickupUser;

  factory _$CartTotRequest([void Function(CartTotRequestBuilder) updates]) =>
      (new CartTotRequestBuilder()..update(updates)).build();

  _$CartTotRequest._(
      {this.billingAddress,
      this.shippingAddress,
      this.uniqueCode,
      this.cartItems,
      this.coupons,
      this.deliveryType,
      this.applyRewards,
      this.prescriptionId,
      this.shippingId,
      this.orderType,
      this.pickupAddress,
      this.pickupUser})
      : super._();

  @override
  CartTotRequest rebuild(void Function(CartTotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartTotRequestBuilder toBuilder() =>
      new CartTotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartTotRequest &&
        billingAddress == other.billingAddress &&
        shippingAddress == other.shippingAddress &&
        uniqueCode == other.uniqueCode &&
        cartItems == other.cartItems &&
        coupons == other.coupons &&
        deliveryType == other.deliveryType &&
        applyRewards == other.applyRewards &&
        prescriptionId == other.prescriptionId &&
        shippingId == other.shippingId &&
        orderType == other.orderType &&
        pickupAddress == other.pickupAddress &&
        pickupUser == other.pickupUser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, billingAddress.hashCode),
                                                shippingAddress.hashCode),
                                            uniqueCode.hashCode),
                                        cartItems.hashCode),
                                    coupons.hashCode),
                                deliveryType.hashCode),
                            applyRewards.hashCode),
                        prescriptionId.hashCode),
                    shippingId.hashCode),
                orderType.hashCode),
            pickupAddress.hashCode),
        pickupUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartTotRequest')
          ..add('billingAddress', billingAddress)
          ..add('shippingAddress', shippingAddress)
          ..add('uniqueCode', uniqueCode)
          ..add('cartItems', cartItems)
          ..add('coupons', coupons)
          ..add('deliveryType', deliveryType)
          ..add('applyRewards', applyRewards)
          ..add('prescriptionId', prescriptionId)
          ..add('shippingId', shippingId)
          ..add('orderType', orderType)
          ..add('pickupAddress', pickupAddress)
          ..add('pickupUser', pickupUser))
        .toString();
  }
}

class CartTotRequestBuilder
    implements Builder<CartTotRequest, CartTotRequestBuilder> {
  _$CartTotRequest _$v;

  UniversalResponseAddressBuilder _billingAddress;
  UniversalResponseAddressBuilder get billingAddress =>
      _$this._billingAddress ??= new UniversalResponseAddressBuilder();
  set billingAddress(UniversalResponseAddressBuilder billingAddress) =>
      _$this._billingAddress = billingAddress;

  UniversalResponseAddressBuilder _shippingAddress;
  UniversalResponseAddressBuilder get shippingAddress =>
      _$this._shippingAddress ??= new UniversalResponseAddressBuilder();
  set shippingAddress(UniversalResponseAddressBuilder shippingAddress) =>
      _$this._shippingAddress = shippingAddress;

  int _uniqueCode;
  int get uniqueCode => _$this._uniqueCode;
  set uniqueCode(int uniqueCode) => _$this._uniqueCode = uniqueCode;

  ListBuilder<UniversalProduct> _cartItems;
  ListBuilder<UniversalProduct> get cartItems =>
      _$this._cartItems ??= new ListBuilder<UniversalProduct>();
  set cartItems(ListBuilder<UniversalProduct> cartItems) =>
      _$this._cartItems = cartItems;

  ListBuilder<String> _coupons;
  ListBuilder<String> get coupons =>
      _$this._coupons ??= new ListBuilder<String>();
  set coupons(ListBuilder<String> coupons) => _$this._coupons = coupons;

  int _deliveryType;
  int get deliveryType => _$this._deliveryType;
  set deliveryType(int deliveryType) => _$this._deliveryType = deliveryType;

  int _applyRewards;
  int get applyRewards => _$this._applyRewards;
  set applyRewards(int applyRewards) => _$this._applyRewards = applyRewards;

  String _prescriptionId;
  String get prescriptionId => _$this._prescriptionId;
  set prescriptionId(String prescriptionId) =>
      _$this._prescriptionId = prescriptionId;

  String _shippingId;
  String get shippingId => _$this._shippingId;
  set shippingId(String shippingId) => _$this._shippingId = shippingId;

  int _orderType;
  int get orderType => _$this._orderType;
  set orderType(int orderType) => _$this._orderType = orderType;

  String _pickupAddress;
  String get pickupAddress => _$this._pickupAddress;
  set pickupAddress(String pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  PickupUserObjBuilder _pickupUser;
  PickupUserObjBuilder get pickupUser =>
      _$this._pickupUser ??= new PickupUserObjBuilder();
  set pickupUser(PickupUserObjBuilder pickupUser) =>
      _$this._pickupUser = pickupUser;

  CartTotRequestBuilder();

  CartTotRequestBuilder get _$this {
    if (_$v != null) {
      _billingAddress = _$v.billingAddress?.toBuilder();
      _shippingAddress = _$v.shippingAddress?.toBuilder();
      _uniqueCode = _$v.uniqueCode;
      _cartItems = _$v.cartItems?.toBuilder();
      _coupons = _$v.coupons?.toBuilder();
      _deliveryType = _$v.deliveryType;
      _applyRewards = _$v.applyRewards;
      _prescriptionId = _$v.prescriptionId;
      _shippingId = _$v.shippingId;
      _orderType = _$v.orderType;
      _pickupAddress = _$v.pickupAddress;
      _pickupUser = _$v.pickupUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartTotRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CartTotRequest;
  }

  @override
  void update(void Function(CartTotRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartTotRequest build() {
    _$CartTotRequest _$result;
    try {
      _$result = _$v ??
          new _$CartTotRequest._(
              billingAddress: _billingAddress?.build(),
              shippingAddress: _shippingAddress?.build(),
              uniqueCode: uniqueCode,
              cartItems: _cartItems?.build(),
              coupons: _coupons?.build(),
              deliveryType: deliveryType,
              applyRewards: applyRewards,
              prescriptionId: prescriptionId,
              shippingId: shippingId,
              orderType: orderType,
              pickupAddress: pickupAddress,
              pickupUser: _pickupUser?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'billingAddress';
        _billingAddress?.build();
        _$failedField = 'shippingAddress';
        _shippingAddress?.build();

        _$failedField = 'cartItems';
        _cartItems?.build();
        _$failedField = 'coupons';
        _coupons?.build();

        _$failedField = 'pickupUser';
        _pickupUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CartTotRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PickupUserObj extends PickupUserObj {
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final int otp;

  factory _$PickupUserObj([void Function(PickupUserObjBuilder) updates]) =>
      (new PickupUserObjBuilder()..update(updates)).build();

  _$PickupUserObj._({this.name, this.phoneNumber, this.otp}) : super._();

  @override
  PickupUserObj rebuild(void Function(PickupUserObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickupUserObjBuilder toBuilder() => new PickupUserObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickupUserObj &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), phoneNumber.hashCode), otp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PickupUserObj')
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('otp', otp))
        .toString();
  }
}

class PickupUserObjBuilder
    implements Builder<PickupUserObj, PickupUserObjBuilder> {
  _$PickupUserObj _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _otp;
  int get otp => _$this._otp;
  set otp(int otp) => _$this._otp = otp;

  PickupUserObjBuilder();

  PickupUserObjBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _phoneNumber = _$v.phoneNumber;
      _otp = _$v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickupUserObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickupUserObj;
  }

  @override
  void update(void Function(PickupUserObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickupUserObj build() {
    final _$result = _$v ??
        new _$PickupUserObj._(name: name, phoneNumber: phoneNumber, otp: otp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
