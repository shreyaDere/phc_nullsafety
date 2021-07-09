// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrescriptionDetailsResponse>
    _$prescriptionDetailsResponseSerializer =
    new _$PrescriptionDetailsResponseSerializer();
Serializer<PrescriptionDetailsData> _$prescriptionDetailsDataSerializer =
    new _$PrescriptionDetailsDataSerializer();

class _$PrescriptionDetailsResponseSerializer
    implements StructuredSerializer<PrescriptionDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    PrescriptionDetailsResponse,
    _$PrescriptionDetailsResponse
  ];
  @override
  final String wireName = 'PrescriptionDetailsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PrescriptionDetailsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(PrescriptionDetailsData)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PrescriptionDetailsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrescriptionDetailsResponseBuilder();

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
                  specifiedType: const FullType(PrescriptionDetailsData))
              as PrescriptionDetailsData);
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

class _$PrescriptionDetailsDataSerializer
    implements StructuredSerializer<PrescriptionDetailsData> {
  @override
  final Iterable<Type> types = const [
    PrescriptionDetailsData,
    _$PrescriptionDetailsData
  ];
  @override
  final String wireName = 'PrescriptionDetailsData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PrescriptionDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionImage != null) {
      result
        ..add('prescriptionImage')
        ..add(serializers.serialize(object.prescriptionImage,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.insuranceImage != null) {
      result
        ..add('insuranceImage')
        ..add(serializers.serialize(object.insuranceImage,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.prescriptionValidity != null) {
      result
        ..add('prescriptionValidity')
        ..add(serializers.serialize(object.prescriptionValidity,
            specifiedType: const FullType(int)));
    }
    if (object.memberId != null) {
      result
        ..add('memberId')
        ..add(serializers.serialize(object.memberId,
            specifiedType: const FullType(String)));
    }
    if (object.uniqueCode != null) {
      result
        ..add('uniqueCode')
        ..add(serializers.serialize(object.uniqueCode,
            specifiedType: const FullType(int)));
    }
    if (object.lineItems != null) {
      result
        ..add('line_items')
        ..add(serializers.serialize(object.lineItems,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UniversalProduct)])));
    }
    if (object.prescriptionComment != null) {
      result
        ..add('prescriptionComment')
        ..add(serializers.serialize(object.prescriptionComment,
            specifiedType: const FullType(String)));
    }
    if (object.adminComment != null) {
      result
        ..add('adminComment')
        ..add(serializers.serialize(object.adminComment,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrescriptionDetailsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrescriptionDetailsDataBuilder();

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
        case 'prescriptionImage':
          result.prescriptionImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'insuranceImage':
          result.insuranceImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'prescriptionValidity':
          result.prescriptionValidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memberId':
          result.memberId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uniqueCode':
          result.uniqueCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'line_items':
          result.lineItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UniversalProduct)]))
              as BuiltList<Object>);
          break;
        case 'prescriptionComment':
          result.prescriptionComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adminComment':
          result.adminComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PrescriptionDetailsResponse extends PrescriptionDetailsResponse {
  @override
  final int status;
  @override
  final PrescriptionDetailsData data;
  @override
  final String message;

  factory _$PrescriptionDetailsResponse(
          [void Function(PrescriptionDetailsResponseBuilder) updates]) =>
      (new PrescriptionDetailsResponseBuilder()..update(updates)).build();

  _$PrescriptionDetailsResponse._({this.status, this.data, this.message})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'PrescriptionDetailsResponse', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('PrescriptionDetailsResponse', 'data');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'PrescriptionDetailsResponse', 'message');
    }
  }

  @override
  PrescriptionDetailsResponse rebuild(
          void Function(PrescriptionDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrescriptionDetailsResponseBuilder toBuilder() =>
      new PrescriptionDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrescriptionDetailsResponse &&
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
    return (newBuiltValueToStringHelper('PrescriptionDetailsResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class PrescriptionDetailsResponseBuilder
    implements
        Builder<PrescriptionDetailsResponse,
            PrescriptionDetailsResponseBuilder> {
  _$PrescriptionDetailsResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  PrescriptionDetailsDataBuilder _data;
  PrescriptionDetailsDataBuilder get data =>
      _$this._data ??= new PrescriptionDetailsDataBuilder();
  set data(PrescriptionDetailsDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PrescriptionDetailsResponseBuilder();

  PrescriptionDetailsResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrescriptionDetailsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrescriptionDetailsResponse;
  }

  @override
  void update(void Function(PrescriptionDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrescriptionDetailsResponse build() {
    _$PrescriptionDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$PrescriptionDetailsResponse._(
              status: status, data: data.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrescriptionDetailsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PrescriptionDetailsData extends PrescriptionDetailsData {
  @override
  final String sId;
  @override
  final BuiltList<String> prescriptionImage;
  @override
  final BuiltList<String> insuranceImage;
  @override
  final int prescriptionValidity;
  @override
  final String memberId;
  @override
  final int uniqueCode;
  @override
  final BuiltList<UniversalProduct> lineItems;
  @override
  final String prescriptionComment;
  @override
  final String adminComment;

  factory _$PrescriptionDetailsData(
          [void Function(PrescriptionDetailsDataBuilder) updates]) =>
      (new PrescriptionDetailsDataBuilder()..update(updates)).build();

  _$PrescriptionDetailsData._(
      {this.sId,
      this.prescriptionImage,
      this.insuranceImage,
      this.prescriptionValidity,
      this.memberId,
      this.uniqueCode,
      this.lineItems,
      this.prescriptionComment,
      this.adminComment})
      : super._();

  @override
  PrescriptionDetailsData rebuild(
          void Function(PrescriptionDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrescriptionDetailsDataBuilder toBuilder() =>
      new PrescriptionDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrescriptionDetailsData &&
        sId == other.sId &&
        prescriptionImage == other.prescriptionImage &&
        insuranceImage == other.insuranceImage &&
        prescriptionValidity == other.prescriptionValidity &&
        memberId == other.memberId &&
        uniqueCode == other.uniqueCode &&
        lineItems == other.lineItems &&
        prescriptionComment == other.prescriptionComment &&
        adminComment == other.adminComment;
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
                                $jc($jc(0, sId.hashCode),
                                    prescriptionImage.hashCode),
                                insuranceImage.hashCode),
                            prescriptionValidity.hashCode),
                        memberId.hashCode),
                    uniqueCode.hashCode),
                lineItems.hashCode),
            prescriptionComment.hashCode),
        adminComment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrescriptionDetailsData')
          ..add('sId', sId)
          ..add('prescriptionImage', prescriptionImage)
          ..add('insuranceImage', insuranceImage)
          ..add('prescriptionValidity', prescriptionValidity)
          ..add('memberId', memberId)
          ..add('uniqueCode', uniqueCode)
          ..add('lineItems', lineItems)
          ..add('prescriptionComment', prescriptionComment)
          ..add('adminComment', adminComment))
        .toString();
  }
}

class PrescriptionDetailsDataBuilder
    implements
        Builder<PrescriptionDetailsData, PrescriptionDetailsDataBuilder> {
  _$PrescriptionDetailsData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  ListBuilder<String> _prescriptionImage;
  ListBuilder<String> get prescriptionImage =>
      _$this._prescriptionImage ??= new ListBuilder<String>();
  set prescriptionImage(ListBuilder<String> prescriptionImage) =>
      _$this._prescriptionImage = prescriptionImage;

  ListBuilder<String> _insuranceImage;
  ListBuilder<String> get insuranceImage =>
      _$this._insuranceImage ??= new ListBuilder<String>();
  set insuranceImage(ListBuilder<String> insuranceImage) =>
      _$this._insuranceImage = insuranceImage;

  int _prescriptionValidity;
  int get prescriptionValidity => _$this._prescriptionValidity;
  set prescriptionValidity(int prescriptionValidity) =>
      _$this._prescriptionValidity = prescriptionValidity;

  String _memberId;
  String get memberId => _$this._memberId;
  set memberId(String memberId) => _$this._memberId = memberId;

  int _uniqueCode;
  int get uniqueCode => _$this._uniqueCode;
  set uniqueCode(int uniqueCode) => _$this._uniqueCode = uniqueCode;

  ListBuilder<UniversalProduct> _lineItems;
  ListBuilder<UniversalProduct> get lineItems =>
      _$this._lineItems ??= new ListBuilder<UniversalProduct>();
  set lineItems(ListBuilder<UniversalProduct> lineItems) =>
      _$this._lineItems = lineItems;

  String _prescriptionComment;
  String get prescriptionComment => _$this._prescriptionComment;
  set prescriptionComment(String prescriptionComment) =>
      _$this._prescriptionComment = prescriptionComment;

  String _adminComment;
  String get adminComment => _$this._adminComment;
  set adminComment(String adminComment) => _$this._adminComment = adminComment;

  PrescriptionDetailsDataBuilder();

  PrescriptionDetailsDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _prescriptionImage = _$v.prescriptionImage?.toBuilder();
      _insuranceImage = _$v.insuranceImage?.toBuilder();
      _prescriptionValidity = _$v.prescriptionValidity;
      _memberId = _$v.memberId;
      _uniqueCode = _$v.uniqueCode;
      _lineItems = _$v.lineItems?.toBuilder();
      _prescriptionComment = _$v.prescriptionComment;
      _adminComment = _$v.adminComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrescriptionDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrescriptionDetailsData;
  }

  @override
  void update(void Function(PrescriptionDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrescriptionDetailsData build() {
    _$PrescriptionDetailsData _$result;
    try {
      _$result = _$v ??
          new _$PrescriptionDetailsData._(
              sId: sId,
              prescriptionImage: _prescriptionImage?.build(),
              insuranceImage: _insuranceImage?.build(),
              prescriptionValidity: prescriptionValidity,
              memberId: memberId,
              uniqueCode: uniqueCode,
              lineItems: _lineItems?.build(),
              prescriptionComment: prescriptionComment,
              adminComment: adminComment);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'prescriptionImage';
        _prescriptionImage?.build();
        _$failedField = 'insuranceImage';
        _insuranceImage?.build();

        _$failedField = 'lineItems';
        _lineItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PrescriptionDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
