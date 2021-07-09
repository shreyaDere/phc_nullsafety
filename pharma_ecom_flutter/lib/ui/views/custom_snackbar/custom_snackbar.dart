import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get/route_manager.dart';

/// The type of snackbar to show
enum SnackbarType { redAndWhite, greenAndWhite, blackAndWhite }

void setupSnackbarUi() {
  final service = locator<SnackbarService>();
  service.registerCustomSnackbarConfig(
    variant: SnackbarType.greenAndWhite,
    config: SnackbarConfig(
      backgroundColor: Color(0XFF00b100),
      textColor: Colors.white,
      borderRadius: 0,
      dismissDirection: SnackDismissDirection.HORIZONTAL,
    ),
  );

  service.registerCustomSnackbarConfig(
      variant: SnackbarType.redAndWhite,
      config: SnackbarConfig(
        backgroundColor: Color(0XFFFF5E5E),
        textColor: Colors.white,
        borderRadius: 0,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
      ));

  service.registerCustomSnackbarConfig(
      variant: SnackbarType.blackAndWhite,
      config: SnackbarConfig(
        backgroundColor: Colors.black,
        textColor: Colors.white,
        borderRadius: 0,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
      ));
}
