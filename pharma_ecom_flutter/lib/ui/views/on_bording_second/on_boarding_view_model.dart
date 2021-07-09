import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBordingSecondViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  OnBordingResponse _onBordingResponse;
  OnBordingResponse get onBordingResponse => _onBordingResponse;

  loadData(OnBordingResponse onBordingResponse) async {
    _onBordingResponse = onBordingResponse;
  }

  onSkipPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.clearStackAndShow(Routes.loginView);
    }
  }

  onNextPress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.onBordingThreeView,
            arguments: OnBordingThreeViewArguments(
                onBordingResponse: _onBordingResponse));
    }
  }
}
