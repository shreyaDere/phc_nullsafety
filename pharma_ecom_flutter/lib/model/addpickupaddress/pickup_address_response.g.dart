// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PickUpAddressResponse> _$pickUpAddressResponseSerializer =
    new _$PickUpAddressResponseSerializer();
Serializer<PickUpAddressResponseData> _$pickUpAddressResponseDataSerializer =
    new _$PickUpAddressResponseDataSerializer();

class _$PickUpAddressResponseSerializer
    implements StructuredSerializer<PickUpAddressResponse> {
  @override
  final Iterable<Type> types = const [
    PickUpAddressResponse,
    _$PickUpAddressResponse
  ];
  @override
  final String wireName = 'PickUpAddressResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PickUpAddressResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(PickUpAddressResponseData)));
    }
    return result;
  }

  @override
  PickUpAddressResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickUpAddressResponseBuilder();

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
                  specifiedType: const FullType(PickUpAddressResponseData))
              as PickUpAddressResponseData);
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

class _$PickUpAddressResponseDataSerializer
    implements StructuredSerializer<PickUpAddressResponseData> {
  @override
  final Iterable<Type> types = const [
    PickUpAddressResponseData,
    _$PickUpAddressResponseData
  ];
  @override
  final String wireName = 'PickUpAddressResponseData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PickUpAddressResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('sId')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.pickupBranch != null) {
      result
        ..add('pickupBranch')
        ..add(serializers.serialize(object.pickupBranch,
            specifiedType: const FullType(PickupBranch)));
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
    if (object.pickupMobNumber != null) {
      result
        ..add('pickupMobNumber')
        ..add(serializers.serialize(object.pickupMobNumber,
            specifiedType: const FullType(int)));
    }
    if (object.pickupPerson != null) {
      result
        ..add('pickupPerson')
        ..add(serializers.serialize(object.pickupPerson,
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
  PickUpAddressResponseData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PickUpAddressResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sId':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupBranch':
          result.pickupBranch.replace(serializers.deserialize(value,
              specifiedType: const FullType(PickupBranch)) as PickupBranch);
          break;
        case 'pickupCode':
          result.pickupCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupMobNumber':
          result.pickupMobNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupPerson':
          result.pickupPerson = serializers.deserialize(value,
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

class _$PickUpAddressResponse extends PickUpAddressResponse {
  @override
  final int status;
  @override
  final PickUpAddressResponseData data;
  @override
  final String message;

  factory _$PickUpAddressResponse(
          [void Function(PickUpAddressResponseBuilder) updates]) =>
      (new PickUpAddressResponseBuilder()..update(updates)).build();

  _$PickUpAddressResponse._({this.status, this.data, this.message})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('PickUpAddressResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('PickUpAddressResponse', 'message');
    }
  }

  @override
  PickUpAddressResponse rebuild(
          void Function(PickUpAddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickUpAddressResponseBuilder toBuilder() =>
      new PickUpAddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickUpAddressResponse &&
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
    return (newBuiltValueToStringHelper('PickUpAddressResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class PickUpAddressResponseBuilder
    implements Builder<PickUpAddressResponse, PickUpAddressResponseBuilder> {
  _$PickUpAddressResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  PickUpAddressResponseDataBuilder _data;
  PickUpAddressResponseDataBuilder get data =>
      _$this._data ??= new PickUpAddressResponseDataBuilder();
  set data(PickUpAddressResponseDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PickUpAddressResponseBuilder();

  PickUpAddressResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickUpAddressResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickUpAddressResponse;
  }

  @override
  void update(void Function(PickUpAddressResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickUpAddressResponse build() {
    _$PickUpAddressResponse _$result;
    try {
      _$result = _$v ??
          new _$PickUpAddressResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PickUpAddressResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PickUpAddressResponseData extends PickUpAddressResponseData {
  @override
  final String sId;
  @override
  final PickupBranch pickupBranch;
  @override
  final int pickupCode;
  @override
  final String userID;
  @override
  final int pickupMobNumber;
  @override
  final String pickupPerson;
  @override
  final String updatedAt;

  factory _$PickUpAddressResponseData(
          [void Function(PickUpAddressResponseDataBuilder) updates]) =>
      (new PickUpAddressResponseDataBuilder()..update(updates)).build();

  _$PickUpAddressResponseData._(
      {this.sId,
      this.pickupBranch,
      this.pickupCode,
      this.userID,
      this.pickupMobNumber,
      this.pickupPerson,
      this.updatedAt})
      : super._();

  @override
  PickUpAddressResponseData rebuild(
          void Function(PickUpAddressResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickUpAddressResponseDataBuilder toBuilder() =>
      new PickUpAddressResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickUpAddressResponseData &&
        sId == other.sId &&
        pickupBranch == other.pickupBranch &&
        pickupCode == other.pickupCode &&
        userID == other.userID &&
        pickupMobNumber == other.pickupMobNumber &&
        pickupPerson == other.pickupPerson &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, sId.hashCode), pickupBranch.hashCode),
                        pickupCode.hashCode),
                    userID.hashCode),
                pickupMobNumber.hashCode),
            pickupPerson.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PickUpAddressResponseData')
          ..add('sId', sId)
          ..add('pickupBranch', pickupBranch)
          ..add('pickupCode', pickupCode)
          ..add('userID', userID)
          ..add('pickupMobNumber', pickupMobNumber)
          ..add('pickupPerson', pickupPerson)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PickUpAddressResponseDataBuilder
    implements
        Builder<PickUpAddressResponseData, PickUpAddressResponseDataBuilder> {
  _$PickUpAddressResponseData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  PickupBranchBuilder _pickupBranch;
  PickupBranchBuilder get pickupBranch =>
      _$this._pickupBranch ??= new PickupBranchBuilder();
  set pickupBranch(PickupBranchBuilder pickupBranch) =>
      _$this._pickupBranch = pickupBranch;

  int _pickupCode;
  int get pickupCode => _$this._pickupCode;
  set pickupCode(int pickupCode) => _$this._pickupCode = pickupCode;

  String _userID;
  String get userID => _$this._userID;
  set userID(String userID) => _$this._userID = userID;

  int _pickupMobNumber;
  int get pickupMobNumber => _$this._pickupMobNumber;
  set pickupMobNumber(int pickupMobNumber) =>
      _$this._pickupMobNumber = pickupMobNumber;

  String _pickupPerson;
  String get pickupPerson => _$this._pickupPerson;
  set pickupPerson(String pickupPerson) => _$this._pickupPerson = pickupPerson;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  PickUpAddressResponseDataBuilder();

  PickUpAddressResponseDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _pickupCode = _$v.pickupCode;
      _userID = _$v.userID;
      _pickupMobNumber = _$v.pickupMobNumber;
      _pickupPerson = _$v.pickupPerson;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickUpAddressResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PickUpAddressResponseData;
  }

  @override
  void update(void Function(PickUpAddressResponseDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PickUpAddressResponseData build() {
    _$PickUpAddressResponseData _$result;
    try {
      _$result = _$v ??
          new _$PickUpAddressResponseData._(
              sId: sId,
              pickupBranch: _pickupBranch?.build(),
              pickupCode: pickupCode,
              userID: userID,
              pickupMobNumber: pickupMobNumber,
              pickupPerson: pickupPerson,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PickUpAddressResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
