import 'package:hive/hive.dart';

part 'cart_item.g.dart';

@HiveType(typeId: 1)
class CartItemHiveModel {
  @HiveField(0)
  int qty;

  CartItemHiveModel(this.qty);
}
