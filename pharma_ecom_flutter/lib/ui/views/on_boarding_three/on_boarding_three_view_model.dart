import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBordingThreeViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  // String _title;
  // String get title => _title;
  // String _description;
  // String get description => _description;
  // String _imageUrl;
  // String get imageUrl => _imageUrl;
  OnBordingResponse _onBordingResponse;
  OnBordingResponse get onBordingResponse => _onBordingResponse;
  loadData(OnBordingResponse onBordingResponse) async {
    _onBordingResponse = onBordingResponse;
    // _title = onBordingResponse.data[2].boardingScreenName;
    // _description = onBordingResponse.data[2].boardingScreenDescription;
    // _imageUrl = onBordingResponse.data[2].boardingScreenImage;
  }

  onSkipPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.clearStackAndShow(Routes.homeView);
    }
  }

  onNextPress() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.loginView);
    }
  }
}
