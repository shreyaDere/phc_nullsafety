// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_state_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildStateListResponse> _$buildStateListResponseSerializer =
    new _$BuildStateListResponseSerializer();
Serializer<DataState> _$dataStateSerializer = new _$DataStateSerializer();
Serializer<StatesListObject> _$statesListObjectSerializer =
    new _$StatesListObjectSerializer();

class _$BuildStateListResponseSerializer
    implements StructuredSerializer<BuildStateListResponse> {
  @override
  final Iterable<Type> types = const [
    BuildStateListResponse,
    _$BuildStateListResponse
  ];
  @override
  final String wireName = 'BuildStateListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuildStateListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataState)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuildStateListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildStateListResponseBuilder();

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
              specifiedType: const FullType(DataState)) as DataState);
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

class _$DataStateSerializer implements StructuredSerializer<DataState> {
  @override
  final Iterable<Type> types = const [DataState, _$DataState];
  @override
  final String wireName = 'DataState';

  @override
  Iterable<Object> serialize(Serializers serializers, DataState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'states',
      serializers.serialize(object.states,
          specifiedType: const FullType(
              BuiltList, const [const FullType(StatesListObject)])),
    ];

    return result;
  }

  @override
  DataState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'states':
          result.states.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatesListObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$StatesListObjectSerializer
    implements StructuredSerializer<StatesListObject> {
  @override
  final Iterable<Type> types = const [StatesListObject, _$StatesListObject];
  @override
  final String wireName = 'StatesListObject';

  @override
  Iterable<Object> serialize(Serializers serializers, StatesListObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'state_code',
      serializers.serialize(object.stateCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  StatesListObject deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatesListObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state_code':
          result.stateCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildStateListResponse extends BuildStateListResponse {
  @override
  final int status;
  @override
  final DataState data;
  @override
  final String message;

  factory _$BuildStateListResponse(
          [void Function(BuildStateListResponseBuilder) updates]) =>
      (new BuildStateListResponseBuilder()..update(updates)).build();

  _$BuildStateListResponse._({this.status, this.data, this.message})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('BuildStateListResponse', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BuildStateListResponse', 'data');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('BuildStateListResponse', 'message');
    }
  }

  @override
  BuildStateListResponse rebuild(
          void Function(BuildStateListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildStateListResponseBuilder toBuilder() =>
      new BuildStateListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildStateListResponse &&
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
    return (newBuiltValueToStringHelper('BuildStateListResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class BuildStateListResponseBuilder
    implements Builder<BuildStateListResponse, BuildStateListResponseBuilder> {
  _$BuildStateListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataStateBuilder _data;
  DataStateBuilder get data => _$this._data ??= new DataStateBuilder();
  set data(DataStateBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BuildStateListResponseBuilder();

  BuildStateListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildStateListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildStateListResponse;
  }

  @override
  void update(void Function(BuildStateListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildStateListResponse build() {
    _$BuildStateListResponse _$result;
    try {
      _$result = _$v ??
          new _$BuildStateListResponse._(
              status: status, data: data.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildStateListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataState extends DataState {
  @override
  final BuiltList<StatesListObject> states;

  factory _$DataState([void Function(DataStateBuilder) updates]) =>
      (new DataStateBuilder()..update(updates)).build();

  _$DataState._({this.states}) : super._() {
    if (states == null) {
      throw new BuiltValueNullFieldError('DataState', 'states');
    }
  }

  @override
  DataState rebuild(void Function(DataStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataStateBuilder toBuilder() => new DataStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataState && states == other.states;
  }

  @override
  int get hashCode {
    return $jf($jc(0, states.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataState')..add('states', states))
        .toString();
  }
}

class DataStateBuilder implements Builder<DataState, DataStateBuilder> {
  _$DataState _$v;

  ListBuilder<StatesListObject> _states;
  ListBuilder<StatesListObject> get states =>
      _$this._states ??= new ListBuilder<StatesListObject>();
  set states(ListBuilder<StatesListObject> states) => _$this._states = states;

  DataStateBuilder();

  DataStateBuilder get _$this {
    if (_$v != null) {
      _states = _$v.states?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataState;
  }

  @override
  void update(void Function(DataStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataState build() {
    _$DataState _$result;
    try {
      _$result = _$v ?? new _$DataState._(states: states.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'states';
        states.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$StatesListObject extends StatesListObject {
  @override
  final int id;
  @override
  final String name;
  @override
  final String stateCode;

  factory _$StatesListObject(
          [void Function(StatesListObjectBuilder) updates]) =>
      (new StatesListObjectBuilder()..update(updates)).build();

  _$StatesListObject._({this.id, this.name, this.stateCode}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('StatesListObject', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('StatesListObject', 'name');
    }
    if (stateCode == null) {
      throw new BuiltValueNullFieldError('StatesListObject', 'stateCode');
    }
  }

  @override
  StatesListObject rebuild(void Function(StatesListObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatesListObjectBuilder toBuilder() =>
      new StatesListObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatesListObject &&
        id == other.id &&
        name == other.name &&
        stateCode == other.stateCode;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), stateCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatesListObject')
          ..add('id', id)
          ..add('name', name)
          ..add('stateCode', stateCode))
        .toString();
  }
}

class StatesListObjectBuilder
    implements Builder<StatesListObject, StatesListObjectBuilder> {
  _$StatesListObject _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _stateCode;
  String get stateCode => _$this._stateCode;
  set stateCode(String stateCode) => _$this._stateCode = stateCode;

  StatesListObjectBuilder();

  StatesListObjectBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _stateCode = _$v.stateCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatesListObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StatesListObject;
  }

  @override
  void update(void Function(StatesListObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatesListObject build() {
    final _$result = _$v ??
        new _$StatesListObject._(id: id, name: name, stateCode: stateCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
