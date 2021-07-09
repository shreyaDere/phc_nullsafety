import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class ProductDetailsRefreshService with ReactiveServiceMixin {
  Function callback;
  void registerCallback(Function callback) => this.callback = callback;
  void callFunction() => callback();
}
