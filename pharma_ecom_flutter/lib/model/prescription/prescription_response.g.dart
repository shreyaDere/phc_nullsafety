// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PresciptionResponse> _$presciptionResponseSerializer =
    new _$PresciptionResponseSerializer();
Serializer<PrescriptionData> _$prescriptionDataSerializer =
    new _$PrescriptionDataSerializer();
Serializer<LineItems> _$lineItemsSerializer = new _$LineItemsSerializer();

class _$PresciptionResponseSerializer
    implements StructuredSerializer<PresciptionResponse> {
  @override
  final Iterable<Type> types = const [
    PresciptionResponse,
    _$PresciptionResponse
  ];
  @override
  final String wireName = 'PresciptionResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PresciptionResponse object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(PrescriptionData)])));
    }
    return result;
  }

  @override
  PresciptionResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PresciptionResponseBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PrescriptionData)]))
              as BuiltList<Object>);
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

class _$PrescriptionDataSerializer
    implements StructuredSerializer<PrescriptionData> {
  @override
  final Iterable<Type> types = const [PrescriptionData, _$PrescriptionData];
  @override
  final String wireName = 'PrescriptionData';

  @override
  Iterable<Object> serialize(Serializers serializers, PrescriptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.lineItems != null) {
      result
        ..add('line_items')
        ..add(serializers.serialize(object.lineItems,
            specifiedType:
                const FullType(BuiltList, const [const FullType(LineItems)])));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_Id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.userName != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionTitle != null) {
      result
        ..add('prescriptionTitle')
        ..add(serializers.serialize(object.prescriptionTitle,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionComment != null) {
      result
        ..add('prescriptionComment')
        ..add(serializers.serialize(object.prescriptionComment,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionType != null) {
      result
        ..add('prescriptionType')
        ..add(serializers.serialize(object.prescriptionType,
            specifiedType: const FullType(int)));
    }
    if (object.memberId != null) {
      result
        ..add('memberId')
        ..add(serializers.serialize(object.memberId,
            specifiedType: const FullType(String)));
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
    if (object.uploadTime != null) {
      result
        ..add('uploadTime')
        ..add(serializers.serialize(object.uploadTime,
            specifiedType: const FullType(String)));
    }
    if (object.prescriptionStatus != null) {
      result
        ..add('prescriptionStatus')
        ..add(serializers.serialize(object.prescriptionStatus,
            specifiedType: const FullType(int)));
    }
    if (object.prescriptionValidity != null) {
      result
        ..add('prescriptionValidity')
        ..add(serializers.serialize(object.prescriptionValidity,
            specifiedType: const FullType(int)));
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
  PrescriptionData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrescriptionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'line_items':
          result.lineItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LineItems)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_Id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionTitle':
          result.prescriptionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionComment':
          result.prescriptionComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionType':
          result.prescriptionType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memberId':
          result.memberId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uploadTime':
          result.uploadTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prescriptionStatus':
          result.prescriptionStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prescriptionValidity':
          result.prescriptionValidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$LineItemsSerializer implements StructuredSerializer<LineItems> {
  @override
  final Iterable<Type> types = const [LineItems, _$LineItems];
  @override
  final String wireName = 'LineItems';

  @override
  Iterable<Object> serialize(Serializers serializers, LineItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(UniversalProduct)));
    }
    if (object.lineTotal != null) {
      result
        ..add('lineTotal')
        ..add(serializers.serialize(object.lineTotal,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LineItems deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LineItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UniversalProduct))
              as UniversalProduct);
          break;
        case 'lineTotal':
          result.lineTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PresciptionResponse extends PresciptionResponse {
  @override
  final int status;
  @override
  final BuiltList<PrescriptionData> data;
  @override
  final String message;

  factory _$PresciptionResponse(
          [void Function(PresciptionResponseBuilder) updates]) =>
      (new PresciptionResponseBuilder()..update(updates)).build();

  _$PresciptionResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('PresciptionResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('PresciptionResponse', 'message');
    }
  }

  @override
  PresciptionResponse rebuild(
          void Function(PresciptionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresciptionResponseBuilder toBuilder() =>
      new PresciptionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresciptionResponse &&
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
    return (newBuiltValueToStringHelper('PresciptionResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class PresciptionResponseBuilder
    implements Builder<PresciptionResponse, PresciptionResponseBuilder> {
  _$PresciptionResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<PrescriptionData> _data;
  ListBuilder<PrescriptionData> get data =>
      _$this._data ??= new ListBuilder<PrescriptionData>();
  set data(ListBuilder<PrescriptionData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PresciptionResponseBuilder();

  PresciptionResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresciptionResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PresciptionResponse;
  }

  @override
  void update(void Function(PresciptionResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PresciptionResponse build() {
    _$PresciptionResponse _$result;
    try {
      _$result = _$v ??
          new _$PresciptionResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PresciptionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PrescriptionData extends PrescriptionData {
  @override
  final BuiltList<String> prescriptionImage;
  @override
  final BuiltList<String> insuranceImage;
  @override
  final BuiltList<LineItems> lineItems;
  @override
  final String sId;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String prescriptionTitle;
  @override
  final String prescriptionComment;
  @override
  final int prescriptionType;
  @override
  final String memberId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String uploadTime;
  @override
  final int prescriptionStatus;
  @override
  final int prescriptionValidity;
  @override
  final String adminComment;

  factory _$PrescriptionData(
          [void Function(PrescriptionDataBuilder) updates]) =>
      (new PrescriptionDataBuilder()..update(updates)).build();

  _$PrescriptionData._(
      {this.prescriptionImage,
      this.insuranceImage,
      this.lineItems,
      this.sId,
      this.userId,
      this.userName,
      this.prescriptionTitle,
      this.prescriptionComment,
      this.prescriptionType,
      this.memberId,
      this.createdAt,
      this.updatedAt,
      this.uploadTime,
      this.prescriptionStatus,
      this.prescriptionValidity,
      this.adminComment})
      : super._();

  @override
  PrescriptionData rebuild(void Function(PrescriptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrescriptionDataBuilder toBuilder() =>
      new PrescriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrescriptionData &&
        prescriptionImage == other.prescriptionImage &&
        insuranceImage == other.insuranceImage &&
        lineItems == other.lineItems &&
        sId == other.sId &&
        userId == other.userId &&
        userName == other.userName &&
        prescriptionTitle == other.prescriptionTitle &&
        prescriptionComment == other.prescriptionComment &&
        prescriptionType == other.prescriptionType &&
        memberId == other.memberId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        uploadTime == other.uploadTime &&
        prescriptionStatus == other.prescriptionStatus &&
        prescriptionValidity == other.prescriptionValidity &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    prescriptionImage
                                                                        .hashCode),
                                                                insuranceImage
                                                                    .hashCode),
                                                            lineItems.hashCode),
                                                        sId.hashCode),
                                                    userId.hashCode),
                                                userName.hashCode),
                                            prescriptionTitle.hashCode),
                                        prescriptionComment.hashCode),
                                    prescriptionType.hashCode),
                                memberId.hashCode),
                            createdAt.hashCode),
                        updatedAt.hashCode),
                    uploadTime.hashCode),
                prescriptionStatus.hashCode),
            prescriptionValidity.hashCode),
        adminComment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrescriptionData')
          ..add('prescriptionImage', prescriptionImage)
          ..add('insuranceImage', insuranceImage)
          ..add('lineItems', lineItems)
          ..add('sId', sId)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('prescriptionTitle', prescriptionTitle)
          ..add('prescriptionComment', prescriptionComment)
          ..add('prescriptionType', prescriptionType)
          ..add('memberId', memberId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('uploadTime', uploadTime)
          ..add('prescriptionStatus', prescriptionStatus)
          ..add('prescriptionValidity', prescriptionValidity)
          ..add('adminComment', adminComment))
        .toString();
  }
}

class PrescriptionDataBuilder
    implements Builder<PrescriptionData, PrescriptionDataBuilder> {
  _$PrescriptionData _$v;

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

  ListBuilder<LineItems> _lineItems;
  ListBuilder<LineItems> get lineItems =>
      _$this._lineItems ??= new ListBuilder<LineItems>();
  set lineItems(ListBuilder<LineItems> lineItems) =>
      _$this._lineItems = lineItems;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _prescriptionTitle;
  String get prescriptionTitle => _$this._prescriptionTitle;
  set prescriptionTitle(String prescriptionTitle) =>
      _$this._prescriptionTitle = prescriptionTitle;

  String _prescriptionComment;
  String get prescriptionComment => _$this._prescriptionComment;
  set prescriptionComment(String prescriptionComment) =>
      _$this._prescriptionComment = prescriptionComment;

  int _prescriptionType;
  int get prescriptionType => _$this._prescriptionType;
  set prescriptionType(int prescriptionType) =>
      _$this._prescriptionType = prescriptionType;

  String _memberId;
  String get memberId => _$this._memberId;
  set memberId(String memberId) => _$this._memberId = memberId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _uploadTime;
  String get uploadTime => _$this._uploadTime;
  set uploadTime(String uploadTime) => _$this._uploadTime = uploadTime;

  int _prescriptionStatus;
  int get prescriptionStatus => _$this._prescriptionStatus;
  set prescriptionStatus(int prescriptionStatus) =>
      _$this._prescriptionStatus = prescriptionStatus;

  int _prescriptionValidity;
  int get prescriptionValidity => _$this._prescriptionValidity;
  set prescriptionValidity(int prescriptionValidity) =>
      _$this._prescriptionValidity = prescriptionValidity;

  String _adminComment;
  String get adminComment => _$this._adminComment;
  set adminComment(String adminComment) => _$this._adminComment = adminComment;

  PrescriptionDataBuilder();

  PrescriptionDataBuilder get _$this {
    if (_$v != null) {
      _prescriptionImage = _$v.prescriptionImage?.toBuilder();
      _insuranceImage = _$v.insuranceImage?.toBuilder();
      _lineItems = _$v.lineItems?.toBuilder();
      _sId = _$v.sId;
      _userId = _$v.userId;
      _userName = _$v.userName;
      _prescriptionTitle = _$v.prescriptionTitle;
      _prescriptionComment = _$v.prescriptionComment;
      _prescriptionType = _$v.prescriptionType;
      _memberId = _$v.memberId;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _uploadTime = _$v.uploadTime;
      _prescriptionStatus = _$v.prescriptionStatus;
      _prescriptionValidity = _$v.prescriptionValidity;
      _adminComment = _$v.adminComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrescriptionData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PrescriptionData;
  }

  @override
  void update(void Function(PrescriptionDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrescriptionData build() {
    _$PrescriptionData _$result;
    try {
      _$result = _$v ??
          new _$PrescriptionData._(
              prescriptionImage: _prescriptionImage?.build(),
              insuranceImage: _insuranceImage?.build(),
              lineItems: _lineItems?.build(),
              sId: sId,
              userId: userId,
              userName: userName,
              prescriptionTitle: prescriptionTitle,
              prescriptionComment: prescriptionComment,
              prescriptionType: prescriptionType,
              memberId: memberId,
              createdAt: createdAt,
              updatedAt: updatedAt,
              uploadTime: uploadTime,
              prescriptionStatus: prescriptionStatus,
              prescriptionValidity: prescriptionValidity,
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
            'PrescriptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LineItems extends LineItems {
  @override
  final int quantity;
  @override
  final UniversalProduct product;
  @override
  final int lineTotal;

  factory _$LineItems([void Function(LineItemsBuilder) updates]) =>
      (new LineItemsBuilder()..update(updates)).build();

  _$LineItems._({this.quantity, this.product, this.lineTotal}) : super._();

  @override
  LineItems rebuild(void Function(LineItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LineItemsBuilder toBuilder() => new LineItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineItems &&
        quantity == other.quantity &&
        product == other.product &&
        lineTotal == other.lineTotal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, quantity.hashCode), product.hashCode), lineTotal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LineItems')
          ..add('quantity', quantity)
          ..add('product', product)
          ..add('lineTotal', lineTotal))
        .toString();
  }
}

class LineItemsBuilder implements Builder<LineItems, LineItemsBuilder> {
  _$LineItems _$v;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  UniversalProductBuilder _product;
  UniversalProductBuilder get product =>
      _$this._product ??= new UniversalProductBuilder();
  set product(UniversalProductBuilder product) => _$this._product = product;

  int _lineTotal;
  int get lineTotal => _$this._lineTotal;
  set lineTotal(int lineTotal) => _$this._lineTotal = lineTotal;

  LineItemsBuilder();

  LineItemsBuilder get _$this {
    if (_$v != null) {
      _quantity = _$v.quantity;
      _product = _$v.product?.toBuilder();
      _lineTotal = _$v.lineTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LineItems other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LineItems;
  }

  @override
  void update(void Function(LineItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LineItems build() {
    _$LineItems _$result;
    try {
      _$result = _$v ??
          new _$LineItems._(
              quantity: quantity,
              product: _product?.build(),
              lineTotal: lineTotal);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LineItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
