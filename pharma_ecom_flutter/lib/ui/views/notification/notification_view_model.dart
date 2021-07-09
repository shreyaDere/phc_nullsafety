import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/notification/notification_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/notification/notification_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';

class NotificationViewModel extends ConnectivityAwareViewModel {
  NotificationService _notificationService = NotificationService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  BuiltList<NotificationObj> _notification = BuiltList<NotificationObj>();
  BuiltList<NotificationObj> get notification => _notification;
  loadData() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<NotificationResponse> response = await runBusyFuture(
        _notificationService.getNotification(token: "Bearer $token"));
    if (response.statusCode == 200) {
      print("sag");
      _notification =
          (response.body.data.notifications.toBuilder()..reverse()).build();
      notifyListeners();
    }
  }

  String getDate(int index) {
    var arr = notification[index].createdAt.split("T");
    var arr1 = arr[1].split(".");
    return "${arr[0]} | ${arr1[0]}";
  }
}
