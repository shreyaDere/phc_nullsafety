// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_without_bnav_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryWithoutBnavResponse>
    _$categoryWithoutBnavResponseSerializer =
    new _$CategoryWithoutBnavResponseSerializer();

class _$CategoryWithoutBnavResponseSerializer
    implements StructuredSerializer<CategoryWithoutBnavResponse> {
  @override
  final Iterable<Type> types = const [
    CategoryWithoutBnavResponse,
    _$CategoryWithoutBnavResponse
  ];
  @override
  final String wireName = 'CategoryWithoutBnavResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryWithoutBnavResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CategoryWithoutBnavResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryWithoutBnavResponseBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryWithoutBnavResponse extends CategoryWithoutBnavResponse {
  @override
  final int status;
  @override
  final String message;

  factory _$CategoryWithoutBnavResponse(
          [void Function(CategoryWithoutBnavResponseBuilder) updates]) =>
      (new CategoryWithoutBnavResponseBuilder()..update(updates)).build();

  _$CategoryWithoutBnavResponse._({this.status, this.message}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'CategoryWithoutBnavResponse', 'status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError(
          'CategoryWithoutBnavResponse', 'message');
    }
  }

  @override
  CategoryWithoutBnavResponse rebuild(
          void Function(CategoryWithoutBnavResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryWithoutBnavResponseBuilder toBuilder() =>
      new CategoryWithoutBnavResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryWithoutBnavResponse &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryWithoutBnavResponse')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class CategoryWithoutBnavResponseBuilder
    implements
        Builder<CategoryWithoutBnavResponse,
            CategoryWithoutBnavResponseBuilder> {
  _$CategoryWithoutBnavResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  CategoryWithoutBnavResponseBuilder();

  CategoryWithoutBnavResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryWithoutBnavResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryWithoutBnavResponse;
  }

  @override
  void update(void Function(CategoryWithoutBnavResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryWithoutBnavResponse build() {
    final _$result = _$v ??
        new _$CategoryWithoutBnavResponse._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
