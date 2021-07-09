import 'package:hive/hive.dart';

part 'hive_user.g.dart';

@HiveType(typeId: 1)
class UserHiveModel {
  @HiveField(0)
  final String uname;
  @HiveField(1)
  final int uid;

  UserHiveModel(this.uname, this.uid);
}
