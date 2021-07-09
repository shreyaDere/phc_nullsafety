import 'package:basic_utils/basic_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class SocialMediaReactiveService with ReactiveServiceMixin {
  final StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  RxValue<bool> _hasLoggedIn = RxValue<bool>();
  bool get hasLoggedIn => _hasLoggedIn.value;

  Function callback;
  Function callbackForCart;
  void registerCallback(Function callback) => this.callback = callback;
  void registerCallbackForCart(Function callback) =>
      this.callbackForCart = callback;
  void callFunction() => callback();
  void callFunctionForCart() => callbackForCart();

  SocialMediaReactiveService() {
    getLoggedInStatus();
    listenToReactiveValues([_hasLoggedIn]);
  }

  void getLoggedInStatus() async {
    // _hasLoggedIn.value = await _socialMediaSignIn.isUserLoggedIn();
    String token = await _storageServiceSharedPreferences.getToken();
    _hasLoggedIn.value = StringUtils.isNotNullOrEmpty(token);
  }

  void userLoggedOut() {
    getLoggedInStatus();
  }

  void userLoggedInUsingEmail() {
    _hasLoggedIn.value = true;
  }

  void userLoggedOutUsingEmail() {
    _hasLoggedIn.value = false;
  }

  void userLoggedIn() {
    getLoggedInStatus();
  }
}
