// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemHiveModelAdapter extends TypeAdapter<CartItemHiveModel> {
  @override
  final int typeId = 1;

  @override
  CartItemHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItemHiveModel(
      fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CartItemHiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.qty);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
