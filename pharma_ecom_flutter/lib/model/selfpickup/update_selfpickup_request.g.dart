// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selfpickup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateSelfPickUpRequest> _$updateSelfPickUpRequestSerializer =
    new _$UpdateSelfPickUpRequestSerializer();

class _$UpdateSelfPickUpRequestSerializer
    implements StructuredSerializer<UpdateSelfPickUpRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateSelfPickUpRequest,
    _$UpdateSelfPickUpRequest
  ];
  @override
  final String wireName = 'UpdateSelfPickUpRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UpdateSelfPickUpRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pickupBranch != null) {
      result
        ..add('pickupBranch')
        ..add(serializers.serialize(object.pickupBranch,
            specifiedType:
                const FullType(PickupBranchSelfPichUpResponseGetApi)));
    }
    if (object.pickupCode != null) {
      result
        ..add('pickupCode')
        ..add(serializers.serialize(object.pickupCode,
            specifiedType: const FullType(int)));
    }
    if (object.pickupPerson != null) {
      result
        ..add('pickupPerson')
        ..add(serializers.serialize(object.pickupPerson,
            specifiedType: const FullType(String)));
    }
    if (object.pickupMobNumber != null) {
      result
        ..add('pickupMobNumber')
        ..add(serializers.serialize(object.pickupMobNumber,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UpdateSelfPickUpRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateSelfPickUpRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pickupBranch':
          result.pickupBranch.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(PickupBranchSelfPichUpResponseGetApi))
              as PickupBranchSelfPichUpResponseGetApi);
          break;
        case 'pickupCode':
          result.pickupCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pickupPerson':
          result.pickupPerson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickupMobNumber':
          result.pickupMobNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateSelfPickUpRequest extends UpdateSelfPickUpRequest {
  @override
  final PickupBranchSelfPichUpResponseGetApi pickupBranch;
  @override
  final int pickupCode;
  @override
  final String pickupPerson;
  @override
  final int pickupMobNumber;

  factory _$UpdateSelfPickUpRequest(
          [void Function(UpdateSelfPickUpRequestBuilder) updates]) =>
      (new UpdateSelfPickUpRequestBuilder()..update(updates)).build();

  _$UpdateSelfPickUpRequest._(
      {this.pickupBranch,
      this.pickupCode,
      this.pickupPerson,
      this.pickupMobNumber})
      : super._();

  @override
  UpdateSelfPickUpRequest rebuild(
          void Function(UpdateSelfPickUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSelfPickUpRequestBuilder toBuilder() =>
      new UpdateSelfPickUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSelfPickUpRequest &&
        pickupBranch == other.pickupBranch &&
        pickupCode == other.pickupCode &&
        pickupPerson == other.pickupPerson &&
        pickupMobNumber == other.pickupMobNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, pickupBranch.hashCode), pickupCode.hashCode),
            pickupPerson.hashCode),
        pickupMobNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateSelfPickUpRequest')
          ..add('pickupBranch', pickupBranch)
          ..add('pickupCode', pickupCode)
          ..add('pickupPerson', pickupPerson)
          ..add('pickupMobNumber', pickupMobNumber))
        .toString();
  }
}

class UpdateSelfPickUpRequestBuilder
    implements
        Builder<UpdateSelfPickUpRequest, UpdateSelfPickUpRequestBuilder> {
  _$UpdateSelfPickUpRequest _$v;

  PickupBranchSelfPichUpResponseGetApiBuilder _pickupBranch;
  PickupBranchSelfPichUpResponseGetApiBuilder get pickupBranch =>
      _$this._pickupBranch ??=
          new PickupBranchSelfPichUpResponseGetApiBuilder();
  set pickupBranch(PickupBranchSelfPichUpResponseGetApiBuilder pickupBranch) =>
      _$this._pickupBranch = pickupBranch;

  int _pickupCode;
  int get pickupCode => _$this._pickupCode;
  set pickupCode(int pickupCode) => _$this._pickupCode = pickupCode;

  String _pickupPerson;
  String get pickupPerson => _$this._pickupPerson;
  set pickupPerson(String pickupPerson) => _$this._pickupPerson = pickupPerson;

  int _pickupMobNumber;
  int get pickupMobNumber => _$this._pickupMobNumber;
  set pickupMobNumber(int pickupMobNumber) =>
      _$this._pickupMobNumber = pickupMobNumber;

  UpdateSelfPickUpRequestBuilder();

  UpdateSelfPickUpRequestBuilder get _$this {
    if (_$v != null) {
      _pickupBranch = _$v.pickupBranch?.toBuilder();
      _pickupCode = _$v.pickupCode;
      _pickupPerson = _$v.pickupPerson;
      _pickupMobNumber = _$v.pickupMobNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSelfPickUpRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateSelfPickUpRequest;
  }

  @override
  void update(void Function(UpdateSelfPickUpRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateSelfPickUpRequest build() {
    _$UpdateSelfPickUpRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateSelfPickUpRequest._(
              pickupBranch: _pickupBranch?.build(),
              pickupCode: pickupCode,
              pickupPerson: pickupPerson,
              pickupMobNumber: pickupMobNumber);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pickupBranch';
        _pickupBranch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateSelfPickUpRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
