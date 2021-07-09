// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationResponse> _$notificationResponseSerializer =
    new _$NotificationResponseSerializer();
Serializer<DataNotification> _$dataNotificationSerializer =
    new _$DataNotificationSerializer();
Serializer<NotificationObj> _$notificationObjSerializer =
    new _$NotificationObjSerializer();

class _$NotificationResponseSerializer
    implements StructuredSerializer<NotificationResponse> {
  @override
  final Iterable<Type> types = const [
    NotificationResponse,
    _$NotificationResponse
  ];
  @override
  final String wireName = 'NotificationResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationResponse object,
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
            specifiedType: const FullType(DataNotification)));
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
  NotificationResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponseBuilder();

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
                  specifiedType: const FullType(DataNotification))
              as DataNotification);
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

class _$DataNotificationSerializer
    implements StructuredSerializer<DataNotification> {
  @override
  final Iterable<Type> types = const [DataNotification, _$DataNotification];
  @override
  final String wireName = 'DataNotification';

  @override
  Iterable<Object> serialize(Serializers serializers, DataNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.notifications != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(object.notifications,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NotificationObj)])));
    }
    return result;
  }

  @override
  DataNotification deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataNotificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NotificationObj)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationObjSerializer
    implements StructuredSerializer<NotificationObj> {
  @override
  final Iterable<Type> types = const [NotificationObj, _$NotificationObj];
  @override
  final String wireName = 'NotificationObj';

  @override
  Iterable<Object> serialize(Serializers serializers, NotificationObj object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(String)));
    }
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.typeId != null) {
      result
        ..add('type_id')
        ..add(serializers.serialize(object.typeId,
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
  NotificationObj deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationObjBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type_id':
          result.typeId = serializers.deserialize(value,
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

class _$NotificationResponse extends NotificationResponse {
  @override
  final int status;
  @override
  final DataNotification data;
  @override
  final String message;

  factory _$NotificationResponse(
          [void Function(NotificationResponseBuilder) updates]) =>
      (new NotificationResponseBuilder()..update(updates)).build();

  _$NotificationResponse._({this.status, this.data, this.message}) : super._();

  @override
  NotificationResponse rebuild(
          void Function(NotificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponseBuilder toBuilder() =>
      new NotificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponse &&
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
    return (newBuiltValueToStringHelper('NotificationResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class NotificationResponseBuilder
    implements Builder<NotificationResponse, NotificationResponseBuilder> {
  _$NotificationResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataNotificationBuilder _data;
  DataNotificationBuilder get data =>
      _$this._data ??= new DataNotificationBuilder();
  set data(DataNotificationBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  NotificationResponseBuilder();

  NotificationResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationResponse;
  }

  @override
  void update(void Function(NotificationResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationResponse build() {
    _$NotificationResponse _$result;
    try {
      _$result = _$v ??
          new _$NotificationResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataNotification extends DataNotification {
  @override
  final BuiltList<NotificationObj> notifications;

  factory _$DataNotification(
          [void Function(DataNotificationBuilder) updates]) =>
      (new DataNotificationBuilder()..update(updates)).build();

  _$DataNotification._({this.notifications}) : super._();

  @override
  DataNotification rebuild(void Function(DataNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataNotificationBuilder toBuilder() =>
      new DataNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataNotification && notifications == other.notifications;
  }

  @override
  int get hashCode {
    return $jf($jc(0, notifications.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataNotification')
          ..add('notifications', notifications))
        .toString();
  }
}

class DataNotificationBuilder
    implements Builder<DataNotification, DataNotificationBuilder> {
  _$DataNotification _$v;

  ListBuilder<NotificationObj> _notifications;
  ListBuilder<NotificationObj> get notifications =>
      _$this._notifications ??= new ListBuilder<NotificationObj>();
  set notifications(ListBuilder<NotificationObj> notifications) =>
      _$this._notifications = notifications;

  DataNotificationBuilder();

  DataNotificationBuilder get _$this {
    if (_$v != null) {
      _notifications = _$v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataNotification other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataNotification;
  }

  @override
  void update(void Function(DataNotificationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataNotification build() {
    _$DataNotification _$result;
    try {
      _$result = _$v ??
          new _$DataNotification._(notifications: _notifications?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataNotification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationObj extends NotificationObj {
  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String type;
  @override
  final String action;
  @override
  final String userId;
  @override
  final String typeId;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$NotificationObj([void Function(NotificationObjBuilder) updates]) =>
      (new NotificationObjBuilder()..update(updates)).build();

  _$NotificationObj._(
      {this.id,
      this.title,
      this.body,
      this.type,
      this.action,
      this.userId,
      this.typeId,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  NotificationObj rebuild(void Function(NotificationObjBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationObjBuilder toBuilder() =>
      new NotificationObjBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationObj &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        type == other.type &&
        action == other.action &&
        userId == other.userId &&
        typeId == other.typeId &&
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
                            $jc($jc($jc(0, id.hashCode), title.hashCode),
                                body.hashCode),
                            type.hashCode),
                        action.hashCode),
                    userId.hashCode),
                typeId.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationObj')
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('type', type)
          ..add('action', action)
          ..add('userId', userId)
          ..add('typeId', typeId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class NotificationObjBuilder
    implements Builder<NotificationObj, NotificationObjBuilder> {
  _$NotificationObj _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _typeId;
  String get typeId => _$this._typeId;
  set typeId(String typeId) => _$this._typeId = typeId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  NotificationObjBuilder();

  NotificationObjBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _body = _$v.body;
      _type = _$v.type;
      _action = _$v.action;
      _userId = _$v.userId;
      _typeId = _$v.typeId;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationObj other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationObj;
  }

  @override
  void update(void Function(NotificationObjBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationObj build() {
    final _$result = _$v ??
        new _$NotificationObj._(
            id: id,
            title: title,
            body: body,
            type: type,
            action: action,
            userId: userId,
            typeId: typeId,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
