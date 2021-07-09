// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_Cart_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddToCartRequest> _$addToCartRequestSerializer =
    new _$AddToCartRequestSerializer();

class _$AddToCartRequestSerializer
    implements StructuredSerializer<AddToCartRequest> {
  @override
  final Iterable<Type> types = const [AddToCartRequest, _$AddToCartRequest];
  @override
  final String wireName = 'AddToCartRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, AddToCartRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.product_id != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.product_id,
            specifiedType: const FullType(String)));
    }
    if (object.quantity != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(object.quantity,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AddToCartRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddToCartRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product_id':
          result.product_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AddToCartRequest extends AddToCartRequest {
  @override
  final String product_id;
  @override
  final int quantity;

  factory _$AddToCartRequest(
          [void Function(AddToCartRequestBuilder) updates]) =>
      (new AddToCartRequestBuilder()..update(updates)).build();

  _$AddToCartRequest._({this.product_id, this.quantity}) : super._();

  @override
  AddToCartRequest rebuild(void Function(AddToCartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartRequestBuilder toBuilder() =>
      new AddToCartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartRequest &&
        product_id == other.product_id &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, product_id.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToCartRequest')
          ..add('product_id', product_id)
          ..add('quantity', quantity))
        .toString();
  }
}

class AddToCartRequestBuilder
    implements Builder<AddToCartRequest, AddToCartRequestBuilder> {
  _$AddToCartRequest _$v;

  String _product_id;
  String get product_id => _$this._product_id;
  set product_id(String product_id) => _$this._product_id = product_id;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  AddToCartRequestBuilder();

  AddToCartRequestBuilder get _$this {
    if (_$v != null) {
      _product_id = _$v.product_id;
      _quantity = _$v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToCartRequest;
  }

  @override
  void update(void Function(AddToCartRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToCartRequest build() {
    final _$result = _$v ??
        new _$AddToCartRequest._(product_id: product_id, quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
