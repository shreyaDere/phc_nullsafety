import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/get_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/paymentmetod/payment_method.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/address/select_address_sercive.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/coupon_code/coupon_code_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/cart/cart_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/address/address.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/payment/payment.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:intl/intl.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class ProceedToPayViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  final SnackBarView _snackbarView = new SnackBarView();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  ApplyCouponCodeService _applyCouponCodeService =
      locator<ApplyCouponCodeService>();
  SelectAddressTService _selectAddressTService =
      locator<SelectAddressTService>();
  AddressService _addressService = AddressService.create();
  PaymentService _paymentService = PaymentService.create();
  CartService _cartService = CartService.create();
  List<String> dateSlotArray = new List<String>();
  var logger = getLogger("proceed to pay");

  String temp;
  bool _isPickUp;
  String _timeSlot;
  String get timeSlot => _timeSlot;
  String _shippingMethodId;
  String get shippingMethodId => _shippingMethodId;
  String _dateSlot;
  String get dateSlot => _dateSlot;
  String _shippingType;
  String get shippingType => _shippingType;

  String _shippingMethodHint = "Shipping method";
  String get shippingMethodHint => _shippingMethodHint;
  String _dateSlotHint = "date";
  String get dateSlotHint => _dateSlotHint;
  bool get isPickUp => _isPickUp;
  DateTime dateTime = DateTime.now();
  var myFormat = DateFormat('d-MM-yyyy');

  UniversalResponseAddress _address;
  UniversalResponseAddress get address => _address;
  BuiltList<String> _couponCode;
  BuiltList<String> get couponCode => _couponCode;
  int _uniqueCode;
  int get uniqueCode => _uniqueCode;
  int _orderType;
  int get orderType => _orderType;
  PickUpAddressRequest _pickupAddressRequest;
  PickUpAddressRequest get pickupAddressRequest => _pickupAddressRequest;
  int _deliveryType;
  int get deliveryType => _deliveryType;
  BuiltList<UniversalProduct> _productList;
  CartTotResponse _cartTotResponse;
  CartTotResponse get cartTotResponse => _cartTotResponse;
  bool _chekReward = false;
  List<TimeSlotsCartTot> _timeSlotArrayDd = new List<TimeSlotsCartTot>();
  List<TimeSlotsCartTot> get timeSlotArrayDd => _timeSlotArrayDd;

  List<ShippingMethods> _shippingMethodAr = new List<ShippingMethods>();
  List<ShippingMethods> get shippingMethodAr => _shippingMethodAr;

  TimeSlotsCartTot _selectedTimeSLot = new TimeSlotsCartTot();
  TimeSlotsCartTot get timeSlotsCartTot => _selectedTimeSLot;

  ShippingMethods _shippingMethod = new ShippingMethods();
  ShippingMethods get shippingMethod => _shippingMethod;

  PaymentMethodResponse _shippingTypeResponse;

  List<String> _shippingMethodArray = new List<String>();
  List<String> get shippingMethodArray => _shippingMethodArray;
  String lang;
  ProceedToPayViewModel() {
    _isPickUp = false;
    _selectAddressTService.registerCallback((UniversalResponseAddress address) {
      _address = address;
      notifyListeners();
    });
    _applyCouponCodeService.registerCallback((Coupons coupon) {
      _couponCode = (_couponCode.toBuilder()..add(coupon.code)).build();
      if (_orderType == 1) {
        getCalTot();
      } else {
        getCalTotPre();
      }
      notifyListeners();
    });
  }

  loadData(
      {int orderType,
      int deliveryType,
      BuiltList<UniversalProduct> productList,
      CartTotResponse cartTotResponse,
      int uniqueCode,
      PickUpAddressRequest pickupAddressRequest}) async {
    _orderType = orderType;
    _deliveryType = deliveryType;
    _productList = productList;
    _cartTotResponse = cartTotResponse;
    _couponCode = cartTotResponse.data.checkout.coupons;
    _uniqueCode = uniqueCode;
    _chekReward =
        cartTotResponse.data.checkout.rewardPointsApplied > 0 ? true : false;
    _pickupAddressRequest = pickupAddressRequest;
    lang = await _storageServiceSharedPreferences.getLanguage();
    getPaymentMethods();
    getBillingAddress();
    callGetApiSequence();
  }

  callGetApiSequence() {
    if (_orderType == 1 && deliveryType == 0) {
      getAllAddress();
    } else if (_orderType == 1 && deliveryType == 1) {
      getCalTot();
    } else if (_orderType == 0 && deliveryType == 0) {
      getAllAddressPre();
    } else if (_orderType == 0 && deliveryType == 1) {
      getCalTotPre();
    }
  }

  getAllAddress() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<GetAddressResponse> response = await runBusyFuture(
        _addressService.getAllAddress(token: "Bearer $token"));
    if (response.body.status == 200) {
      for (UniversalResponseAddress address in response.body.data) {
        if (address.defaultAddress == 1) {
          _address = address;
          notifyListeners();
        }
      }
      getCalTot();
    } else {}
  }

  getBillingAddress() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<GetAddressResponse> response = await runBusyFuture(
        _addressService.getAllAddress(token: "Bearer $token"));
    if (response.body.status == 200) {
      for (UniversalResponseAddress address in response.body.data) {
        if (address.defaultAddress == 1) {
          _address = address;
          notifyListeners();
        }
      }
    } else {}
  }

  getCalTotPre() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        CartTotRequest request = new CartTotRequest();
        if (deliveryType == 0) {
          request = CartTotRequest((r) => r
            ..billingAddress = _address.toBuilder()
            ..shippingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..applyRewards = _chekReward ? 1 : 0
            ..prescriptionId =
                _cartTotResponse.data.checkout.userPrescription.id
            ..uniqueCode = _uniqueCode
            ..orderType = _orderType
            ..cartItems = _productList.toBuilder());
        } else {
          request = CartTotRequest((r) => r
            ..orderType = _orderType
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..applyRewards = _chekReward ? 1 : 0
            ..uniqueCode = _uniqueCode
            ..pickupUser.name = _pickupAddressRequest.pickupPerson
            ..pickupUser.phoneNumber =
                _pickupAddressRequest.pickupMobNumber.toString()
            ..pickupAddress = _pickupAddressRequest.pickupBranch.sId
            ..prescriptionId =
                _cartTotResponse.data.checkout.userPrescription.id
            ..cartItems = _productList.toBuilder());
        }

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));

        if (response.statusCode == 200) {
          _cartTotResponse = response.body;
          dateSlotArray.clear();
          _timeSlotArrayDd.clear();

          for (var item in _cartTotResponse.data.slots) {
            dateSlotArray.add(item.date);
          }
          notifyListeners();
        }
    }
  }

  getCalTotFinal() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        CartTotRequest request = new CartTotRequest();
        if (deliveryType == 0 && _orderType == 1 && _address != null) {
          request = CartTotRequest((r) => r
            ..billingAddress = _address.toBuilder()
            ..shippingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..applyRewards = _chekReward ? 1 : 0
            ..uniqueCode = _uniqueCode
            ..shippingId = "608d1f9e49a3d633be838ccf" //_shippingMethodId
            ..orderType = _orderType
            ..cartItems = _productList.toBuilder());
        } else if (deliveryType == 1 && _orderType == 1 && _address != null) {
          request = CartTotRequest((r) => r
            ..orderType = _orderType
            ..billingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..shippingAddress = new UniversalResponseAddress().toBuilder()
            ..uniqueCode = _uniqueCode
            ..pickupUser.name = _pickupAddressRequest.pickupPerson
            ..pickupUser.phoneNumber =
                _pickupAddressRequest.pickupMobNumber.toString()
            ..pickupAddress = _pickupAddressRequest.pickupBranch.sId
            ..applyRewards = _chekReward ? 1 : 0
            ..cartItems = _productList.toBuilder());
        } else if (deliveryType == 0 && _orderType == 0 && _address != null) {
          request = CartTotRequest((r) => r
            ..billingAddress = _address.toBuilder()
            ..shippingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..applyRewards = _chekReward ? 1 : 0
            ..shippingId = "608d1f9e49a3d633be838ccf" //_shippingMethodId
            ..orderType = _orderType
            ..uniqueCode = _uniqueCode
            ..prescriptionId =
                _cartTotResponse.data.checkout.userPrescription.id
            ..cartItems = _productList.toBuilder());
        } else if (deliveryType == 1 && _orderType == 0 && _address != null) {
          request = CartTotRequest((r) => r
            ..orderType = _orderType
            ..applyRewards = _chekReward ? 1 : 0
            ..uniqueCode = _uniqueCode
            ..cartItems = _productList.toBuilder()
            ..prescriptionId =
                _cartTotResponse.data.checkout.userPrescription.id
            ..pickupAddress = _pickupAddressRequest.pickupBranch.sId
            ..billingAddress = _address.toBuilder()
            ..shippingAddress = new UniversalResponseAddress().toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..pickupUser.name = _pickupAddressRequest.pickupPerson
            ..pickupUser.phoneNumber =
                _pickupAddressRequest.pickupMobNumber.toString());
        } else {
          _snackbarView.showErrorSnackBarUni(
              message: getTranslatedValues("msg_select_address"));
        }

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));
        logger.d(response);
        if (response.statusCode == 200) {
          if (_dateSlot != null &&
              _timeSlot != null &&
              deliveryType == 0 &&
              _address != null) {
            //&&
            // _shippingMethodId.isNotEmpty
            await _navigationService.navigateTo(Routes.paymentView,
                arguments: PaymentViewArguments(
                    checkout: response.body.data.checkout,
                    date: _dateSlot,
                    timeSlot: _timeSlot));
          } else if (deliveryType == 1 && _address != null) {
            await _navigationService.navigateTo(Routes.paymentView,
                arguments: PaymentViewArguments(
                  checkout: response.body.data.checkout,
                ));
          } else {
            _snackbarView.showErrorSnackBarUni(
                message: getTranslatedValues("appropriate_details"));
          }
          // _cartTotResponse = response.body;
          // return _cartTotResponse;
        } else {
          _snackbarView.showErrorSnackBarUni(
              message: getTranslatedValues("error_msg"));
        }
    }
  }

  getPaymentMethods() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<PaymentMethodResponse> response = await runBusyFuture(
        _paymentService.getPaymentMethods(token: "Bearer $token"));
    if (response.body.status == 200) {
      _shippingTypeResponse = response.body;
      shippingMethodArray.clear();
      _shippingMethodAr.clear();
      for (ShippingMethods item in response.body.data.shippingMethods) {
        shippingMethodArray.add(item.name);
      }
      notifyListeners();
    } else {}
  }

  getAllAddressPre() async {
    final token = await _storageServiceSharedPreferences.getToken();
    Response<GetAddressResponse> response = await runBusyFuture(
        _addressService.getAllAddress(token: "Bearer $token"));
    if (response.body.status == 200) {
      for (UniversalResponseAddress address in response.body.data) {
        if (address.defaultAddress == 1) {
          _address = address;
          notifyListeners();
        }
      }
      getCalTotPre();
    } else {}
  }

  updateTimeSlot(TimeSlotsCartTot value) {
    _timeSlot = value.id;
    _selectedTimeSLot = value;
    notifyListeners();
  }

  updateShippingMethod(String value) {
    _shippingType = value;
    for (var item in _shippingTypeResponse.data.shippingMethods) {
      if (item.name == value) {
        _shippingMethodId = item.id;
      }
    }
  }

  updatedateSlot(String value) {
    _timeSlotArrayDd.clear();
    notifyListeners();
    for (var item in _cartTotResponse.data.slots) {
      if (item.date == value) {
        for (var item in item.time) {
          if (item.capacity != 0) {
            _selectedTimeSLot = new TimeSlotsCartTot();
            _timeSlotArrayDd.clear();
            _timeSlot = item.id;
            _selectedTimeSLot = item;
          } else {
            _timeSlotArrayDd.clear();
            _timeSlot = null;
            _selectedTimeSLot = new TimeSlotsCartTot();
            notifyListeners();
          }
        }

        // _selectedTimeSLot = item.time[0];

        for (var itemtime in item.time) {
          if (itemtime.capacity != 0) {
            timeSlotArrayDd.add(itemtime);
          }
        }
        notifyListeners();
      }
    }
    _dateSlot = value;
  }

  DateTime initialDate() {
    return DateTime(DateTime.now().year);
  }

  getCalTot() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        CartTotRequest request = new CartTotRequest();
        if (deliveryType == 0) {
          request = CartTotRequest((r) => r
            ..billingAddress = _address.toBuilder()
            ..shippingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..applyRewards = _chekReward ? 1 : 0
            ..uniqueCode = _uniqueCode
            ..orderType = _orderType
            ..shippingId = "608d1f9e49a3d633be838ccf"
            ..cartItems = _productList.toBuilder());
        } else {
          request = CartTotRequest((r) => r
            ..orderType = _orderType
            ..billingAddress = _address.toBuilder()
            ..deliveryType = _deliveryType
            ..coupons = _couponCode.toBuilder()
            ..pickupUser.name = _pickupAddressRequest.pickupPerson
            ..pickupUser.phoneNumber =
                _pickupAddressRequest.pickupMobNumber.toString()
            ..applyRewards = _chekReward ? 1 : 0
            ..uniqueCode = _uniqueCode
            ..pickupAddress = _pickupAddressRequest.pickupBranch.sId
            ..prescriptionId =
                _cartTotResponse.data.checkout.userPrescription.id
            ..cartItems = _productList.toBuilder());
        }

        Response<CartTotResponse> response = await runBusyFuture(
            _cartService.getCartTotal(token: "Bearer $token", body: request));
        if (response.statusCode == 200) {
          logger.d(
              "TotalShipping:-  ${response.body.data.checkout.totalShipping}");
          _cartTotResponse = response.body;
          for (var item in _cartTotResponse.data.slots) {
            dateSlotArray.add(item.date);
            logger.d(item.date);
          }
          notifyListeners();
        }
    }
  }

  onBillingAddressEditPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (_deliveryType == 0) {
          await _navigationService.navigateTo(Routes.selectAddressView,
              arguments: SelectAddressViewArguments(proceesToPayFalg: true));
        } else {
          _navigationService.back();
        }
        break;
    }
  }

  navigateToCouponPage() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        await _navigationService.navigateTo(Routes.couponView);
    }
  }

  onBtnProceedToPayPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        getCalTotFinal();
    }
  }

  onBillingAddTap() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (_deliveryType == 1) {
          await _navigationService.navigateTo(Routes.selectAddressView,
              arguments: SelectAddressViewArguments(proceesToPayFalg: true));
        }
        break;
    }
  }

  String getLanguageChangedText(var listItem, int type) {
    /*
        0- name,
        1- description,
        2- specification
        3- overview
         */
    String temp = "";
    if (lang == "en") {
      temp = type == 0
          ? listItem.name
          : type == 1
              ? listItem.description
              : type == 2
                  ? listItem.specifications
                  : listItem.overview;
    } else if (lang == "ar") {
      temp = type == 0
          ? listItem.nameAr
          : type == 1
              ? listItem.descriptionAr
              : type == 2
                  ? listItem.specificationsAr
                  : listItem.overviewAr;
      //listItem.nameAr;
    }
    return temp == null
        ? type == 0
            ? listItem.name
            : type == 1
                ? listItem.description
                : type == 2
                    ? listItem.specifications
                    : listItem.overview
        : temp;
  }
}
