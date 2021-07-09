import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/prescription/prescription_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:built_collection/built_collection.dart';
import 'package:intl/intl.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/upload_prescription/upload_prescription_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/app_drawer/app_drawer_Service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class PrescriptionViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  PrescriptionService _prescriptionBnavService = PrescriptionService.create();
  BuiltList<PrescriptionData> _presciptionData = BuiltList<PrescriptionData>();
  BuiltList<PrescriptionData> get presciptionData => _presciptionData;
  BuiltList<PrescriptionData> _reversepresciptionData =
      BuiltList<PrescriptionData>();
  BuiltList<PrescriptionData> get reversepresciptionData =>
      _reversepresciptionData;
  final UploadPrescriptionReactiveService _uploadPrescriptionService =
      locator<UploadPrescriptionReactiveService>();
  AppDrawerTService _appDrawerTService = locator<AppDrawerTService>();
  final SnackBarView _snackbarView = new SnackBarView();
  String date;
  String _time;
  String get time => _time;
  final logger = getLogger("prescription");
  PrescriptionViewModel() {
    _uploadPrescriptionService.registerCallback(() => loadData());
    _appDrawerTService.registerCallback(() => loadData());
  }

  loadData() async {
    getPrescripionListData();
  }

  getPrescripionListData() async {
    String token = await _storageServiceSharedPreferences.getToken();
    _reversepresciptionData =
        (_reversepresciptionData.toBuilder()..clear()).build();
    Response<PresciptionResponse> response = await runBusyFuture(
        _prescriptionBnavService.getPrescriptionList(token: "Bearer $token"));
    if (response.body.status == 200) {
      logger.d(response.body.message);
      _presciptionData = response.body.data;
      if (_presciptionData != null && _presciptionData.isNotEmpty) {
        for (var item in _presciptionData.reversed) {
          _reversepresciptionData =
              (_reversepresciptionData.toBuilder()..add(item)).build();
        }
      }
      notifyListeners();
    } else {}
  }

  getDate(int index) {
    var arr = _reversepresciptionData[index].createdAt.split("T");
    var moonLanding = DateFormat.jm()
        .format(DateTime.parse("${_reversepresciptionData[index].createdAt}"));

    _time = moonLanding;
    return date = arr[0];
  }

  onUploadPrescriptionPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.uploadPrescriptionView);
    }
  }

  navigateToPrescriptionStatusView({int index}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.prescriptionStatusDetailView,
            arguments: PrescriptionStatusDetailViewArguments(
                presciptionData: _reversepresciptionData[index]));
    }
  }

  onYesClick({String id}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        deletePrescription(id: id);
    }
  }

  onNoClick() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
    }
  }

  deletePrescription({String id}) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        String token = await _storageServiceSharedPreferences.getToken();
        Response<UniversalResponse> response = await runBusyFuture(
            _prescriptionBnavService.deletePrescriptionDetail(
                token: "Bearer $token", id: id));

        if (response.body.status == 200) {
          _snackbarView.showSuccessSnackBarUni(
              message: getTranslatedValues("delete_msg"));
          _reversepresciptionData =
              (_reversepresciptionData.toBuilder()..clear()).build();
          loadData();
          notifyListeners();
        }
    }
  }
}
