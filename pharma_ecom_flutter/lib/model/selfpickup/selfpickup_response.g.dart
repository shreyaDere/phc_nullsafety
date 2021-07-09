// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selfpickup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelfPichUpResponseGetApi> _$selfPichUpResponseGetApiSerializer =
    new _$SelfPichUpResponseGetApiSerializer();
Serializer<DataSelfPichUpResponseGetApi>
    _$dataSelfPichUpResponseGetApiSerializer =
    new _$DataSelfPichUpResponseGetApiSerializer();
Serializer<PickupBranchSelfPichUpResponseGetApi>
    _$pickupBranchSelfPichUpResponseGetApiSerializer =
    new _$PickupBranchSelfPichUpResponseGetApiSerializer();

class _$SelfPichUpResponseGetApiSerializer
    implements StructuredSerializer<SelfPichUpResponseGetApi> {
  @override
  final Iterable<Type> types = const [
    SelfPichUpResponseGetApi,
    _$SelfPichUpResponseGetApi
  ];
  @override
  final String wireName = 'SelfPichUpResponseGetApi';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SelfPichUpResponseGetApi object,
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
            specifiedType: const FullType(DataSelfPichUpResponseGetApi)));
    }
    return result;
  }

  @override
  SelfPichUpResponseGetApi deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelfPichUpResponseGetApiBuilder();

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
                  specifiedType: const FullType(DataSelfPichUpResponseGetApi))
              as DataSelfPichUpResponseGetApi);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSelfPichUpResponseGetApiSerializer
    implements StructuredSerializer<DataSelfPichUpResponseGetApi> {
  @override
  final Iterable<Type> types = const [
    DataSelfPichUpResponseGetApi,
    _$DataSelfPichUpResponseGetApi
  ];
  @override
  final String wireName = 'DataSelfPichUpResponseGetApi';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataSelfPichUpResponseGetApi object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pickupBranch != null) {
      result
        ..add('pickupBranch')
        ..add(serializers.serialize(object.pickupBranch,
            specifiedType: const FullType(BuiltList,
                const [const FullType(PickupBranchSelfPichUpResponseGetApi)])));
    }
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.pickupCode != null) {
      result
        ..add('pickupCode')
        ..add(serializers.serialize(object.pickupCode,
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
  DataSelfPichUpResponseGetApi deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSelfPichUpResponseGetApiBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pickupBranch':
          result.pickupBranch.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PickupBranchSelfPichUpResponseGetApi)
              ])) as BuiltList<Object>);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupCode':
          result.pickupCode = serializers.deserialize(value,
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

class _$PickupBranchSelfPichUpResponseGetApiSerializer
    implements StructuredSerializer<PickupBranchSelfPichUpResponseGetApi> {
  @override
  final Iterable<Type> types = const [
    PickupBranchSelfPichUpResponseGetApi,
    _$PickupBranchSelfPichUpResponseGetApi
  ];
  @override
  final String wireName = 'PickupBranchSelfPichUpResponseGetApi';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PickupBranchSelfPichUpResponseGetApi object,
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
  PickupBranchSelfPichUpResponseGetApi deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickupBranchSelfPichUpResponseGetApiBuilder();

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

class _$SelfPichUpResponseGetApi extends SelfPichUpResponseGetApi {
  @override
  final int status;
  @override
  final String message;
  @override
  final DataSelfPichUpResponseGetApi data;

  factory _$SelfPichUpResponseGetApi(
          [void Function(SelfPichUpResponseGetApiBuilder) updates]) =>
      (new SelfPichUpResponseGetApiBuilder()..update(updates)).build();

  _$SelfPichUpResponseGetApi._({this.status, this.message, this.data})
      : super._();

  @override
  SelfPichUpResponseGetApi rebuild(
          void Function(SelfPichUpResponseGetApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelfPichUpResponseGetApiBuilder toBuilder() =>
      new SelfPichUpResponseGetApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelfPichUpResponseGetApi &&
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
    return (newBuiltValueToStringHelper('SelfPichUpResponseGetApi')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class SelfPichUpResponseGetApiBuilder
    implements
        Builder<SelfPichUpResponseGetApi, SelfPichUpResponseGetApiBuilder> {
  _$SelfPichUpResponseGetApi _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataSelfPichUpResponseGetApiBuilder _data;
  DataSelfPichUpResponseGetApiBuilder get data =>
      _$this._data ??= new DataSelfPichUpResponseGetApiBuilder();
  set data(DataSelfPichUpResponseGetApiBuilder data) => _$this._data = data;

  SelfPichUpResponseGetApiBuilder();

  SelfPichUpResponseGetApiBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelfPichUpResponseGetApi other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SelfPichUpResponseGetApi;
  }

  @override
  void update(void Function(SelfPichUpResponseGetApiBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SelfPichUpResponseGetApi build() {
    _$SelfPichUpResponseGetApi _$result;
    try {
      _$result = _$v ??
          new _$SelfPichUpResponseGetApi._(
              status: status, message: message, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SelfPichUpResponseGetApi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataSelfPichUpResponseGetApi extends DataSelfPichUpResponseGetApi {
  @override
  final BuiltList<PickupBranchSelfPichUpResponseGetApi> pickupBranch;
  @override
  final String id;
  @override
  final int pickupCode;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$DataSelfPichUpResponseGetApi(
          [void Function(DataSelfPichUpResponseGetApiBuilder) updates]) =>
      (new DataSelfPichUpResponseGetApiBuilder()..update(updates)).build();

  _$DataSelfPichUpResponseGetApi._(
      {this.pickupBranch,
      this.id,
      this.pickupCode,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  DataSelfPichUpResponseGetApi rebuild(
          void Function(DataSelfPichUpResponseGetApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSelfPichUpResponseGetApiBuilder toBuilder() =>
      new DataSelfPichUpResponseGetApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSelfPichUpResponseGetApi &&
        pickupBranch == other.pickupBranch &&
        id == other.id &&
        pickupCode == other.pickupCode &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, pickupBranch.hashCode), id.hashCode),
                pickupCode.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataSelfPichUpResponseGetApi')
          ..add('pickupBranch', pickupBranch)
          ..add('id', id)
          ..add('pickupCode', pickupCode)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class DataSelfPichUpResponseGetApiBuilder
    implements
        Builder<DataSelfPichUpResponseGetApi,
            DataSelfPichUpResponseGetApiBuilder> {
  _$DataSelfPichUpResponseGetApi _$v;

  ListBuilder<PickupBranchSelfPichUpResponseGetApi> _pickupBranch;
  ListBuilder<PickupBranchSelfPichUpResponseGetApi> get pickupBranch =>
      _$this._pickupBranch ??=
          new ListBuilder<PickupBranchSelfPichUpResponseGetApi>();
  set pickupBranch(
          ListBuilder<PickupBranchSelfPichUpResponseGetApi> pickupBranch) =>
      _$this._pickupBranch = pickupBranch;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _pickupCode;
  int get pickupCode => _$this._pickupCode;
  set pickupCode(int pickupCode) => _$this._pickupCode = pickupCode;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  DataSelfPichUpResponseGetApiBuilder();

  DataSelfPichUpResponseGetApiBuilder get _$this {
    if (_$v != null) {
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _id = _$v.id;
      _pickupCode = _$v.pickupCode;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSelfPichUpResponseGetApi other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataSelfPichUpResponseGetApi;
  }

  @override
  void update(void Function(DataSelfPichUpResponseGetApiBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataSelfPichUpResponseGetApi build() {
    _$DataSelfPichUpResponseGetApi _$result;
    try {
      _$result = _$v ??
          new _$DataSelfPichUpResponseGetApi._(
              pickupBranch: _pickupBranch?.build(),
              id: id,
              pickupCode: pickupCode,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataSelfPichUpResponseGetApi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PickupBranchSelfPichUpResponseGetApi
    extends PickupBranchSelfPichUpResponseGetApi {
  @override
  final String id;
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

  factory _$PickupBranchSelfPichUpResponseGetApi(
          [void Function(PickupBranchSelfPichUpResponseGetApiBuilder)
              updates]) =>
      (new PickupBranchSelfPichUpResponseGetApiBuilder()..update(updates))
          .build();

  _$PickupBranchSelfPichUpResponseGetApi._(
      {this.id,
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
  PickupBranchSelfPichUpResponseGetApi rebuild(
          void Function(PickupBranchSelfPichUpResponseGetApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickupBranchSelfPichUpResponseGetApiBuilder toBuilder() =>
      new PickupBranchSelfPichUpResponseGetApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickupBranchSelfPichUpResponseGetApi &&
        id == other.id &&
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
                                            $jc($jc(0, id.hashCode),
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
    return (newBuiltValueToStringHelper('PickupBranchSelfPichUpResponseGetApi')
          ..add('id', id)
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

class PickupBranchSelfPichUpResponseGetApiBuilder
    implements
        Builder<PickupBranchSelfPichUpResponseGetApi,
            PickupBranchSelfPichUpResponseGetApiBuilder> {
  _$PickupBranchSelfPichUpResponseGetApi _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

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

  PickupBranchSelfPichUpResponseGetApiBuilder();

  PickupBranchSelfPichUpResponseGetApiBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
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
  void replace(PickupBranchSelfPichUpResponseGetApi other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickupBranchSelfPichUpResponseGetApi;
  }

  @override
  void update(
      void Function(PickupBranchSelfPichUpResponseGetApiBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickupBranchSelfPichUpResponseGetApi build() {
    final _$result = _$v ??
        new _$PickupBranchSelfPichUpResponseGetApi._(
            id: id,
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
