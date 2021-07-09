// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_comment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllCommentResponse> _$allCommentResponseSerializer =
    new _$AllCommentResponseSerializer();
Serializer<AllCommentResponseData> _$allCommentResponseDataSerializer =
    new _$AllCommentResponseDataSerializer();

class _$AllCommentResponseSerializer
    implements StructuredSerializer<AllCommentResponse> {
  @override
  final Iterable<Type> types = const [AllCommentResponse, _$AllCommentResponse];
  @override
  final String wireName = 'AllCommentResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, AllCommentResponse object,
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
                BuiltList, const [const FullType(AllCommentResponseData)])));
    }
    return result;
  }

  @override
  AllCommentResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllCommentResponseBuilder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(AllCommentResponseData)
              ])) as BuiltList<Object>);
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

class _$AllCommentResponseDataSerializer
    implements StructuredSerializer<AllCommentResponseData> {
  @override
  final Iterable<Type> types = const [
    AllCommentResponseData,
    _$AllCommentResponseData
  ];
  @override
  final String wireName = 'AllCommentResponseData';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AllCommentResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.media != null) {
      result
        ..add('media')
        ..add(serializers.serialize(object.media,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.review != null) {
      result
        ..add('review')
        ..add(serializers.serialize(object.review,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AllCommentResponseData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllCommentResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case '_id':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AllCommentResponse extends AllCommentResponse {
  @override
  final int status;
  @override
  final BuiltList<AllCommentResponseData> data;
  @override
  final String message;

  factory _$AllCommentResponse(
          [void Function(AllCommentResponseBuilder) updates]) =>
      (new AllCommentResponseBuilder()..update(updates)).build();

  _$AllCommentResponse._({this.status, this.data, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('AllCommentResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('AllCommentResponse', 'message');
    }
  }

  @override
  AllCommentResponse rebuild(
          void Function(AllCommentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllCommentResponseBuilder toBuilder() =>
      new AllCommentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllCommentResponse &&
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
    return (newBuiltValueToStringHelper('AllCommentResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class AllCommentResponseBuilder
    implements Builder<AllCommentResponse, AllCommentResponseBuilder> {
  _$AllCommentResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<AllCommentResponseData> _data;
  ListBuilder<AllCommentResponseData> get data =>
      _$this._data ??= new ListBuilder<AllCommentResponseData>();
  set data(ListBuilder<AllCommentResponseData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  AllCommentResponseBuilder();

  AllCommentResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllCommentResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllCommentResponse;
  }

  @override
  void update(void Function(AllCommentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllCommentResponse build() {
    _$AllCommentResponse _$result;
    try {
      _$result = _$v ??
          new _$AllCommentResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllCommentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AllCommentResponseData extends AllCommentResponseData {
  @override
  final BuiltList<String> media;
  @override
  final String sId;
  @override
  final int rating;
  @override
  final String review;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String productId;

  factory _$AllCommentResponseData(
          [void Function(AllCommentResponseDataBuilder) updates]) =>
      (new AllCommentResponseDataBuilder()..update(updates)).build();

  _$AllCommentResponseData._(
      {this.media,
      this.sId,
      this.rating,
      this.review,
      this.userId,
      this.username,
      this.productId})
      : super._();

  @override
  AllCommentResponseData rebuild(
          void Function(AllCommentResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllCommentResponseDataBuilder toBuilder() =>
      new AllCommentResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllCommentResponseData &&
        media == other.media &&
        sId == other.sId &&
        rating == other.rating &&
        review == other.review &&
        userId == other.userId &&
        username == other.username &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, media.hashCode), sId.hashCode),
                        rating.hashCode),
                    review.hashCode),
                userId.hashCode),
            username.hashCode),
        productId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllCommentResponseData')
          ..add('media', media)
          ..add('sId', sId)
          ..add('rating', rating)
          ..add('review', review)
          ..add('userId', userId)
          ..add('username', username)
          ..add('productId', productId))
        .toString();
  }
}

class AllCommentResponseDataBuilder
    implements Builder<AllCommentResponseData, AllCommentResponseDataBuilder> {
  _$AllCommentResponseData _$v;

  ListBuilder<String> _media;
  ListBuilder<String> get media => _$this._media ??= new ListBuilder<String>();
  set media(ListBuilder<String> media) => _$this._media = media;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  String _review;
  String get review => _$this._review;
  set review(String review) => _$this._review = review;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  AllCommentResponseDataBuilder();

  AllCommentResponseDataBuilder get _$this {
    if (_$v != null) {
      _media = _$v.media?.toBuilder();
      _sId = _$v.sId;
      _rating = _$v.rating;
      _review = _$v.review;
      _userId = _$v.userId;
      _username = _$v.username;
      _productId = _$v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllCommentResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllCommentResponseData;
  }

  @override
  void update(void Function(AllCommentResponseDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllCommentResponseData build() {
    _$AllCommentResponseData _$result;
    try {
      _$result = _$v ??
          new _$AllCommentResponseData._(
              media: _media?.build(),
              sId: sId,
              rating: rating,
              review: review,
              userId: userId,
              username: username,
              productId: productId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllCommentResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
