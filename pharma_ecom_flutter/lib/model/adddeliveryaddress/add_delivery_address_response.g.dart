// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_delivery_address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddDeliveryAddressResponse> _$addDeliveryAddressResponseSerializer =
    new _$AddDeliveryAddressResponseSerializer();
Serializer<UniversalResponseAddress> _$universalResponseAddressSerializer =
    new _$UniversalResponseAddressSerializer();

class _$AddDeliveryAddressResponseSerializer
    implements StructuredSerializer<AddDeliveryAddressResponse> {
  @override
  final Iterable<Type> types = const [
    AddDeliveryAddressResponse,
    _$AddDeliveryAddressResponse
  ];
  @override
  final String wireName = 'AddDeliveryAddressResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AddDeliveryAddressResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(UniversalResponseAddress)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddDeliveryAddressResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddDeliveryAddressResponseBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalResponseAddress))
              as UniversalResponseAddress);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UniversalResponseAddressSerializer
    implements StructuredSerializer<UniversalResponseAddress> {
  @override
  final Iterable<Type> types = const [
    UniversalResponseAddress,
    _$UniversalResponseAddress
  ];
  @override
  final String wireName = 'UniversalResponseAddress';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UniversalResponseAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
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
            specifiedType: const FullType(String)));
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
    return result;
  }

  @override
  UniversalResponseAddress deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UniversalResponseAddressBuilder();

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
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
              specifiedType: const FullType(String)) as String;
          break;
        case 'address1':
          result.address1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddDeliveryAddressResponse extends AddDeliveryAddressResponse {
  @override
  final int status;
  @override
  final UniversalResponseAddress data;
  @override
  final String message;

  factory _$AddDeliveryAddressResponse(
          [void Function(AddDeliveryAddressResponseBuilder) updates]) =>
      (new AddDeliveryAddressResponseBuilder()..update(updates)).build();

  _$AddDeliveryAddressResponse._({this.status, this.data, this.message})
      : super._();

  @override
  AddDeliveryAddressResponse rebuild(
          void Function(AddDeliveryAddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddDeliveryAddressResponseBuilder toBuilder() =>
      new AddDeliveryAddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddDeliveryAddressResponse &&
        status == other.status &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), data.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddDeliveryAddressResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class AddDeliveryAddressResponseBuilder
    implements
        Builder<AddDeliveryAddressResponse, AddDeliveryAddressResponseBuilder> {
  _$AddDeliveryAddressResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  UniversalResponseAddressBuilder _data;
  UniversalResponseAddressBuilder get data =>
      _$this._data ??= new UniversalResponseAddressBuilder();
  set data(UniversalResponseAddressBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  AddDeliveryAddressResponseBuilder();

  AddDeliveryAddressResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddDeliveryAddressResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddDeliveryAddressResponse;
  }

  @override
  void update(void Function(AddDeliveryAddressResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddDeliveryAddressResponse build() {
    _$AddDeliveryAddressResponse _$result;
    try {
      _$result = _$v ??
          new _$AddDeliveryAddressResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddDeliveryAddressResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UniversalResponseAddress extends UniversalResponseAddress {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String phoneNumber;
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
  final String zip;
  @override
  final String address1;
  @override
  final String address2;

  factory _$UniversalResponseAddress(
          [void Function(UniversalResponseAddressBuilder) updates]) =>
      (new UniversalResponseAddressBuilder()..update(updates)).build();

  _$UniversalResponseAddress._(
      {this.id,
      this.userId,
      this.phoneNumber,
      this.label,
      this.name,
      this.city,
      this.state,
      this.country,
      this.defaultAddress,
      this.zip,
      this.address1,
      this.address2})
      : super._();

  @override
  UniversalResponseAddress rebuild(
          void Function(UniversalResponseAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UniversalResponseAddressBuilder toBuilder() =>
      new UniversalResponseAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UniversalResponseAddress &&
        id == other.id &&
        userId == other.userId &&
        phoneNumber == other.phoneNumber &&
        label == other.label &&
        name == other.name &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        defaultAddress == other.defaultAddress &&
        zip == other.zip &&
        address1 == other.address1 &&
        address2 == other.address2;
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
                                            $jc($jc(0, id.hashCode),
                                                userId.hashCode),
                                            phoneNumber.hashCode),
                                        label.hashCode),
                                    name.hashCode),
                                city.hashCode),
                            state.hashCode),
                        country.hashCode),
                    defaultAddress.hashCode),
                zip.hashCode),
            address1.hashCode),
        address2.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UniversalResponseAddress')
          ..add('id', id)
          ..add('userId', userId)
          ..add('phoneNumber', phoneNumber)
          ..add('label', label)
          ..add('name', name)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('defaultAddress', defaultAddress)
          ..add('zip', zip)
          ..add('address1', address1)
          ..add('address2', address2))
        .toString();
  }
}

class UniversalResponseAddressBuilder
    implements
        Builder<UniversalResponseAddress, UniversalResponseAddressBuilder> {
  _$UniversalResponseAddress _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

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

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _address1;
  String get address1 => _$this._address1;
  set address1(String address1) => _$this._address1 = address1;

  String _address2;
  String get address2 => _$this._address2;
  set address2(String address2) => _$this._address2 = address2;

  UniversalResponseAddressBuilder();

  UniversalResponseAddressBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _phoneNumber = _$v.phoneNumber;
      _label = _$v.label;
      _name = _$v.name;
      _city = _$v.city;
      _state = _$v.state;
      _country = _$v.country;
      _defaultAddress = _$v.defaultAddress;
      _zip = _$v.zip;
      _address1 = _$v.address1;
      _address2 = _$v.address2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UniversalResponseAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UniversalResponseAddress;
  }

  @override
  void update(void Function(UniversalResponseAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UniversalResponseAddress build() {
    final _$result = _$v ??
        new _$UniversalResponseAddress._(
            id: id,
            userId: userId,
            phoneNumber: phoneNumber,
            label: label,
            name: name,
            city: city,
            state: state,
            country: country,
            defaultAddress: defaultAddress,
            zip: zip,
            address1: address1,
            address2: address2);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
