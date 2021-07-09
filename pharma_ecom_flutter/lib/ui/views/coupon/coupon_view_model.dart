import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/coupon_code/coupon_code_service.dart';
import 'package:chopper/chopper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';

class CouponViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final ApplyCouponCodeService _applyCouponCodeService =
      locator<ApplyCouponCodeService>();
  String _couponCode;
  bool _selectCoupon = false;
  String get couponCode => _couponCode;
  bool get selectCoupon => _selectCoupon;

  Logger logger = getLogger("Coupon");
  int _selectedCheckBoxIndex = -1;
  int get selectedCheckBoxIndex => _selectedCheckBoxIndex;
  CouponData _couponsData;
  CouponData get couponData => _couponsData;
  CartService _couponService = CartService.create();
  Coupons _coupon;

  loadData() async {
    Response<CouponResponse> response =
        await runBusyFuture(_couponService.getCoupons());
    if (response != null && response.body.status == 200) {
      _couponsData = response.body.data;
    } else {}
  }

  updateCouponCode(String value) {
    _couponCode = value;
  }

  getCouponData() {
    for (var item in _couponsData.coupons) {
      if (item.code.contains(_couponCode)) {
        _coupon = item;
      }
    }
  }

  onSelectCoupon({int index}) {
    // _couponTitle.forEach((element) => element.isSelected = false);
    // _couponTitle[index].isSelected = true;
    if (index != _selectedCheckBoxIndex) {
      _selectedCheckBoxIndex = index;
      _couponCode = _couponsData.coupons[index].code;
      getCouponData();
      notifyListeners();
    }
  }

  popViewBack() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        logger.d(_coupon);
        _applyCouponCodeService.callFunction(coupon: _coupon);
        _navigationService.back();
    }
  }
}
