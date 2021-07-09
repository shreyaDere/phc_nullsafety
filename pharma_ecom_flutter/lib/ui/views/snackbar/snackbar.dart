import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/custom_snackbar/custom_snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class SnackBarView {
  // SnackBarView() {}
  final SnackbarService _snackbarService = locator<SnackbarService>();
  void showErrorSnackBarUni({String message}) {
    _snackbarService.showCustomSnackBar(
      message: message,
      title: getTranslatedValues("error"),
      duration: Duration(seconds: 2),
      onTap: (_) {
        print('snackbar tapped');
      },
      mainButtonTitle: getTranslatedValues("ok"),
      onMainButtonTapped: () => print('Undo the action!'),
      variant: SnackbarType.redAndWhite,
    );
  }

  void showSuccessSnackBarUni({String message}) {
    _snackbarService.showCustomSnackBar(
      message: message,
      title: getTranslatedValues("success"),
      duration: Duration(seconds: 2),
      onTap: (_) {
        print('snackbar tapped');
      },
      mainButtonTitle: getTranslatedValues("ok"),
      onMainButtonTapped: () => print('Undo the action!'),
      variant: SnackbarType.greenAndWhite,
    );
  }
}
