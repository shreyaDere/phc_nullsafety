import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/onBording/onBording_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBordingViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  OnBordingService _onBordingService = OnBordingService.create();
  OnBordingResponse _onBordingResponse;
  OnBordingResponse get onBordingResponse => _onBordingResponse;

  loadData() async {
    Response<OnBordingResponse> response =
        await runBusyFuture(_onBordingService.getOnboardings());
    if (response != null && response.body.status == 200) {
      _onBordingResponse = response.body;
      // _imageUrl = response.body.data[0].boardingScreenImage;
      notifyListeners();
    } else {}
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
        await _navigationService.navigateTo(Routes.onBordingSecondView,
            arguments: OnBordingSecondViewArguments(
                onBordingResponse: onBordingResponse));
    }
  }
}
