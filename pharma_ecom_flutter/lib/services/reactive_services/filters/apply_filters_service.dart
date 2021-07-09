import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class ApplyFiltersService with ReactiveServiceMixin {
  Function callback;
  BuiltList<int> selectedCat;
  BuiltList<AttributesFilters> selectedAttributes;
  void registerCallback(Function callback) => this.callback = callback;
  void callFunction(
          {BuiltList<int> selectedCat,
          BuiltList<AttributesFilters> selectedAttributes}) =>
      callback(selectedCat, selectedAttributes);
}
