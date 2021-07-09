import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/feedback/feedback_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';

class OrderStatusViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  String _comment = "";
  String get comment => _comment;
  double _ratings;
  FeedbackService _feedbackService = FeedbackService.create();
  int _orderId;

  loadData(int orderId) async {
    _orderId = orderId;
    print(_orderId);
  }

  updateRatings(double value) {
    _ratings = value;
  }

  onSubmitBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        String token = await _storageServiceSharedPreferences.getToken();
        FeedBackRequest request = FeedBackRequest((r) => r
          ..orderID = _orderId
          ..rating = _ratings
          ..comment = _comment);

        Response<FeedBackResponse> response = await runBusyFuture(
            _feedbackService.saveFeedback(
                body: request, token: "Bearer $token"));
        if (response != null && response.body.status == 200) {
          _navigationService.popRepeated(2);
        }
    }
  }

  updateComment(String value) {
    _comment = value;
  }
}
