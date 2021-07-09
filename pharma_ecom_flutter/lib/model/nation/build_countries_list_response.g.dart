// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_countries_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuildCountriesListResponse> _$buildCountriesListResponseSerializer =
    new _$BuildCountriesListResponseSerializer();
Serializer<DataCountries> _$dataCountriesSerializer =
    new _$DataCountriesSerializer();
Serializer<CountriesList> _$countriesListSerializer =
    new _$CountriesListSerializer();

class _$BuildCountriesListResponseSerializer
    implements StructuredSerializer<BuildCountriesListResponse> {
  @override
  final Iterable<Type> types = const [
    BuildCountriesListResponse,
    _$BuildCountriesListResponse
  ];
  @override
  final String wireName = 'BuildCountriesListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BuildCountriesListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataCountries)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuildCountriesListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildCountriesListResponseBuilder();

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
              specifiedType: const FullType(DataCountries)) as DataCountries);
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

class _$DataCountriesSerializer implements StructuredSerializer<DataCountries> {
  @override
  final Iterable<Type> types = const [DataCountries, _$DataCountries];
  @override
  final String wireName = 'DataCountries';

  @override
  Iterable<Object> serialize(Serializers serializers, DataCountries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'countries',
      serializers.serialize(object.countries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CountriesList)])),
    ];

    return result;
  }

  @override
  DataCountries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataCountriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CountriesList)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CountriesListSerializer implements StructuredSerializer<CountriesList> {
  @override
  final Iterable<Type> types = const [CountriesList, _$CountriesList];
  @override
  final String wireName = 'CountriesList';

  @override
  Iterable<Object> serialize(Serializers serializers, CountriesList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'capital',
      serializers.serialize(object.capital,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'phone_code',
      serializers.serialize(object.phoneCode,
          specifiedType: const FullType(String)),
      'iso2',
      serializers.serialize(object.iso2, specifiedType: const FullType(String)),
      'iso3',
      serializers.serialize(object.iso3, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CountriesList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountriesListBuilder();

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
        case 'capital':
          result.capital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_code':
          result.phoneCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso2':
          result.iso2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso3':
          result.iso3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuildCountriesListResponse extends BuildCountriesListResponse {
  @override
  final int status;
  @override
  final DataCountries data;
  @override
  final String message;

  factory _$BuildCountriesListResponse(
          [void Function(BuildCountriesListResponseBuilder) updates]) =>
      (new BuildCountriesListResponseBuilder()..update(updates)).build();

  _$BuildCountriesListResponse._({this.status, this.data, this.message})
      : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'BuildCountriesListResponse', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BuildCountriesListResponse', 'data');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'BuildCountriesListResponse', 'message');
    }
  }

  @override
  BuildCountriesListResponse rebuild(
          void Function(BuildCountriesListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildCountriesListResponseBuilder toBuilder() =>
      new BuildCountriesListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildCountriesListResponse &&
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
    return (newBuiltValueToStringHelper('BuildCountriesListResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class BuildCountriesListResponseBuilder
    implements
        Builder<BuildCountriesListResponse, BuildCountriesListResponseBuilder> {
  _$BuildCountriesListResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  DataCountriesBuilder _data;
  DataCountriesBuilder get data => _$this._data ??= new DataCountriesBuilder();
  set data(DataCountriesBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BuildCountriesListResponseBuilder();

  BuildCountriesListResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildCountriesListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuildCountriesListResponse;
  }

  @override
  void update(void Function(BuildCountriesListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuildCountriesListResponse build() {
    _$BuildCountriesListResponse _$result;
    try {
      _$result = _$v ??
          new _$BuildCountriesListResponse._(
              status: status, data: data.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuildCountriesListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataCountries extends DataCountries {
  @override
  final BuiltList<CountriesList> countries;

  factory _$DataCountries([void Function(DataCountriesBuilder) updates]) =>
      (new DataCountriesBuilder()..update(updates)).build();

  _$DataCountries._({this.countries}) : super._() {
    if (countries == null) {
      throw new BuiltValueNullFieldError('DataCountries', 'countries');
    }
  }

  @override
  DataCountries rebuild(void Function(DataCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataCountriesBuilder toBuilder() => new DataCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataCountries && countries == other.countries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, countries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataCountries')
          ..add('countries', countries))
        .toString();
  }
}

class DataCountriesBuilder
    implements Builder<DataCountries, DataCountriesBuilder> {
  _$DataCountries _$v;

  ListBuilder<CountriesList> _countries;
  ListBuilder<CountriesList> get countries =>
      _$this._countries ??= new ListBuilder<CountriesList>();
  set countries(ListBuilder<CountriesList> countries) =>
      _$this._countries = countries;

  DataCountriesBuilder();

  DataCountriesBuilder get _$this {
    if (_$v != null) {
      _countries = _$v.countries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataCountries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataCountries;
  }

  @override
  void update(void Function(DataCountriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataCountries build() {
    _$DataCountries _$result;
    try {
      _$result = _$v ?? new _$DataCountries._(countries: countries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataCountries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CountriesList extends CountriesList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String capital;
  @override
  final String currency;
  @override
  final String phoneCode;
  @override
  final String iso2;
  @override
  final String iso3;

  factory _$CountriesList([void Function(CountriesListBuilder) updates]) =>
      (new CountriesListBuilder()..update(updates)).build();

  _$CountriesList._(
      {this.id,
      this.name,
      this.capital,
      this.currency,
      this.phoneCode,
      this.iso2,
      this.iso3})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'name');
    }
    if (capital == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'capital');
    }
    if (currency == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'currency');
    }
    if (phoneCode == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'phoneCode');
    }
    if (iso2 == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'iso2');
    }
    if (iso3 == null) {
      throw new BuiltValueNullFieldError('CountriesList', 'iso3');
    }
  }

  @override
  CountriesList rebuild(void Function(CountriesListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesListBuilder toBuilder() => new CountriesListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesList &&
        id == other.id &&
        name == other.name &&
        capital == other.capital &&
        currency == other.currency &&
        phoneCode == other.phoneCode &&
        iso2 == other.iso2 &&
        iso3 == other.iso3;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        capital.hashCode),
                    currency.hashCode),
                phoneCode.hashCode),
            iso2.hashCode),
        iso3.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountriesList')
          ..add('id', id)
          ..add('name', name)
          ..add('capital', capital)
          ..add('currency', currency)
          ..add('phoneCode', phoneCode)
          ..add('iso2', iso2)
          ..add('iso3', iso3))
        .toString();
  }
}

class CountriesListBuilder
    implements Builder<CountriesList, CountriesListBuilder> {
  _$CountriesList _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _capital;
  String get capital => _$this._capital;
  set capital(String capital) => _$this._capital = capital;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _phoneCode;
  String get phoneCode => _$this._phoneCode;
  set phoneCode(String phoneCode) => _$this._phoneCode = phoneCode;

  String _iso2;
  String get iso2 => _$this._iso2;
  set iso2(String iso2) => _$this._iso2 = iso2;

  String _iso3;
  String get iso3 => _$this._iso3;
  set iso3(String iso3) => _$this._iso3 = iso3;

  CountriesListBuilder();

  CountriesListBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _capital = _$v.capital;
      _currency = _$v.currency;
      _phoneCode = _$v.phoneCode;
      _iso2 = _$v.iso2;
      _iso3 = _$v.iso3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CountriesList;
  }

  @override
  void update(void Function(CountriesListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountriesList build() {
    final _$result = _$v ??
        new _$CountriesList._(
            id: id,
            name: name,
            capital: capital,
            currency: currency,
            phoneCode: phoneCode,
            iso2: iso2,
            iso3: iso3);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
