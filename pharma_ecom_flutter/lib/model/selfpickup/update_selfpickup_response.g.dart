// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selfpickup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateSelfPickupResponse> _$updateSelfPickupResponseSerializer =
    new _$UpdateSelfPickupResponseSerializer();
Serializer<DataUpdateSelfPickupResponse>
    _$dataUpdateSelfPickupResponseSerializer =
    new _$DataUpdateSelfPickupResponseSerializer();

class _$UpdateSelfPickupResponseSerializer
    implements StructuredSerializer<UpdateSelfPickupResponse> {
  @override
  final Iterable<Type> types = const [
    UpdateSelfPickupResponse,
    _$UpdateSelfPickupResponse
  ];
  @override
  final String wireName = 'UpdateSelfPickupResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpdateSelfPickupResponse object,
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
            specifiedType: const FullType(DataUpdateSelfPickupResponse)));
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
  UpdateSelfPickupResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateSelfPickupResponseBuilder();

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
                  specifiedType: const FullType(DataUpdateSelfPickupResponse))
              as DataUpdateSelfPickupResponse);
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

class _$DataUpdateSelfPickupResponseSerializer
    implements StructuredSerializer<DataUpdateSelfPickupResponse> {
  @override
  final Iterable<Type> types = const [
    DataUpdateSelfPickupResponse,
    _$DataUpdateSelfPickupResponse
  ];
  @override
  final String wireName = 'DataUpdateSelfPickupResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataUpdateSelfPickupResponse object,
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
    return result;
  }

  @override
  DataUpdateSelfPickupResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataUpdateSelfPickupResponseBuilder();

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
        case 'pickupMobNumber':
          result.pickupMobNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupPerson':
          result.pickupPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateSelfPickupResponse extends UpdateSelfPickupResponse {
  @override
  final int status;
  @override
  final DataUpdateSelfPickupResponse data;
  @override
  final String message;

  factory _$UpdateSelfPickupResponse(
          [void Function(UpdateSelfPickupResponseBuilder) updates]) =>
      (new UpdateSelfPickupResponseBuilder()..update(updates)).build();

  _$UpdateSelfPickupResponse._({this.status, this.data, this.message})
      : super._();

  @override
  UpdateSelfPickupResponse rebuild(
          void Function(UpdateSelfPickupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSelfPickupResponseBuilder toBuilder() =>
      new UpdateSelfPickupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSelfPickupResponse &&
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
    return (newBuiltValueToStringHelper('UpdateSelfPickupResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class UpdateSelfPickupResponseBuilder
    implements
        Builder<UpdateSelfPickupResponse, UpdateSelfPickupResponseBuilder> {
  _$UpdateSelfPickupResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataUpdateSelfPickupResponseBuilder _data;
  DataUpdateSelfPickupResponseBuilder get data =>
      _$this._data ??= new DataUpdateSelfPickupResponseBuilder();
  set data(DataUpdateSelfPickupResponseBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UpdateSelfPickupResponseBuilder();

  UpdateSelfPickupResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSelfPickupResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateSelfPickupResponse;
  }

  @override
  void update(void Function(UpdateSelfPickupResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateSelfPickupResponse build() {
    _$UpdateSelfPickupResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateSelfPickupResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateSelfPickupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataUpdateSelfPickupResponse extends DataUpdateSelfPickupResponse {
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
  @override
  final int pickupMobNumber;
  @override
  final String pickupPerson;

  factory _$DataUpdateSelfPickupResponse(
          [void Function(DataUpdateSelfPickupResponseBuilder) updates]) =>
      (new DataUpdateSelfPickupResponseBuilder()..update(updates)).build();

  _$DataUpdateSelfPickupResponse._(
      {this.pickupBranch,
      this.id,
      this.pickupCode,
      this.createdAt,
      this.updatedAt,
      this.pickupMobNumber,
      this.pickupPerson})
      : super._();

  @override
  DataUpdateSelfPickupResponse rebuild(
          void Function(DataUpdateSelfPickupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataUpdateSelfPickupResponseBuilder toBuilder() =>
      new DataUpdateSelfPickupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataUpdateSelfPickupResponse &&
        pickupBranch == other.pickupBranch &&
        id == other.id &&
        pickupCode == other.pickupCode &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pickupMobNumber == other.pickupMobNumber &&
        pickupPerson == other.pickupPerson;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, pickupBranch.hashCode), id.hashCode),
                        pickupCode.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            pickupMobNumber.hashCode),
        pickupPerson.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataUpdateSelfPickupResponse')
          ..add('pickupBranch', pickupBranch)
          ..add('id', id)
          ..add('pickupCode', pickupCode)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('pickupMobNumber', pickupMobNumber)
          ..add('pickupPerson', pickupPerson))
        .toString();
  }
}

class DataUpdateSelfPickupResponseBuilder
    implements
        Builder<DataUpdateSelfPickupResponse,
            DataUpdateSelfPickupResponseBuilder> {
  _$DataUpdateSelfPickupResponse _$v;

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

  int _pickupMobNumber;
  int get pickupMobNumber => _$this._pickupMobNumber;
  set pickupMobNumber(int pickupMobNumber) =>
      _$this._pickupMobNumber = pickupMobNumber;

  String _pickupPerson;
  String get pickupPerson => _$this._pickupPerson;
  set pickupPerson(String pickupPerson) => _$this._pickupPerson = pickupPerson;

  DataUpdateSelfPickupResponseBuilder();

  DataUpdateSelfPickupResponseBuilder get _$this {
    if (_$v != null) {
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _id = _$v.id;
      _pickupCode = _$v.pickupCode;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _pickupMobNumber = _$v.pickupMobNumber;
      _pickupPerson = _$v.pickupPerson;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataUpdateSelfPickupResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataUpdateSelfPickupResponse;
  }

  @override
  void update(void Function(DataUpdateSelfPickupResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataUpdateSelfPickupResponse build() {
    _$DataUpdateSelfPickupResponse _$result;
    try {
      _$result = _$v ??
          new _$DataUpdateSelfPickupResponse._(
              pickupBranch: _pickupBranch?.build(),
              id: id,
              pickupCode: pickupCode,
              createdAt: createdAt,
              updatedAt: updatedAt,
              pickupMobNumber: pickupMobNumber,
              pickupPerson: pickupPerson);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataUpdateSelfPickupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
