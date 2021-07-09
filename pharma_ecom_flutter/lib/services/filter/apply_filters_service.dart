import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class ApplyFiltersList with ReactiveServiceMixin {
  Function callback;
  BuiltMap<int, BuiltList<int>> selectedSubItemsList;
  void registerCallback(Function callback) => this.callback = callback;
  void callFunction({BuiltMap<int, BuiltList<int>> selectedSubItemsList}) =>
      callback(selectedSubItemsList);
}
