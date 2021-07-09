// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_cities_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildCitiesListResponse> _$buildCitiesListResponseSerializer =
    new _$BuildCitiesListResponseSerializer();
Serializer<DataCitiesList> _$dataCitiesListSerializer =
    new _$DataCitiesListSerializer();
Serializer<CitiesListObject> _$citiesListObjectSerializer =
    new _$CitiesListObjectSerializer();

class _$BuildCitiesListResponseSerializer
    implements StructuredSerializer<BuildCitiesListResponse> {
  @override
  final Iterable<Type> types = const [
    BuildCitiesListResponse,
    _$BuildCitiesListResponse
  ];
  @override
  final String wireName = 'BuildCitiesListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuildCitiesListResponse object,
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
            specifiedType: const FullType(DataCitiesList)));
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
  BuildCitiesListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildCitiesListResponseBuilder();

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
              specifiedType: const FullType(DataCitiesList)) as DataCitiesList);
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

class _$DataCitiesListSerializer
    implements StructuredSerializer<DataCitiesList> {
  @override
  final Iterable<Type> types = const [DataCitiesList, _$DataCitiesList];
  @override
  final String wireName = 'DataCitiesList';

  @override
  Iterable<Object> serialize(Serializers serializers, DataCitiesList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cities != null) {
      result
        ..add('cities')
        ..add(serializers.serialize(object.cities,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CitiesListObject)])));
    }
    return result;
  }

  @override
  DataCitiesList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataCitiesListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cities':
          result.cities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CitiesListObject)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CitiesListObjectSerializer
    implements StructuredSerializer<CitiesListObject> {
  @override
  final Iterable<Type> types = const [CitiesListObject, _$CitiesListObject];
  @override
  final String wireName = 'CitiesListObject';

  @override
  Iterable<Object> serialize(Serializers serializers, CitiesListObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CitiesListObject deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CitiesListObjectBuilder();

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
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildCitiesListResponse extends BuildCitiesListResponse {
  @override
  final int status;
  @override
  final DataCitiesList data;
  @override
  final String message;

  factory _$BuildCitiesListResponse(
          [void Function(BuildCitiesListResponseBuilder) updates]) =>
      (new BuildCitiesListResponseBuilder()..update(updates)).build();

  _$BuildCitiesListResponse._({this.status, this.data, this.message})
      : super._();

  @override
  BuildCitiesListResponse rebuild(
          void Function(BuildCitiesListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildCitiesListResponseBuilder toBuilder() =>
      new BuildCitiesListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildCitiesListResponse &&
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
    return (newBuiltValueToStringHelper('BuildCitiesListResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class BuildCitiesListResponseBuilder
    implements
        Builder<BuildCitiesListResponse, BuildCitiesListResponseBuilder> {
  _$BuildCitiesListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataCitiesListBuilder _data;
  DataCitiesListBuilder get data =>
      _$this._data ??= new DataCitiesListBuilder();
  set data(DataCitiesListBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BuildCitiesListResponseBuilder();

  BuildCitiesListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildCitiesListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildCitiesListResponse;
  }

  @override
  void update(void Function(BuildCitiesListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildCitiesListResponse build() {
    _$BuildCitiesListResponse _$result;
    try {
      _$result = _$v ??
          new _$BuildCitiesListResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildCitiesListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataCitiesList extends DataCitiesList {
  @override
  final BuiltList<CitiesListObject> cities;

  factory _$DataCitiesList([void Function(DataCitiesListBuilder) updates]) =>
      (new DataCitiesListBuilder()..update(updates)).build();

  _$DataCitiesList._({this.cities}) : super._();

  @override
  DataCitiesList rebuild(void Function(DataCitiesListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataCitiesListBuilder toBuilder() =>
      new DataCitiesListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataCitiesList && cities == other.cities;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cities.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataCitiesList')
          ..add('cities', cities))
        .toString();
  }
}

class DataCitiesListBuilder
    implements Builder<DataCitiesList, DataCitiesListBuilder> {
  _$DataCitiesList _$v;

  ListBuilder<CitiesListObject> _cities;
  ListBuilder<CitiesListObject> get cities =>
      _$this._cities ??= new ListBuilder<CitiesListObject>();
  set cities(ListBuilder<CitiesListObject> cities) => _$this._cities = cities;

  DataCitiesListBuilder();

  DataCitiesListBuilder get _$this {
    if (_$v != null) {
      _cities = _$v.cities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataCitiesList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataCitiesList;
  }

  @override
  void update(void Function(DataCitiesListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataCitiesList build() {
    _$DataCitiesList _$result;
    try {
      _$result = _$v ?? new _$DataCitiesList._(cities: _cities?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cities';
        _cities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataCitiesList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CitiesListObject extends CitiesListObject {
  @override
  final int id;
  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;

  factory _$CitiesListObject(
          [void Function(CitiesListObjectBuilder) updates]) =>
      (new CitiesListObjectBuilder()..update(updates)).build();

  _$CitiesListObject._({this.id, this.name, this.latitude, this.longitude})
      : super._();

  @override
  CitiesListObject rebuild(void Function(CitiesListObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitiesListObjectBuilder toBuilder() =>
      new CitiesListObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CitiesListObject &&
        id == other.id &&
        name == other.name &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), latitude.hashCode),
        longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CitiesListObject')
          ..add('id', id)
          ..add('name', name)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class CitiesListObjectBuilder
    implements Builder<CitiesListObject, CitiesListObjectBuilder> {
  _$CitiesListObject _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  CitiesListObjectBuilder();

  CitiesListObjectBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CitiesListObject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CitiesListObject;
  }

  @override
  void update(void Function(CitiesListObjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CitiesListObject build() {
    final _$result = _$v ??
        new _$CitiesListObject._(
            id: id, name: name, latitude: latitude, longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
