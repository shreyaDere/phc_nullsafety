import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/network/connectivity_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

class ConnectivityAwareViewModel extends ReactiveViewModel {
  Widget _currentWidget;
  Widget get currentWidget => _currentWidget;
  var _connectivityService = locator<ConnectivityService>();
  DataConnectionStatus get dataConnectionStatus =>
      _connectivityService.connectionStatus;
  @override
  List<ReactiveServiceMixin> get reactiveServices => [_connectivityService];

  void setWidget(Widget currentWidget) {
    _currentWidget = currentWidget;
  }

  Widget returnWidget() {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        return NoInternetConnectionUI();
        break;
      case DataConnectionStatus.connected:
        return _currentWidget;
        break;
      default:
        return NoInternetConnectionUI();
    }
  }
}
