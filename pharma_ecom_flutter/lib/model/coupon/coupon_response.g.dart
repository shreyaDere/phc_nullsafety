// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CouponResponse> _$couponResponseSerializer =
    new _$CouponResponseSerializer();
Serializer<CouponData> _$couponDataSerializer = new _$CouponDataSerializer();
Serializer<Coupons> _$couponsSerializer = new _$CouponsSerializer();

class _$CouponResponseSerializer
    implements StructuredSerializer<CouponResponse> {
  @override
  final Iterable<Type> types = const [CouponResponse, _$CouponResponse];
  @override
  final String wireName = 'CouponResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, CouponResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(CouponData)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CouponResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CouponResponseBuilder();

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
              specifiedType: const FullType(CouponData)) as CouponData);
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

class _$CouponDataSerializer implements StructuredSerializer<CouponData> {
  @override
  final Iterable<Type> types = const [CouponData, _$CouponData];
  @override
  final String wireName = 'CouponData';

  @override
  Iterable<Object> serialize(Serializers serializers, CouponData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.coupons != null) {
      result
        ..add('coupons')
        ..add(serializers.serialize(object.coupons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Coupons)])));
    }
    return result;
  }

  @override
  CouponData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CouponDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'coupons':
          result.coupons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Coupons)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CouponsSerializer implements StructuredSerializer<Coupons> {
  @override
  final Iterable<Type> types = const [Coupons, _$Coupons];
  @override
  final String wireName = 'Coupons';

  @override
  Iterable<Object> serialize(Serializers serializers, Coupons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.minCartAmount != null) {
      result
        ..add('min_cart_amount')
        ..add(serializers.serialize(object.minCartAmount,
            specifiedType: const FullType(int)));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.expiry != null) {
      result
        ..add('expiry')
        ..add(serializers.serialize(object.expiry,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(int)));
    }
    if (object.iV != null) {
      result
        ..add('iV')
        ..add(serializers.serialize(object.iV,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Coupons deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CouponsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'min_cart_amount':
          result.minCartAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expiry':
          result.expiry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iV':
          result.iV = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CouponResponse extends CouponResponse {
  @override
  final int status;
  @override
  final CouponData data;
  @override
  final String message;

  factory _$CouponResponse([void Function(CouponResponseBuilder) updates]) =>
      (new CouponResponseBuilder()..update(updates)).build();

  _$CouponResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('CouponResponse', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('CouponResponse', 'data');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('CouponResponse', 'message');
    }
  }

  @override
  CouponResponse rebuild(void Function(CouponResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponResponseBuilder toBuilder() =>
      new CouponResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponResponse &&
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
    return (newBuiltValueToStringHelper('CouponResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class CouponResponseBuilder
    implements Builder<CouponResponse, CouponResponseBuilder> {
  _$CouponResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  CouponDataBuilder _data;
  CouponDataBuilder get data => _$this._data ??= new CouponDataBuilder();
  set data(CouponDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CouponResponseBuilder();

  CouponResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CouponResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CouponResponse;
  }

  @override
  void update(void Function(CouponResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CouponResponse build() {
    _$CouponResponse _$result;
    try {
      _$result = _$v ??
          new _$CouponResponse._(
              status: status, data: data.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CouponResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CouponData extends CouponData {
  @override
  final BuiltList<Coupons> coupons;

  factory _$CouponData([void Function(CouponDataBuilder) updates]) =>
      (new CouponDataBuilder()..update(updates)).build();

  _$CouponData._({this.coupons}) : super._();

  @override
  CouponData rebuild(void Function(CouponDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponDataBuilder toBuilder() => new CouponDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponData && coupons == other.coupons;
  }

  @override
  int get hashCode {
    return $jf($jc(0, coupons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CouponData')..add('coupons', coupons))
        .toString();
  }
}

class CouponDataBuilder implements Builder<CouponData, CouponDataBuilder> {
  _$CouponData _$v;

  ListBuilder<Coupons> _coupons;
  ListBuilder<Coupons> get coupons =>
      _$this._coupons ??= new ListBuilder<Coupons>();
  set coupons(ListBuilder<Coupons> coupons) => _$this._coupons = coupons;

  CouponDataBuilder();

  CouponDataBuilder get _$this {
    if (_$v != null) {
      _coupons = _$v.coupons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CouponData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CouponData;
  }

  @override
  void update(void Function(CouponDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CouponData build() {
    _$CouponData _$result;
    try {
      _$result = _$v ?? new _$CouponData._(coupons: _coupons?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coupons';
        _coupons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CouponData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Coupons extends Coupons {
  @override
  final int minCartAmount;
  @override
  final String sId;
  @override
  final String code;
  @override
  final String type;
  @override
  final String expiry;
  @override
  final int value;
  @override
  final int iV;
  @override
  final String description;

  factory _$Coupons([void Function(CouponsBuilder) updates]) =>
      (new CouponsBuilder()..update(updates)).build();

  _$Coupons._(
      {this.minCartAmount,
      this.sId,
      this.code,
      this.type,
      this.expiry,
      this.value,
      this.iV,
      this.description})
      : super._();

  @override
  Coupons rebuild(void Function(CouponsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CouponsBuilder toBuilder() => new CouponsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coupons &&
        minCartAmount == other.minCartAmount &&
        sId == other.sId &&
        code == other.code &&
        type == other.type &&
        expiry == other.expiry &&
        value == other.value &&
        iV == other.iV &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, minCartAmount.hashCode), sId.hashCode),
                            code.hashCode),
                        type.hashCode),
                    expiry.hashCode),
                value.hashCode),
            iV.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coupons')
          ..add('minCartAmount', minCartAmount)
          ..add('sId', sId)
          ..add('code', code)
          ..add('type', type)
          ..add('expiry', expiry)
          ..add('value', value)
          ..add('iV', iV)
          ..add('description', description))
        .toString();
  }
}

class CouponsBuilder implements Builder<Coupons, CouponsBuilder> {
  _$Coupons _$v;

  int _minCartAmount;
  int get minCartAmount => _$this._minCartAmount;
  set minCartAmount(int minCartAmount) => _$this._minCartAmount = minCartAmount;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _expiry;
  String get expiry => _$this._expiry;
  set expiry(String expiry) => _$this._expiry = expiry;

  int _value;
  int get value => _$this._value;
  set value(int value) => _$this._value = value;

  int _iV;
  int get iV => _$this._iV;
  set iV(int iV) => _$this._iV = iV;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CouponsBuilder();

  CouponsBuilder get _$this {
    if (_$v != null) {
      _minCartAmount = _$v.minCartAmount;
      _sId = _$v.sId;
      _code = _$v.code;
      _type = _$v.type;
      _expiry = _$v.expiry;
      _value = _$v.value;
      _iV = _$v.iV;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coupons other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Coupons;
  }

  @override
  void update(void Function(CouponsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coupons build() {
    final _$result = _$v ??
        new _$Coupons._(
            minCartAmount: minCartAmount,
            sId: sId,
            code: code,
            type: type,
            expiry: expiry,
            value: value,
            iV: iV,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
