import 'package:built_collection/built_collection.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/productgridlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/filters/apply_filters_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class FiltersViewModel extends ConnectivityAwareViewModel {
  FiltersViewModel() {
    _selectedCatId = BuiltList<int>();
    _selectedAttributes = BuiltList<AttributesFilters>();
  }
  NavigationService _navigationService = locator<NavigationService>();
  ApplyFiltersService _applyFiltersService = locator<ApplyFiltersService>();

  ProductGridListResponse _productGridListResponse;
  ProductGridListResponse get productGridListResponse =>
      _productGridListResponse;
  BuiltList<int> _selectedCatId;
  BuiltList<int> get selectedCatId => _selectedCatId;
  BuiltList<AttributesFilters> _selectedAttributes;
  // int _selectedSubFilterIndex = -1;
  // int get selectedSubFilterIndex => _selectedSubFilterIndex;
  int _mainFilterIndexSelection = 0;
  int get mainFilterIndexSelection => _mainFilterIndexSelection;
  var logger = getLogger("FiltersView");
  // List<Attributes> attribue;

  loadData(ProductGridListResponse productGridListResponse) {
    _productGridListResponse = productGridListResponse;

    assignAttribute();
  }

  popView() async {
    _navigationService.back();
  }

  updateSelectedIndex(int index) {
    _mainFilterIndexSelection = index;
    notifyListeners();
  }

  selectItemForFilterSub({int index}) {
    //if (_mainFilterIndexSelection == 0) {
    if (selectedCatId.contains(
        _productGridListResponse.data.filters.subcategories[index].catId)) {
      _selectedCatId = (_selectedCatId.toBuilder()
            ..remove(_productGridListResponse
                .data.filters.subcategories[index].catId))
          .build();
      notifyListeners();
    } else {
      _selectedCatId = (_selectedCatId.toBuilder()
            ..add(_productGridListResponse
                .data.filters.subcategories[index].catId))
          .build();
      notifyListeners();
    }
    // } else {
    //   AttributesFilters temp = AttributesFilters((r) => r..name = item.name);
    //   _selectedAttributes =
    //       (_selectedAttributes.toBuilder()..add(temp)).build();
    //   // AttributesFilters temp = new AttributesFilters();
    //   // _selectedAttributes = (_selectedAttributes.toBuilder()..add()).build();

    // }
    notifyListeners();
  }

  getMainFilterLength() {
    if (_productGridListResponse.data.filters.subcategories != null &&
        _productGridListResponse.data.filters.attributes != null) {
      return _productGridListResponse.data.filters.attributes.length + 1;
    }
  }

  geSubFilterListCount() {
    if (_mainFilterIndexSelection == 0) {
      return _productGridListResponse.data.filters.subcategories.length;
    } else {
      int temp = _mainFilterIndexSelection - 1;
      return _productGridListResponse
          .data.filters.attributes[temp].terms.length;
    }
  }

  void getCategoryFilters() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        break;
    }
  }

  clearAll() {
    _selectedCatId = (_selectedCatId.toBuilder()..clear()).build();
    notifyListeners();
  }

  applyFilters() {
    _applyFiltersService.callFunction(
        selectedCat: _selectedCatId, selectedAttributes: _selectedAttributes);
    _navigationService.back();
  }

  assignAttribute() {
    for (var item in _productGridListResponse.data.filters.attributes) {
      AttributesFilters temp = AttributesFilters((r) => r..name = item.name);
      _selectedAttributes =
          (_selectedAttributes.toBuilder()..add(temp)).build();
    }
    logger.d(_selectedAttributes);
  }

  selectItemForFilterAtt({int index, String type, String term}) {
    TermsAttributesFilters tempTerm =
        TermsAttributesFilters((r) => r..name = term);
    AttributesFilters tempName = AttributesFilters((r) => r
      ..name = type
      ..terms = tempTerm.toBuilder());
    _selectedAttributes =
        (_selectedAttributes.toBuilder()..add(tempName)).build();

    logger.d(_selectedAttributes);
  }

  checkTermStatus({int index, String type, String term}) {
    // TermsAttributesFilters tempTerm =
    //     TermsAttributesFilters((r) => r..name = term);
    // if (_selectedAttributes.contains((r) => r.name == type)) {
    //   _selectedAttributes = _selectedAttributes.toBuilder()
    //     ..add(_selectedAttributes.where((t) => t.name == type)).build();
    // }

    return false;
  }
}
