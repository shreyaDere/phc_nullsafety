// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrackOrderResponse> _$trackOrderResponseSerializer =
    new _$TrackOrderResponseSerializer();
Serializer<TrackOrderData> _$trackOrderDataSerializer =
    new _$TrackOrderDataSerializer();
Serializer<CommentData> _$commentDataSerializer = new _$CommentDataSerializer();

class _$TrackOrderResponseSerializer
    implements StructuredSerializer<TrackOrderResponse> {
  @override
  final Iterable<Type> types = const [TrackOrderResponse, _$TrackOrderResponse];
  @override
  final String wireName = 'TrackOrderResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackOrderResponse object,
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
            specifiedType: const FullType(TrackOrderData)));
    }
    return result;
  }

  @override
  TrackOrderResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackOrderResponseBuilder();

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
              specifiedType: const FullType(TrackOrderData)) as TrackOrderData);
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

class _$TrackOrderDataSerializer
    implements StructuredSerializer<TrackOrderData> {
  @override
  final Iterable<Type> types = const [TrackOrderData, _$TrackOrderData];
  @override
  final String wireName = 'TrackOrderData';

  @override
  Iterable<Object> serialize(Serializers serializers, TrackOrderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderComments != null) {
      result
        ..add('orderComments')
        ..add(serializers.serialize(object.orderComments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommentData)])));
    }
    if (object.packedComments != null) {
      result
        ..add('packedComments')
        ..add(serializers.serialize(object.packedComments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommentData)])));
    }
    if (object.shippedComments != null) {
      result
        ..add('shippedComments')
        ..add(serializers.serialize(object.shippedComments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommentData)])));
    }
    if (object.deliveryComments != null) {
      result
        ..add('deliveryComments')
        ..add(serializers.serialize(object.deliveryComments,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommentData)])));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.userID != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(object.userID,
            specifiedType: const FullType(String)));
    }
    if (object.orderID != null) {
      result
        ..add('orderID')
        ..add(serializers.serialize(object.orderID,
            specifiedType: const FullType(int)));
    }
    if (object.orderStatus != null) {
      result
        ..add('orderStatus')
        ..add(serializers.serialize(object.orderStatus,
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
  TrackOrderData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrackOrderDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'orderComments':
          result.orderComments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommentData)]))
              as BuiltList<Object>);
          break;
        case 'packedComments':
          result.packedComments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommentData)]))
              as BuiltList<Object>);
          break;
        case 'shippedComments':
          result.shippedComments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommentData)]))
              as BuiltList<Object>);
          break;
        case 'deliveryComments':
          result.deliveryComments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommentData)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderID':
          result.orderID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderStatus':
          result.orderStatus = serializers.deserialize(value,
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

class _$CommentDataSerializer implements StructuredSerializer<CommentData> {
  @override
  final Iterable<Type> types = const [CommentData, _$CommentData];
  @override
  final String wireName = 'CommentData';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommentData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TrackOrderResponse extends TrackOrderResponse {
  @override
  final int status;
  @override
  final TrackOrderData data;
  @override
  final String message;

  factory _$TrackOrderResponse(
          [void Function(TrackOrderResponseBuilder) updates]) =>
      (new TrackOrderResponseBuilder()..update(updates)).build();

  _$TrackOrderResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('TrackOrderResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('TrackOrderResponse', 'message');
    }
  }

  @override
  TrackOrderResponse rebuild(
          void Function(TrackOrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackOrderResponseBuilder toBuilder() =>
      new TrackOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackOrderResponse &&
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
    return (newBuiltValueToStringHelper('TrackOrderResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class TrackOrderResponseBuilder
    implements Builder<TrackOrderResponse, TrackOrderResponseBuilder> {
  _$TrackOrderResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  TrackOrderDataBuilder _data;
  TrackOrderDataBuilder get data =>
      _$this._data ??= new TrackOrderDataBuilder();
  set data(TrackOrderDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  TrackOrderResponseBuilder();

  TrackOrderResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackOrderResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackOrderResponse;
  }

  @override
  void update(void Function(TrackOrderResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackOrderResponse build() {
    _$TrackOrderResponse _$result;
    try {
      _$result = _$v ??
          new _$TrackOrderResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrackOrderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TrackOrderData extends TrackOrderData {
  @override
  final BuiltList<CommentData> orderComments;
  @override
  final BuiltList<CommentData> packedComments;
  @override
  final BuiltList<CommentData> shippedComments;
  @override
  final BuiltList<CommentData> deliveryComments;
  @override
  final String sId;
  @override
  final String userID;
  @override
  final int orderID;
  @override
  final int orderStatus;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$TrackOrderData([void Function(TrackOrderDataBuilder) updates]) =>
      (new TrackOrderDataBuilder()..update(updates)).build();

  _$TrackOrderData._(
      {this.orderComments,
      this.packedComments,
      this.shippedComments,
      this.deliveryComments,
      this.sId,
      this.userID,
      this.orderID,
      this.orderStatus,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  TrackOrderData rebuild(void Function(TrackOrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackOrderDataBuilder toBuilder() =>
      new TrackOrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackOrderData &&
        orderComments == other.orderComments &&
        packedComments == other.packedComments &&
        shippedComments == other.shippedComments &&
        deliveryComments == other.deliveryComments &&
        sId == other.sId &&
        userID == other.userID &&
        orderID == other.orderID &&
        orderStatus == other.orderStatus &&
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
                                    $jc($jc(0, orderComments.hashCode),
                                        packedComments.hashCode),
                                    shippedComments.hashCode),
                                deliveryComments.hashCode),
                            sId.hashCode),
                        userID.hashCode),
                    orderID.hashCode),
                orderStatus.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackOrderData')
          ..add('orderComments', orderComments)
          ..add('packedComments', packedComments)
          ..add('shippedComments', shippedComments)
          ..add('deliveryComments', deliveryComments)
          ..add('sId', sId)
          ..add('userID', userID)
          ..add('orderID', orderID)
          ..add('orderStatus', orderStatus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TrackOrderDataBuilder
    implements Builder<TrackOrderData, TrackOrderDataBuilder> {
  _$TrackOrderData _$v;

  ListBuilder<CommentData> _orderComments;
  ListBuilder<CommentData> get orderComments =>
      _$this._orderComments ??= new ListBuilder<CommentData>();
  set orderComments(ListBuilder<CommentData> orderComments) =>
      _$this._orderComments = orderComments;

  ListBuilder<CommentData> _packedComments;
  ListBuilder<CommentData> get packedComments =>
      _$this._packedComments ??= new ListBuilder<CommentData>();
  set packedComments(ListBuilder<CommentData> packedComments) =>
      _$this._packedComments = packedComments;

  ListBuilder<CommentData> _shippedComments;
  ListBuilder<CommentData> get shippedComments =>
      _$this._shippedComments ??= new ListBuilder<CommentData>();
  set shippedComments(ListBuilder<CommentData> shippedComments) =>
      _$this._shippedComments = shippedComments;

  ListBuilder<CommentData> _deliveryComments;
  ListBuilder<CommentData> get deliveryComments =>
      _$this._deliveryComments ??= new ListBuilder<CommentData>();
  set deliveryComments(ListBuilder<CommentData> deliveryComments) =>
      _$this._deliveryComments = deliveryComments;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _userID;
  String get userID => _$this._userID;
  set userID(String userID) => _$this._userID = userID;

  int _orderID;
  int get orderID => _$this._orderID;
  set orderID(int orderID) => _$this._orderID = orderID;

  int _orderStatus;
  int get orderStatus => _$this._orderStatus;
  set orderStatus(int orderStatus) => _$this._orderStatus = orderStatus;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  TrackOrderDataBuilder();

  TrackOrderDataBuilder get _$this {
    if (_$v != null) {
      _orderComments = _$v.orderComments?.toBuilder();
      _packedComments = _$v.packedComments?.toBuilder();
      _shippedComments = _$v.shippedComments?.toBuilder();
      _deliveryComments = _$v.deliveryComments?.toBuilder();
      _sId = _$v.sId;
      _userID = _$v.userID;
      _orderID = _$v.orderID;
      _orderStatus = _$v.orderStatus;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackOrderData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackOrderData;
  }

  @override
  void update(void Function(TrackOrderDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackOrderData build() {
    _$TrackOrderData _$result;
    try {
      _$result = _$v ??
          new _$TrackOrderData._(
              orderComments: _orderComments?.build(),
              packedComments: _packedComments?.build(),
              shippedComments: _shippedComments?.build(),
              deliveryComments: _deliveryComments?.build(),
              sId: sId,
              userID: userID,
              orderID: orderID,
              orderStatus: orderStatus,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderComments';
        _orderComments?.build();
        _$failedField = 'packedComments';
        _packedComments?.build();
        _$failedField = 'shippedComments';
        _shippedComments?.build();
        _$failedField = 'deliveryComments';
        _deliveryComments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrackOrderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CommentData extends CommentData {
  @override
  final String comment;
  @override
  final String time;

  factory _$CommentData([void Function(CommentDataBuilder) updates]) =>
      (new CommentDataBuilder()..update(updates)).build();

  _$CommentData._({this.comment, this.time}) : super._();

  @override
  CommentData rebuild(void Function(CommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentDataBuilder toBuilder() => new CommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentData &&
        comment == other.comment &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, comment.hashCode), time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentData')
          ..add('comment', comment)
          ..add('time', time))
        .toString();
  }
}

class CommentDataBuilder implements Builder<CommentData, CommentDataBuilder> {
  _$CommentData _$v;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  CommentDataBuilder();

  CommentDataBuilder get _$this {
    if (_$v != null) {
      _comment = _$v.comment;
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommentData;
  }

  @override
  void update(void Function(CommentDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentData build() {
    final _$result = _$v ?? new _$CommentData._(comment: comment, time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
