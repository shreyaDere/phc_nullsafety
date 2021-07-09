// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchRequest> _$searchRequestSerializer =
    new _$SearchRequestSerializer();

class _$SearchRequestSerializer implements StructuredSerializer<SearchRequest> {
  @override
  final Iterable<Type> types = const [SearchRequest, _$SearchRequest];
  @override
  final String wireName = 'SearchRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.search != null) {
      result
        ..add('search')
        ..add(serializers.serialize(object.search,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SearchRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchRequest extends SearchRequest {
  @override
  final String search;

  factory _$SearchRequest([void Function(SearchRequestBuilder) updates]) =>
      (new SearchRequestBuilder()..update(updates)).build();

  _$SearchRequest._({this.search}) : super._();

  @override
  SearchRequest rebuild(void Function(SearchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchRequestBuilder toBuilder() => new SearchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchRequest && search == other.search;
  }

  @override
  int get hashCode {
    return $jf($jc(0, search.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchRequest')..add('search', search))
        .toString();
  }
}

class SearchRequestBuilder
    implements Builder<SearchRequest, SearchRequestBuilder> {
  _$SearchRequest _$v;

  String _search;
  String get search => _$this._search;
  set search(String search) => _$this._search = search;

  SearchRequestBuilder();

  SearchRequestBuilder get _$this {
    if (_$v != null) {
      _search = _$v.search;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchRequest;
  }

  @override
  void update(void Function(SearchRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchRequest build() {
    final _$result = _$v ?? new _$SearchRequest._(search: search);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
