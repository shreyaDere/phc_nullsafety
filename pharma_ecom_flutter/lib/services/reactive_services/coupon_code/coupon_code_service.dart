import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';

@lazySingleton
class ApplyCouponCodeService with ReactiveServiceMixin {
  Function callback;
  Coupons coupon;
  void registerCallback(Function callback) => this.callback = callback;
  void callFunction({Coupons coupon}) => callback(coupon);
}
