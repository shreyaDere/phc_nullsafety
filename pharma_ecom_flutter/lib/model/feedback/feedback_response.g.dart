// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedBackResponse> _$feedBackResponseSerializer =
    new _$FeedBackResponseSerializer();
Serializer<FeedBackResponseData> _$feedBackResponseDataSerializer =
    new _$FeedBackResponseDataSerializer();

class _$FeedBackResponseSerializer
    implements StructuredSerializer<FeedBackResponse> {
  @override
  final Iterable<Type> types = const [FeedBackResponse, _$FeedBackResponse];
  @override
  final String wireName = 'FeedBackResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedBackResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(FeedBackResponseData)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FeedBackResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedBackResponseBuilder();

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
                  specifiedType: const FullType(FeedBackResponseData))
              as FeedBackResponseData);
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

class _$FeedBackResponseDataSerializer
    implements StructuredSerializer<FeedBackResponseData> {
  @override
  final Iterable<Type> types = const [
    FeedBackResponseData,
    _$FeedBackResponseData
  ];
  @override
  final String wireName = 'FeedBackResponseData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FeedBackResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.orderID != null) {
      result
        ..add('orderID')
        ..add(serializers.serialize(object.orderID,
            specifiedType: const FullType(int)));
    }
    if (object.userID != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(object.userID,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
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
    return result;
  }

  @override
  FeedBackResponseData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedBackResponseDataBuilder();

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
        case 'orderID':
          result.orderID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$FeedBackResponse extends FeedBackResponse {
  @override
  final int status;
  @override
  final FeedBackResponseData data;
  @override
  final String message;

  factory _$FeedBackResponse(
          [void Function(FeedBackResponseBuilder) updates]) =>
      (new FeedBackResponseBuilder()..update(updates)).build();

  _$FeedBackResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('FeedBackResponse', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('FeedBackResponse', 'data');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('FeedBackResponse', 'message');
    }
  }

  @override
  FeedBackResponse rebuild(void Function(FeedBackResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedBackResponseBuilder toBuilder() =>
      new FeedBackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedBackResponse &&
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
    return (newBuiltValueToStringHelper('FeedBackResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class FeedBackResponseBuilder
    implements Builder<FeedBackResponse, FeedBackResponseBuilder> {
  _$FeedBackResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  FeedBackResponseDataBuilder _data;
  FeedBackResponseDataBuilder get data =>
      _$this._data ??= new FeedBackResponseDataBuilder();
  set data(FeedBackResponseDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  FeedBackResponseBuilder();

  FeedBackResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedBackResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedBackResponse;
  }

  @override
  void update(void Function(FeedBackResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedBackResponse build() {
    _$FeedBackResponse _$result;
    try {
      _$result = _$v ??
          new _$FeedBackResponse._(
              status: status, data: data.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedBackResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FeedBackResponseData extends FeedBackResponseData {
  @override
  final String sId;
  @override
  final int orderID;
  @override
  final String userID;
  @override
  final int rating;
  @override
  final String comment;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$FeedBackResponseData(
          [void Function(FeedBackResponseDataBuilder) updates]) =>
      (new FeedBackResponseDataBuilder()..update(updates)).build();

  _$FeedBackResponseData._(
      {this.sId,
      this.orderID,
      this.userID,
      this.rating,
      this.comment,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  FeedBackResponseData rebuild(
          void Function(FeedBackResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedBackResponseDataBuilder toBuilder() =>
      new FeedBackResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedBackResponseData &&
        sId == other.sId &&
        orderID == other.orderID &&
        userID == other.userID &&
        rating == other.rating &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, sId.hashCode), orderID.hashCode),
                        userID.hashCode),
                    rating.hashCode),
                comment.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedBackResponseData')
          ..add('sId', sId)
          ..add('orderID', orderID)
          ..add('userID', userID)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class FeedBackResponseDataBuilder
    implements Builder<FeedBackResponseData, FeedBackResponseDataBuilder> {
  _$FeedBackResponseData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  int _orderID;
  int get orderID => _$this._orderID;
  set orderID(int orderID) => _$this._orderID = orderID;

  String _userID;
  String get userID => _$this._userID;
  set userID(String userID) => _$this._userID = userID;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  FeedBackResponseDataBuilder();

  FeedBackResponseDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _orderID = _$v.orderID;
      _userID = _$v.userID;
      _rating = _$v.rating;
      _comment = _$v.comment;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedBackResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedBackResponseData;
  }

  @override
  void update(void Function(FeedBackResponseDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedBackResponseData build() {
    final _$result = _$v ??
        new _$FeedBackResponseData._(
            sId: sId,
            orderID: orderID,
            userID: userID,
            rating: rating,
            comment: comment,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
