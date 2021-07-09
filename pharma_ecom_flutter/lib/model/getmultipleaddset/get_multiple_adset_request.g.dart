// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multiple_adset_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MultipleAdsetsRequest> _$multipleAdsetsRequestSerializer =
    new _$MultipleAdsetsRequestSerializer();

class _$MultipleAdsetsRequestSerializer
    implements StructuredSerializer<MultipleAdsetsRequest> {
  @override
  final Iterable<Type> types = const [
    MultipleAdsetsRequest,
    _$MultipleAdsetsRequest
  ];
  @override
  final String wireName = 'MultipleAdsetsRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MultipleAdsetsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.adsets != null) {
      result
        ..add('adsets')
        ..add(serializers.serialize(object.adsets,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  MultipleAdsetsRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultipleAdsetsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'adsets':
          result.adsets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MultipleAdsetsRequest extends MultipleAdsetsRequest {
  @override
  final BuiltList<String> adsets;

  factory _$MultipleAdsetsRequest(
          [void Function(MultipleAdsetsRequestBuilder) updates]) =>
      (new MultipleAdsetsRequestBuilder()..update(updates)).build();

  _$MultipleAdsetsRequest._({this.adsets}) : super._();

  @override
  MultipleAdsetsRequest rebuild(
          void Function(MultipleAdsetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleAdsetsRequestBuilder toBuilder() =>
      new MultipleAdsetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleAdsetsRequest && adsets == other.adsets;
  }

  @override
  int get hashCode {
    return $jf($jc(0, adsets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleAdsetsRequest')
          ..add('adsets', adsets))
        .toString();
  }
}

class MultipleAdsetsRequestBuilder
    implements Builder<MultipleAdsetsRequest, MultipleAdsetsRequestBuilder> {
  _$MultipleAdsetsRequest _$v;

  ListBuilder<String> _adsets;
  ListBuilder<String> get adsets =>
      _$this._adsets ??= new ListBuilder<String>();
  set adsets(ListBuilder<String> adsets) => _$this._adsets = adsets;

  MultipleAdsetsRequestBuilder();

  MultipleAdsetsRequestBuilder get _$this {
    if (_$v != null) {
      _adsets = _$v.adsets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipleAdsetsRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MultipleAdsetsRequest;
  }

  @override
  void update(void Function(MultipleAdsetsRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleAdsetsRequest build() {
    _$MultipleAdsetsRequest _$result;
    try {
      _$result = _$v ?? new _$MultipleAdsetsRequest._(adsets: _adsets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'adsets';
        _adsets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleAdsetsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
