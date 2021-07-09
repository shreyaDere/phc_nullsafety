// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'on_bording_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OnBordingResponse> _$onBordingResponseSerializer =
    new _$OnBordingResponseSerializer();
Serializer<BoardData> _$boardDataSerializer = new _$BoardDataSerializer();

class _$OnBordingResponseSerializer
    implements StructuredSerializer<OnBordingResponse> {
  @override
  final Iterable<Type> types = const [OnBordingResponse, _$OnBordingResponse];
  @override
  final String wireName = 'OnBordingResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, OnBordingResponse object,
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
            specifiedType:
                const FullType(BuiltList, const [const FullType(BoardData)])));
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
  OnBordingResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OnBordingResponseBuilder();

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
                      BuiltList, const [const FullType(BoardData)]))
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

class _$BoardDataSerializer implements StructuredSerializer<BoardData> {
  @override
  final Iterable<Type> types = const [BoardData, _$BoardData];
  @override
  final String wireName = 'BoardData';

  @override
  Iterable<Object> serialize(Serializers serializers, BoardData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.boardingScreenName != null) {
      result
        ..add('boardingScreenName')
        ..add(serializers.serialize(object.boardingScreenName,
            specifiedType: const FullType(String)));
    }
    if (object.boardingScreenSlug != null) {
      result
        ..add('boardingScreenSlug')
        ..add(serializers.serialize(object.boardingScreenSlug,
            specifiedType: const FullType(String)));
    }
    if (object.boardingScreenDescription != null) {
      result
        ..add('boardingScreenDescription')
        ..add(serializers.serialize(object.boardingScreenDescription,
            specifiedType: const FullType(String)));
    }
    if (object.boardingScreenImage != null) {
      result
        ..add('boardingScreenImage')
        ..add(serializers.serialize(object.boardingScreenImage,
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
  BoardData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoardDataBuilder();

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
        case 'boardingScreenName':
          result.boardingScreenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'boardingScreenSlug':
          result.boardingScreenSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'boardingScreenDescription':
          result.boardingScreenDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'boardingScreenImage':
          result.boardingScreenImage = serializers.deserialize(value,
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

class _$OnBordingResponse extends OnBordingResponse {
  @override
  final int status;
  @override
  final BuiltList<BoardData> data;
  @override
  final String message;

  factory _$OnBordingResponse(
          [void Function(OnBordingResponseBuilder) updates]) =>
      (new OnBordingResponseBuilder()..update(updates)).build();

  _$OnBordingResponse._({this.status, this.data, this.message}) : super._();

  @override
  OnBordingResponse rebuild(void Function(OnBordingResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnBordingResponseBuilder toBuilder() =>
      new OnBordingResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnBordingResponse &&
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
    return (newBuiltValueToStringHelper('OnBordingResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class OnBordingResponseBuilder
    implements Builder<OnBordingResponse, OnBordingResponseBuilder> {
  _$OnBordingResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<BoardData> _data;
  ListBuilder<BoardData> get data =>
      _$this._data ??= new ListBuilder<BoardData>();
  set data(ListBuilder<BoardData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  OnBordingResponseBuilder();

  OnBordingResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnBordingResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnBordingResponse;
  }

  @override
  void update(void Function(OnBordingResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnBordingResponse build() {
    _$OnBordingResponse _$result;
    try {
      _$result = _$v ??
          new _$OnBordingResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnBordingResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BoardData extends BoardData {
  @override
  final String sId;
  @override
  final String boardingScreenName;
  @override
  final String boardingScreenSlug;
  @override
  final String boardingScreenDescription;
  @override
  final String boardingScreenImage;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$BoardData([void Function(BoardDataBuilder) updates]) =>
      (new BoardDataBuilder()..update(updates)).build();

  _$BoardData._(
      {this.sId,
      this.boardingScreenName,
      this.boardingScreenSlug,
      this.boardingScreenDescription,
      this.boardingScreenImage,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  BoardData rebuild(void Function(BoardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardDataBuilder toBuilder() => new BoardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardData &&
        sId == other.sId &&
        boardingScreenName == other.boardingScreenName &&
        boardingScreenSlug == other.boardingScreenSlug &&
        boardingScreenDescription == other.boardingScreenDescription &&
        boardingScreenImage == other.boardingScreenImage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, sId.hashCode), boardingScreenName.hashCode),
                        boardingScreenSlug.hashCode),
                    boardingScreenDescription.hashCode),
                boardingScreenImage.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BoardData')
          ..add('sId', sId)
          ..add('boardingScreenName', boardingScreenName)
          ..add('boardingScreenSlug', boardingScreenSlug)
          ..add('boardingScreenDescription', boardingScreenDescription)
          ..add('boardingScreenImage', boardingScreenImage)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class BoardDataBuilder implements Builder<BoardData, BoardDataBuilder> {
  _$BoardData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _boardingScreenName;
  String get boardingScreenName => _$this._boardingScreenName;
  set boardingScreenName(String boardingScreenName) =>
      _$this._boardingScreenName = boardingScreenName;

  String _boardingScreenSlug;
  String get boardingScreenSlug => _$this._boardingScreenSlug;
  set boardingScreenSlug(String boardingScreenSlug) =>
      _$this._boardingScreenSlug = boardingScreenSlug;

  String _boardingScreenDescription;
  String get boardingScreenDescription => _$this._boardingScreenDescription;
  set boardingScreenDescription(String boardingScreenDescription) =>
      _$this._boardingScreenDescription = boardingScreenDescription;

  String _boardingScreenImage;
  String get boardingScreenImage => _$this._boardingScreenImage;
  set boardingScreenImage(String boardingScreenImage) =>
      _$this._boardingScreenImage = boardingScreenImage;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  BoardDataBuilder();

  BoardDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _boardingScreenName = _$v.boardingScreenName;
      _boardingScreenSlug = _$v.boardingScreenSlug;
      _boardingScreenDescription = _$v.boardingScreenDescription;
      _boardingScreenImage = _$v.boardingScreenImage;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoardData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BoardData;
  }

  @override
  void update(void Function(BoardDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BoardData build() {
    final _$result = _$v ??
        new _$BoardData._(
            sId: sId,
            boardingScreenName: boardingScreenName,
            boardingScreenSlug: boardingScreenSlug,
            boardingScreenDescription: boardingScreenDescription,
            boardingScreenImage: boardingScreenImage,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
