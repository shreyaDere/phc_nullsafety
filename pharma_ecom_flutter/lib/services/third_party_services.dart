import 'package:injectable/injectable.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/push_notification/push_notification_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/social_media_sign_in/social_media_sign_in.dart';
import 'package:stacked_services/stacked_services.dart';

import 'network/connectivity_service.dart';
import 'shared_pref/storage_service_shared_pref.dart';

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  NavigationService get navigationService;
  @lazySingleton
  DialogService get dialogService;
  @lazySingleton
  SnackbarService get snackBarService;
  @lazySingleton
  StorageServiceSharedPreferences get storageServiceSharedPreferences;
  @lazySingleton
  ConnectivityService get connectivityService;
  @lazySingleton
  PushNotificationService get pushNotificationService;
  @lazySingleton
  SocialMediaSignIn get socialMediaSignIn;
}
