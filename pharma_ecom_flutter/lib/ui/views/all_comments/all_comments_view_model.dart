import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/allcomment/all_comment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/allcomment/all_comment_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class AllCommentsViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  AllCommentService _allCommentService = AllCommentService.create();
  Logger logger = getLogger("All Comment");
  AllCommentResponse _allCommentResponse;
  AllCommentResponse get allCommentResponse => _allCommentResponse;

  ProductDetailResponse _productDetailResponse;
  loadData(ProductDetailResponse productDetailResponse) async {
    _productDetailResponse = productDetailResponse;
    getProductComment(productDetailResponse.data.product.sId);
  }

  getProductComment(String _productId) async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<AllCommentResponse> response = await runBusyFuture(
            _allCommentService.getAllComment(
                id: _productId, token: "Bearer $token"));
        if (response.body.status == 200) {
          _allCommentResponse = response.body;
        } else {}
    }
  }

  onAddCommentPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.addCommentsView,
            arguments: AddCommentsViewArguments(
                productDetails: _productDetailResponse));
    }
  }

  navigateWishlist() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.wishListGridView);
    }
  }

  navigateCart() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.cartView);
    }
  }
}
