import 'package:injectable/injectable.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class SelectAddressTService with ReactiveServiceMixin {
  Function callback;
  UniversalResponseAddress address;

  void registerCallback(Function callback) => this.callback = callback;
  void callFunction({UniversalResponseAddress address}) => callback(address);
}
