import 'dart:io';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dio/dio.dart' show Dio, FormData, Options;

class AddCommentsViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  PickedFile image;
  File _pickedImage;
  final picker = ImagePicker();
  String _comment = "";
  ProductDetailResponse _productDetails;
  String get comment => _comment;
  ProductDetailResponse get productDetails => _productDetails;
  Logger logger = getLogger("add comment");

  loadData({ProductDetailResponse productDetails}) {
    _productDetails = productDetails;
    notifyListeners();
  }

  updateComment(String value) {
    _comment = value;
  }

  Future getImageFromCamera() async {
    image = await picker.getImage(source: ImageSource.camera);
    _pickedImage = File(image.path);
    // await CompressImage.compress(
    //     imageSrc: _pickedImage.path, desiredQuality: 50);
    // print("FILE SIZE  AFTER: " + _pickedImage.lengthSync().toString());
    notifyListeners();
  }

  Future getImageFromGallary() async {
    image = await picker.getImage(source: ImageSource.gallery);
    _pickedImage = File(image.path);
    // await CompressImage.compress(
    //     imageSrc: _pickedImage.path,
    //     desiredQuality: 80); //desiredQuality ranges from 0 to 100
    notifyListeners();
  }

  onSubmitBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        //TODO:Navigate to no internet connection view
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        //TODO:uncomment to add login api
        final token = await _storageServiceSharedPreferences.getToken();
        FormData formData = FormData.fromMap({
          "rating": "1",
          "review": _comment != null ? _comment : "",
          "product_id": _productDetails.data.product.sId
        });
        Dio dio = new Dio();
        runBusyFuture(dio.post("$BASE_URL/api/reviews/create",
            data: formData,
            options: Options(
              headers: {"Authorization": "Bearer $token"},
            ))).then((response) async {
          if (response.data["status"] == 200) {
            logger.d(response.data["message"]);
            _navigationService.back();
          }
        });
    }
  }
}
