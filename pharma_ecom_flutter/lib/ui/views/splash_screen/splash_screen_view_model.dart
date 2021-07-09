import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/splash/splash_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/userstatus/user_status_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/splash/splash_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final StorageServiceSharedPreferences _sharedPreferences =
      locator<StorageServiceSharedPreferences>();
  SplashService _splashService = SplashService.create();
  UserService _userService = UserService.create();
  String _splashImage;
  String get splashImage => _splashImage;
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();

  final SnackBarView _snackbarView = new SnackBarView();

  loadData() async {
    getSplashImage();
  }

  getSplashImage() async {
    final token = await _storageServiceSharedPreferences.getToken();
    String languageFlag = "";
    languageFlag = await _sharedPreferences.getLanguage();
    final Response<SplashResponse> response =
        await runBusyFuture(_splashService.getSplashData())
            as Response<SplashResponse>;

    if (response != null && response.body.status == 200) {
      _splashImage = "${response.body.data[0].splashScreenImage}";
      notifyListeners();
      if (token != null && token.isNotEmpty) {
        getUserStatus();
      } else {
        Future.delayed(Duration(seconds: 3), () async {
          if (languageFlag != null && languageFlag.contains("true")) {
            await _navigationService.replaceWith(Routes.loginView);
          } else {
            await _navigationService.replaceWith(Routes.languageScreenView);
          }
        });
      }
    } else {}
  }

  getUserStatus() async {
    final token = await _storageServiceSharedPreferences.getToken();
    final Response<UserStatusResponse> response = await runBusyFuture(
            _userService.checkActiveStatus(token: "Bearer $token"))
        as Response<UserStatusResponse>;

    if (response.body.status == 200 && response.body.active) {
      await _navigationService.replaceWith(Routes.homeView);
    } else {
      _snackbarView.showErrorSnackBarUni(message: response.body.message);
      _storageServiceSharedPreferences.clearAllValues();
      await _navigationService.replaceWith(Routes.loginView);
    }
  }
}
