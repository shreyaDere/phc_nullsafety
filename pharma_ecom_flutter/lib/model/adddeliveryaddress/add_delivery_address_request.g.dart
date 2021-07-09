// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_delivery_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddDeliveryAddressRequest> _$addDeliveryAddressRequestSerializer =
    new _$AddDeliveryAddressRequestSerializer();

class _$AddDeliveryAddressRequestSerializer
    implements StructuredSerializer<AddDeliveryAddressRequest> {
  @override
  final Iterable<Type> types = const [
    AddDeliveryAddressRequest,
    _$AddDeliveryAddressRequest
  ];
  @override
  final String wireName = 'AddDeliveryAddressRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AddDeliveryAddressRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.defaultAddress != null) {
      result
        ..add('defaultAddress')
        ..add(serializers.serialize(object.defaultAddress,
            specifiedType: const FullType(int)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(int)));
    }
    if (object.address1 != null) {
      result
        ..add('address1')
        ..add(serializers.serialize(object.address1,
            specifiedType: const FullType(String)));
    }
    if (object.address2 != null) {
      result
        ..add('address2')
        ..add(serializers.serialize(object.address2,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNo != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddDeliveryAddressRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddDeliveryAddressRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'defaultAddress':
          result.defaultAddress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddDeliveryAddressRequest extends AddDeliveryAddressRequest {
  @override
  final int label;
  @override
  final String name;
  @override
  final String city;
  @override
  final String state;
  @override
  final String country;
  @override
  final int defaultAddress;
  @override
  final int zip;
  @override
  final String address1;
  @override
  final String address2;
  @override
  final String phoneNo;

  factory _$AddDeliveryAddressRequest(
          [void Function(AddDeliveryAddressRequestBuilder) updates]) =>
      (new AddDeliveryAddressRequestBuilder()..update(updates)).build();

  _$AddDeliveryAddressRequest._(
      {this.label,
      this.name,
      this.city,
      this.state,
      this.country,
      this.defaultAddress,
      this.zip,
      this.address1,
      this.address2,
      this.phoneNo})
      : super._();

  @override
  AddDeliveryAddressRequest rebuild(
          void Function(AddDeliveryAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddDeliveryAddressRequestBuilder toBuilder() =>
      new AddDeliveryAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddDeliveryAddressRequest &&
        label == other.label &&
        name == other.name &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        defaultAddress == other.defaultAddress &&
        zip == other.zip &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        phoneNo == other.phoneNo;
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
                                $jc($jc($jc(0, label.hashCode), name.hashCode),
                                    city.hashCode),
                                state.hashCode),
                            country.hashCode),
                        defaultAddress.hashCode),
                    zip.hashCode),
                address1.hashCode),
            address2.hashCode),
        phoneNo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddDeliveryAddressRequest')
          ..add('label', label)
          ..add('name', name)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('defaultAddress', defaultAddress)
          ..add('zip', zip)
          ..add('address1', address1)
          ..add('address2', address2)
          ..add('phoneNo', phoneNo))
        .toString();
  }
}

class AddDeliveryAddressRequestBuilder
    implements
        Builder<AddDeliveryAddressRequest, AddDeliveryAddressRequestBuilder> {
  _$AddDeliveryAddressRequest _$v;

  int _label;
  int get label => _$this._label;
  set label(int label) => _$this._label = label;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _defaultAddress;
  int get defaultAddress => _$this._defaultAddress;
  set defaultAddress(int defaultAddress) =>
      _$this._defaultAddress = defaultAddress;

  int _zip;
  int get zip => _$this._zip;
  set zip(int zip) => _$this._zip = zip;

  String _address1;
  String get address1 => _$this._address1;
  set address1(String address1) => _$this._address1 = address1;

  String _address2;
  String get address2 => _$this._address2;
  set address2(String address2) => _$this._address2 = address2;

  String _phoneNo;
  String get phoneNo => _$this._phoneNo;
  set phoneNo(String phoneNo) => _$this._phoneNo = phoneNo;

  AddDeliveryAddressRequestBuilder();

  AddDeliveryAddressRequestBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _name = _$v.name;
      _city = _$v.city;
      _state = _$v.state;
      _country = _$v.country;
      _defaultAddress = _$v.defaultAddress;
      _zip = _$v.zip;
      _address1 = _$v.address1;
      _address2 = _$v.address2;
      _phoneNo = _$v.phoneNo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddDeliveryAddressRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddDeliveryAddressRequest;
  }

  @override
  void update(void Function(AddDeliveryAddressRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddDeliveryAddressRequest build() {
    final _$result = _$v ??
        new _$AddDeliveryAddressRequest._(
            label: label,
            name: name,
            city: city,
            state: state,
            country: country,
            defaultAddress: defaultAddress,
            zip: zip,
            address1: address1,
            address2: address2,
            phoneNo: phoneNo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
