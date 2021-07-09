// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedBackRequest> _$feedBackRequestSerializer =
    new _$FeedBackRequestSerializer();

class _$FeedBackRequestSerializer
    implements StructuredSerializer<FeedBackRequest> {
  @override
  final Iterable<Type> types = const [FeedBackRequest, _$FeedBackRequest];
  @override
  final String wireName = 'FeedBackRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedBackRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.orderID != null) {
      result
        ..add('orderID')
        ..add(serializers.serialize(object.orderID,
            specifiedType: const FullType(int)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(double)));
    }
    if (object.comment != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(object.comment,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeedBackRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedBackRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'orderID':
          result.orderID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedBackRequest extends FeedBackRequest {
  @override
  final int orderID;
  @override
  final double rating;
  @override
  final String comment;

  factory _$FeedBackRequest([void Function(FeedBackRequestBuilder) updates]) =>
      (new FeedBackRequestBuilder()..update(updates)).build();

  _$FeedBackRequest._({this.orderID, this.rating, this.comment}) : super._();

  @override
  FeedBackRequest rebuild(void Function(FeedBackRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedBackRequestBuilder toBuilder() =>
      new FeedBackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedBackRequest &&
        orderID == other.orderID &&
        rating == other.rating &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, orderID.hashCode), rating.hashCode), comment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedBackRequest')
          ..add('orderID', orderID)
          ..add('rating', rating)
          ..add('comment', comment))
        .toString();
  }
}

class FeedBackRequestBuilder
    implements Builder<FeedBackRequest, FeedBackRequestBuilder> {
  _$FeedBackRequest _$v;

  int _orderID;
  int get orderID => _$this._orderID;
  set orderID(int orderID) => _$this._orderID = orderID;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  FeedBackRequestBuilder();

  FeedBackRequestBuilder get _$this {
    if (_$v != null) {
      _orderID = _$v.orderID;
      _rating = _$v.rating;
      _comment = _$v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedBackRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedBackRequest;
  }

  @override
  void update(void Function(FeedBackRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedBackRequest build() {
    final _$result = _$v ??
        new _$FeedBackRequest._(
            orderID: orderID, rating: rating, comment: comment);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
