// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pickup_address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetPickUpAddressResponse> _$getPickUpAddressResponseSerializer =
    new _$GetPickUpAddressResponseSerializer();
Serializer<AddressData> _$addressDataSerializer = new _$AddressDataSerializer();
Serializer<PickupBranch> _$pickupBranchSerializer =
    new _$PickupBranchSerializer();

class _$GetPickUpAddressResponseSerializer
    implements StructuredSerializer<GetPickUpAddressResponse> {
  @override
  final Iterable<Type> types = const [
    GetPickUpAddressResponse,
    _$GetPickUpAddressResponse
  ];
  @override
  final String wireName = 'GetPickUpAddressResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetPickUpAddressResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(AddressData)),
    ];

    return result;
  }

  @override
  GetPickUpAddressResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetPickUpAddressResponseBuilder();

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
              specifiedType: const FullType(AddressData)) as AddressData);
          break;
      }
    }

    return result.build();
  }
}

class _$AddressDataSerializer implements StructuredSerializer<AddressData> {
  @override
  final Iterable<Type> types = const [AddressData, _$AddressData];
  @override
  final String wireName = 'AddressData';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.pickupBranch != null) {
      result
        ..add('pickupBranch')
        ..add(serializers.serialize(object.pickupBranch,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PickupBranch)])));
    }
    if (object.pickupCode != null) {
      result
        ..add('pickupCode')
        ..add(serializers.serialize(object.pickupCode,
            specifiedType: const FullType(int)));
    }
    if (object.userID != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(object.userID,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupBranch':
          result.pickupBranch.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PickupBranch)]))
              as BuiltList<Object>);
          break;
        case 'pickupCode':
          result.pickupCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PickupBranchSerializer implements StructuredSerializer<PickupBranch> {
  @override
  final Iterable<Type> types = const [PickupBranch, _$PickupBranch];
  @override
  final String wireName = 'PickupBranch';

  @override
  Iterable<Object> serialize(Serializers serializers, PickupBranch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
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
            specifiedType: const FullType(int)));
    }
    if (object.addressLine1 != null) {
      result
        ..add('addressLine1')
        ..add(serializers.serialize(object.addressLine1,
            specifiedType: const FullType(String)));
    }
    if (object.addressLine2 != null) {
      result
        ..add('addressLine2')
        ..add(serializers.serialize(object.addressLine2,
            specifiedType: const FullType(String)));
    }
    if (object.addressLine3 != null) {
      result
        ..add('addressLine3')
        ..add(serializers.serialize(object.addressLine3,
            specifiedType: const FullType(String)));
    }
    if (object.area != null) {
      result
        ..add('area')
        ..add(serializers.serialize(object.area,
            specifiedType: const FullType(String)));
    }
    if (object.landmark != null) {
      result
        ..add('landmark')
        ..add(serializers.serialize(object.landmark,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PickupBranch deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickupBranchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'addressLine1':
          result.addressLine1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressLine2':
          result.addressLine2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addressLine3':
          result.addressLine3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'landmark':
          result.landmark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetPickUpAddressResponse extends GetPickUpAddressResponse {
  @override
  final int status;
  @override
  final String message;
  @override
  final AddressData data;

  factory _$GetPickUpAddressResponse(
          [void Function(GetPickUpAddressResponseBuilder) updates]) =>
      (new GetPickUpAddressResponseBuilder()..update(updates)).build();

  _$GetPickUpAddressResponse._({this.status, this.message, this.data})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('GetPickUpAddressResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('GetPickUpAddressResponse', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('GetPickUpAddressResponse', 'data');
    }
  }

  @override
  GetPickUpAddressResponse rebuild(
          void Function(GetPickUpAddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPickUpAddressResponseBuilder toBuilder() =>
      new GetPickUpAddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPickUpAddressResponse &&
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
    return (newBuiltValueToStringHelper('GetPickUpAddressResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetPickUpAddressResponseBuilder
    implements
        Builder<GetPickUpAddressResponse, GetPickUpAddressResponseBuilder> {
  _$GetPickUpAddressResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  AddressDataBuilder _data;
  AddressDataBuilder get data => _$this._data ??= new AddressDataBuilder();
  set data(AddressDataBuilder data) => _$this._data = data;

  GetPickUpAddressResponseBuilder();

  GetPickUpAddressResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPickUpAddressResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetPickUpAddressResponse;
  }

  @override
  void update(void Function(GetPickUpAddressResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetPickUpAddressResponse build() {
    _$GetPickUpAddressResponse _$result;
    try {
      _$result = _$v ??
          new _$GetPickUpAddressResponse._(
              status: status, message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetPickUpAddressResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddressData extends AddressData {
  @override
  final String sId;
  @override
  final BuiltList<PickupBranch> pickupBranch;
  @override
  final int pickupCode;
  @override
  final String userID;

  factory _$AddressData([void Function(AddressDataBuilder) updates]) =>
      (new AddressDataBuilder()..update(updates)).build();

  _$AddressData._({this.sId, this.pickupBranch, this.pickupCode, this.userID})
      : super._();

  @override
  AddressData rebuild(void Function(AddressDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressDataBuilder toBuilder() => new AddressDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressData &&
        sId == other.sId &&
        pickupBranch == other.pickupBranch &&
        pickupCode == other.pickupCode &&
        userID == other.userID;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, sId.hashCode), pickupBranch.hashCode),
            pickupCode.hashCode),
        userID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressData')
          ..add('sId', sId)
          ..add('pickupBranch', pickupBranch)
          ..add('pickupCode', pickupCode)
          ..add('userID', userID))
        .toString();
  }
}

class AddressDataBuilder implements Builder<AddressData, AddressDataBuilder> {
  _$AddressData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  ListBuilder<PickupBranch> _pickupBranch;
  ListBuilder<PickupBranch> get pickupBranch =>
      _$this._pickupBranch ??= new ListBuilder<PickupBranch>();
  set pickupBranch(ListBuilder<PickupBranch> pickupBranch) =>
      _$this._pickupBranch = pickupBranch;

  int _pickupCode;
  int get pickupCode => _$this._pickupCode;
  set pickupCode(int pickupCode) => _$this._pickupCode = pickupCode;

  String _userID;
  String get userID => _$this._userID;
  set userID(String userID) => _$this._userID = userID;

  AddressDataBuilder();

  AddressDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _pickupCode = _$v.pickupCode;
      _userID = _$v.userID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddressData;
  }

  @override
  void update(void Function(AddressDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressData build() {
    _$AddressData _$result;
    try {
      _$result = _$v ??
          new _$AddressData._(
              sId: sId,
              pickupBranch: _pickupBranch?.build(),
              pickupCode: pickupCode,
              userID: userID);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddressData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PickupBranch extends PickupBranch {
  @override
  final String sId;
  @override
  final String name;
  @override
  final int phoneNumber;
  @override
  final String addressLine1;
  @override
  final String addressLine2;
  @override
  final String addressLine3;
  @override
  final String area;
  @override
  final String landmark;
  @override
  final String city;
  @override
  final int zip;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$PickupBranch([void Function(PickupBranchBuilder) updates]) =>
      (new PickupBranchBuilder()..update(updates)).build();

  _$PickupBranch._(
      {this.sId,
      this.name,
      this.phoneNumber,
      this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.area,
      this.landmark,
      this.city,
      this.zip,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  PickupBranch rebuild(void Function(PickupBranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickupBranchBuilder toBuilder() => new PickupBranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickupBranch &&
        sId == other.sId &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        addressLine3 == other.addressLine3 &&
        area == other.area &&
        landmark == other.landmark &&
        city == other.city &&
        zip == other.zip &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
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
                                            $jc($jc(0, sId.hashCode),
                                                name.hashCode),
                                            phoneNumber.hashCode),
                                        addressLine1.hashCode),
                                    addressLine2.hashCode),
                                addressLine3.hashCode),
                            area.hashCode),
                        landmark.hashCode),
                    city.hashCode),
                zip.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PickupBranch')
          ..add('sId', sId)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('addressLine1', addressLine1)
          ..add('addressLine2', addressLine2)
          ..add('addressLine3', addressLine3)
          ..add('area', area)
          ..add('landmark', landmark)
          ..add('city', city)
          ..add('zip', zip)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PickupBranchBuilder
    implements Builder<PickupBranch, PickupBranchBuilder> {
  _$PickupBranch _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _addressLine1;
  String get addressLine1 => _$this._addressLine1;
  set addressLine1(String addressLine1) => _$this._addressLine1 = addressLine1;

  String _addressLine2;
  String get addressLine2 => _$this._addressLine2;
  set addressLine2(String addressLine2) => _$this._addressLine2 = addressLine2;

  String _addressLine3;
  String get addressLine3 => _$this._addressLine3;
  set addressLine3(String addressLine3) => _$this._addressLine3 = addressLine3;

  String _area;
  String get area => _$this._area;
  set area(String area) => _$this._area = area;

  String _landmark;
  String get landmark => _$this._landmark;
  set landmark(String landmark) => _$this._landmark = landmark;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  int _zip;
  int get zip => _$this._zip;
  set zip(int zip) => _$this._zip = zip;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  PickupBranchBuilder();

  PickupBranchBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _name = _$v.name;
      _phoneNumber = _$v.phoneNumber;
      _addressLine1 = _$v.addressLine1;
      _addressLine2 = _$v.addressLine2;
      _addressLine3 = _$v.addressLine3;
      _area = _$v.area;
      _landmark = _$v.landmark;
      _city = _$v.city;
      _zip = _$v.zip;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickupBranch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickupBranch;
  }

  @override
  void update(void Function(PickupBranchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickupBranch build() {
    final _$result = _$v ??
        new _$PickupBranch._(
            sId: sId,
            name: name,
            phoneNumber: phoneNumber,
            addressLine1: addressLine1,
            addressLine2: addressLine2,
            addressLine3: addressLine3,
            area: area,
            landmark: landmark,
            city: city,
            zip: zip,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
