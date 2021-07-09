import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get/get.dart' as GetPackage;

class SignUpCusomeWebViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  loadData() {
    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      if (url.contains("#access_token")) {
        succeed(url);
      }

      if (url.contains(
          "https://www.facebook.com/connect/login_success.html?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied")) {
        denied();
      }
    });
  }

  denied() {
    _navigationService.back();
  }

  succeed(String url) {
    var params = url.split("access_token=");

    var endparam = params[1].split("&");

    Navigator.pop(GetPackage.Get.context, endparam[0]);
  }
}
