import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class ConnectivityService with ReactiveServiceMixin {
  RxValue<DataConnectionStatus> _connectivityStreamController =
      RxValue<DataConnectionStatus>();
  DataConnectionStatus get connectionStatus =>
      _connectivityStreamController.value;

  ConnectivityService() {
    DataConnectionChecker().onStatusChange.listen((dataConnectionStatus) {
      _connectivityStreamController.value = dataConnectionStatus;
      listenToReactiveValues([_connectivityStreamController]);
    });
  }
}
