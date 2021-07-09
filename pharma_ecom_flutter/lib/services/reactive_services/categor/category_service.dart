import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class CategoryService with ReactiveServiceMixin {
  Function callback;

  void registerCallback(Function callback) => this.callback = callback;
  void callFunction() => callback();
}