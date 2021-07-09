// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SplashResponse> _$splashResponseSerializer =
    new _$SplashResponseSerializer();
Serializer<SplashData> _$splashDataSerializer = new _$SplashDataSerializer();

class _$SplashResponseSerializer
    implements StructuredSerializer<SplashResponse> {
  @override
  final Iterable<Type> types = const [SplashResponse, _$SplashResponse];
  @override
  final String wireName = 'SplashResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SplashResponse object,
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
                const FullType(BuiltList, const [const FullType(SplashData)])));
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
  SplashResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SplashResponseBuilder();

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
                      BuiltList, const [const FullType(SplashData)]))
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

class _$SplashDataSerializer implements StructuredSerializer<SplashData> {
  @override
  final Iterable<Type> types = const [SplashData, _$SplashData];
  @override
  final String wireName = 'SplashData';

  @override
  Iterable<Object> serialize(Serializers serializers, SplashData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sId != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.sId,
            specifiedType: const FullType(String)));
    }
    if (object.splashScreenName != null) {
      result
        ..add('splashScreenName')
        ..add(serializers.serialize(object.splashScreenName,
            specifiedType: const FullType(String)));
    }
    if (object.splashScreenSlug != null) {
      result
        ..add('splashScreenSlug')
        ..add(serializers.serialize(object.splashScreenSlug,
            specifiedType: const FullType(String)));
    }
    if (object.splashScreenDescription != null) {
      result
        ..add('splashScreenDescription')
        ..add(serializers.serialize(object.splashScreenDescription,
            specifiedType: const FullType(String)));
    }
    if (object.splashScreenImage != null) {
      result
        ..add('splashScreenImage')
        ..add(serializers.serialize(object.splashScreenImage,
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
  SplashData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SplashDataBuilder();

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
        case 'splashScreenName':
          result.splashScreenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'splashScreenSlug':
          result.splashScreenSlug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'splashScreenDescription':
          result.splashScreenDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'splashScreenImage':
          result.splashScreenImage = serializers.deserialize(value,
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

class _$SplashResponse extends SplashResponse {
  @override
  final int status;
  @override
  final BuiltList<SplashData> data;
  @override
  final String message;

  factory _$SplashResponse([void Function(SplashResponseBuilder) updates]) =>
      (new SplashResponseBuilder()..update(updates)).build();

  _$SplashResponse._({this.status, this.data, this.message}) : super._();

  @override
  SplashResponse rebuild(void Function(SplashResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashResponseBuilder toBuilder() =>
      new SplashResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashResponse &&
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
    return (newBuiltValueToStringHelper('SplashResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class SplashResponseBuilder
    implements Builder<SplashResponse, SplashResponseBuilder> {
  _$SplashResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  ListBuilder<SplashData> _data;
  ListBuilder<SplashData> get data =>
      _$this._data ??= new ListBuilder<SplashData>();
  set data(ListBuilder<SplashData> data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  SplashResponseBuilder();

  SplashResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SplashResponse;
  }

  @override
  void update(void Function(SplashResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SplashResponse build() {
    _$SplashResponse _$result;
    try {
      _$result = _$v ??
          new _$SplashResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SplashResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SplashData extends SplashData {
  @override
  final String sId;
  @override
  final String splashScreenName;
  @override
  final String splashScreenSlug;
  @override
  final String splashScreenDescription;
  @override
  final String splashScreenImage;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$SplashData([void Function(SplashDataBuilder) updates]) =>
      (new SplashDataBuilder()..update(updates)).build();

  _$SplashData._(
      {this.sId,
      this.splashScreenName,
      this.splashScreenSlug,
      this.splashScreenDescription,
      this.splashScreenImage,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  SplashData rebuild(void Function(SplashDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashDataBuilder toBuilder() => new SplashDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashData &&
        sId == other.sId &&
        splashScreenName == other.splashScreenName &&
        splashScreenSlug == other.splashScreenSlug &&
        splashScreenDescription == other.splashScreenDescription &&
        splashScreenImage == other.splashScreenImage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, sId.hashCode), splashScreenName.hashCode),
                        splashScreenSlug.hashCode),
                    splashScreenDescription.hashCode),
                splashScreenImage.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SplashData')
          ..add('sId', sId)
          ..add('splashScreenName', splashScreenName)
          ..add('splashScreenSlug', splashScreenSlug)
          ..add('splashScreenDescription', splashScreenDescription)
          ..add('splashScreenImage', splashScreenImage)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SplashDataBuilder implements Builder<SplashData, SplashDataBuilder> {
  _$SplashData _$v;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _splashScreenName;
  String get splashScreenName => _$this._splashScreenName;
  set splashScreenName(String splashScreenName) =>
      _$this._splashScreenName = splashScreenName;

  String _splashScreenSlug;
  String get splashScreenSlug => _$this._splashScreenSlug;
  set splashScreenSlug(String splashScreenSlug) =>
      _$this._splashScreenSlug = splashScreenSlug;

  String _splashScreenDescription;
  String get splashScreenDescription => _$this._splashScreenDescription;
  set splashScreenDescription(String splashScreenDescription) =>
      _$this._splashScreenDescription = splashScreenDescription;

  String _splashScreenImage;
  String get splashScreenImage => _$this._splashScreenImage;
  set splashScreenImage(String splashScreenImage) =>
      _$this._splashScreenImage = splashScreenImage;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  SplashDataBuilder();

  SplashDataBuilder get _$this {
    if (_$v != null) {
      _sId = _$v.sId;
      _splashScreenName = _$v.splashScreenName;
      _splashScreenSlug = _$v.splashScreenSlug;
      _splashScreenDescription = _$v.splashScreenDescription;
      _splashScreenImage = _$v.splashScreenImage;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SplashData;
  }

  @override
  void update(void Function(SplashDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SplashData build() {
    final _$result = _$v ??
        new _$SplashData._(
            sId: sId,
            splashScreenName: splashScreenName,
            splashScreenSlug: splashScreenSlug,
            splashScreenDescription: splashScreenDescription,
            splashScreenImage: splashScreenImage,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
