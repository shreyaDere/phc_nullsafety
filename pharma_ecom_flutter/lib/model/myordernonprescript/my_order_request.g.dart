// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyOrderRequest> _$myOrderRequestSerializer =
    new _$MyOrderRequestSerializer();

class _$MyOrderRequestSerializer
    implements StructuredSerializer<MyOrderRequest> {
  @override
  final Iterable<Type> types = const [MyOrderRequest, _$MyOrderRequest];
  @override
  final String wireName = 'MyOrderRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, MyOrderRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'orderType',
      serializers.serialize(object.orderType,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MyOrderRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyOrderRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'orderType':
          result.orderType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MyOrderRequest extends MyOrderRequest {
  @override
  final int orderType;

  factory _$MyOrderRequest([void Function(MyOrderRequestBuilder) updates]) =>
      (new MyOrderRequestBuilder()..update(updates)).build();

  _$MyOrderRequest._({this.orderType}) : super._() {
    if (orderType == null) {
      throw new BuiltValueNullFieldError('MyOrderRequest', 'orderType');
    }
  }

  @override
  MyOrderRequest rebuild(void Function(MyOrderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyOrderRequestBuilder toBuilder() =>
      new MyOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyOrderRequest && orderType == other.orderType;
  }

  @override
  int get hashCode {
    return $jf($jc(0, orderType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MyOrderRequest')
          ..add('orderType', orderType))
        .toString();
  }
}

class MyOrderRequestBuilder
    implements Builder<MyOrderRequest, MyOrderRequestBuilder> {
  _$MyOrderRequest _$v;

  int _orderType;
  int get orderType => _$this._orderType;
  set orderType(int orderType) => _$this._orderType = orderType;

  MyOrderRequestBuilder();

  MyOrderRequestBuilder get _$this {
    if (_$v != null) {
      _orderType = _$v.orderType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyOrderRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MyOrderRequest;
  }

  @override
  void update(void Function(MyOrderRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MyOrderRequest build() {
    final _$result = _$v ?? new _$MyOrderRequest._(orderType: orderType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
