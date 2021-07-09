import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/services.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import 'package:go_sell_sdk_flutter/model/models.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/payment/payment.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/snackbar/snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

class PaymentViewModel extends ConnectivityAwareViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  PaymentService _paymentService = PaymentService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  final SnackBarView _snackbarView = new SnackBarView();

  Map<dynamic, dynamic> tapSDKResult;
  String responseID = "";
  String sdkStatus = "";
  String sdkErrorCode;
  String sdkErrorMessage;
  String sdkErrorDescription;

  String _time;
  String get time => _time;
  String _date;
  String get date => _date;
  String _userno;
  String get userno => _userno;

  CheckoutCartTot _checkout = new CheckoutCartTot();
  CheckoutCartTot get checkoutCartTot => _checkout;
  loadData({CheckoutCartTot checkout, String date, String timeSlot}) async {
    _date = date;
    _time = timeSlot;
    _checkout = checkout;
    _userno = await _storageServiceSharedPreferences.getContactNumber();
    configureSDK();
  }

  onSvaeDetailsPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        startSDK();
    }
  }

  orderPlaceApiCall() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        PaymentRequest request = new PaymentRequest();
        if (_checkout.deliveryType == 0) {
          request = PaymentRequest((r) => r
            ..dateSlot = _date
            ..timeSlotId = _time
            ..checkout = _checkout.toBuilder()
            ..paymentId = tapSDKResult['charge_id']
            ..paymentDetail.paymentStatus = tapSDKResult['status']
            ..paymentDetail.paymentId = tapSDKResult['charge_id']
            ..paymentDetail.paymentType = tapSDKResult['source_payment_type']);
        } else {
          request = PaymentRequest((r) => r
            ..checkout = _checkout.toBuilder()
            ..paymentId = tapSDKResult['charge_id']
            ..paymentDetail.paymentStatus = tapSDKResult['status']
            ..paymentDetail.paymentId = tapSDKResult['charge_id']
            ..paymentDetail.paymentType = tapSDKResult['source_payment_type']);
        }
        Response<PaymentResponse> response = await runBusyFuture(
            _paymentService.payment(body: request, token: "Bearer $token"));

        if (response.base.statusCode == 200) {
          await _navigationService.replaceWith(Routes.paymentSuccessfulView,
              arguments:
                  PaymentSuccessfulViewArguments(response: response.body));
        } else {
          _snackbarView.showErrorSnackBarUni(
              message: getTranslatedValues("error_msg"));
        }
    }
  }

// configure SDK
  Future<void> configureSDK() async {
    // configure app
    //configureApp();
    // sdk session configurations
    setupSDKSession();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> setupSDKSession() async {
    List<PaymentItem> temp = new List<PaymentItem>();
    for (var item in _checkout.lineItems) {
      temp.add(new PaymentItem(
          name: "${item.product.name}",
          amountPerUnit: 2, //item.product.salePrice.truncate(),
          quantity: Quantity(value: item.quantity),
          discount: {
            "type": "F",
            "value": 0,
            "maximum_fee": 0,
            "minimum_fee": 0
          },
          description: "${item.product.description}",
          taxes: [
            Tax(
                amount:
                    Amount(type: "F", value: 0, minimumFee: 0, maximumFee: 0),
                name: "tax1",
                description: "tax describtion")
          ],
          totalAmount: item.lineTotal.truncate()));
    }
    try {
      GoSellSdkFlutter.sessionConfigurations(
          trxMode: TransactionMode.PURCHASE,
          transactionCurrency: "kwd",
          amount: '1',
          customer: Customer(
              customerId:
                  "", // customer id is important to retrieve cards saved for this customer
              email: "test@test.com",
              isdNumber: "965",
              number: "$_userno",
              firstName: "test",
              middleName: "test",
              lastName: "test",
              metaData: null),
          paymentItems: temp,
          // List of taxes
          taxes: [
            Tax(
                amount:
                    Amount(type: "F", value: 10, minimumFee: 1, maximumFee: 10),
                name: "tax1",
                description: "tax describtion"),
            // Tax(
            //     amount:
            //         Amount(type: "F", value: 10, minimumFee: 1, maximumFee: 10),
            //     name: "tax1",
            //     description: "tax describtion")
          ],
          // List of shippnig
          shippings: [
            Shipping(
                name: "shipping 1",
                amount: 1,
                description: "shiping description 1"),
            // Shipping(
            //     name: "shipping 2",
            //     amount: 150,
            //     description: "shiping description 2")
          ],
          // Post URL
          postURL: "https://tap.company",
          // Payment description
          paymentDescription: "paymentDescription",
          // Payment Metadata
          paymentMetaData: {
            "a": "a meta",
            "b": "b meta",
          },
          // Payment Reference
          paymentReference: Reference(
              acquirer: "acquirer",
              gateway: "gateway",
              payment: "payment",
              track: "track",
              transaction: "trans_910101",
              order: "${_checkout.uniqueCode}"),
          // payment Descriptor
          paymentStatementDescriptor: "paymentStatementDescriptor",
          // Save Card Switch
          isUserAllowedToSaveCard: true,
          // Enable/Disable 3DSecure
          isRequires3DSecure: false,
          // Receipt SMS/Email
          receipt: Receipt(true, false),
          // Authorize Action [Capture - Void]
          authorizeAction: AuthorizeAction(
              type: AuthorizeActionType.CAPTURE, timeInHours: 10),
          // Destinations
          destinations: null,
          // merchant id
          merchantID: "6810259",
          // Allowed cards
          allowedCadTypes: CardType.CREDIT,
          applePayMerchantID: "applePayMerchantID",
          allowsToSaveSameCardMoreThanOnce: false,
          // pass the card holder name to the SDK
          cardHolderName: "Card Holder NAME",
          // disable changing the card holder name by the user
          allowsToEditCardHolderName: true,
          // select payments you need to show [Default is all, and you can choose between WEB-CARD-APPLEPAY ]
          paymentType: PaymentType.ALL,
          // Transaction mode
          sdkMode: SDKMode.Sandbox);
    } on PlatformException {
      // platformVersion = 'Failed to get platform version.';
    }

    tapSDKResult = {};
    notifyListeners();
  }

  Future<void> startSDK() async {
    //loaderController.start();
    // notifyListeners();

    tapSDKResult = await GoSellSdkFlutter.startPaymentSDK;
    //loaderController.stopWhenFull();
    notifyListeners();

    print('>>>> ${tapSDKResult['sdk_result']}');

    switch (tapSDKResult['sdk_result']) {
      case "SUCCESS":
        sdkStatus = "SUCCESS";
        orderPlaceApiCall();
        //handleSDKResult();
        notifyListeners();
        break;
      case "FAILED":
        sdkStatus = "FAILED";
        _snackbarView.showErrorSnackBarUni(
            message: getTranslatedValues("payment_fail"));
        handleSDKResult();
        notifyListeners();
        break;
      case "SDK_ERROR":
        _snackbarView.showErrorSnackBarUni(
            message: getTranslatedValues("time_out"));
        print('sdk error............');
        print(tapSDKResult['sdk_error_code']);
        print(tapSDKResult['sdk_error_message']);
        print(tapSDKResult['sdk_error_description']);
        print('sdk error............');
        sdkErrorCode = tapSDKResult['sdk_error_code'].toString();
        sdkErrorMessage = tapSDKResult['sdk_error_message'];
        sdkErrorDescription = tapSDKResult['sdk_error_description'];
        notifyListeners();
        break;

      case "NOT_IMPLEMENTED":
        sdkStatus = "NOT_IMPLEMENTED";
        notifyListeners();
        break;
    }
  }

  void handleSDKResult() {
    switch (tapSDKResult['trx_mode']) {
      case "CHARGE":
        printSDKResult('Charge');
        break;

      case "AUTHORIZE":
        printSDKResult('Authorize');
        break;

      case "SAVE_CARD":
        printSDKResult('Save Card');
        break;

      case "TOKENIZE":
        print('TOKENIZE token : ${tapSDKResult['token']}');
        print('TOKENIZE token_currency  : ${tapSDKResult['token_currency']}');
        print('TOKENIZE card_first_six : ${tapSDKResult['card_first_six']}');
        print('TOKENIZE card_last_four : ${tapSDKResult['card_last_four']}');
        print('TOKENIZE card_object  : ${tapSDKResult['card_object']}');
        print('TOKENIZE card_exp_month : ${tapSDKResult['card_exp_month']}');
        print('TOKENIZE card_exp_year    : ${tapSDKResult['card_exp_year']}');

        responseID = tapSDKResult['token'];
        break;
    }
  }

  void printSDKResult(String trx_mode) {
    print('$trx_mode status                : ${tapSDKResult['status']}');
    print('$trx_mode id               : ${tapSDKResult['charge_id']}');
    print('$trx_mode  description        : ${tapSDKResult['description']}');
    print('$trx_mode  message           : ${tapSDKResult['message']}');
    print('$trx_mode  card_first_six : ${tapSDKResult['card_first_six']}');
    print('$trx_mode  card_last_four   : ${tapSDKResult['card_last_four']}');
    print('$trx_mode  card_object         : ${tapSDKResult['card_object']}');
    print('$trx_mode  card_brand          : ${tapSDKResult['card_brand']}');
    print('$trx_mode  card_exp_month  : ${tapSDKResult['card_exp_month']}');
    print('$trx_mode  card_exp_year: ${tapSDKResult['card_exp_year']}');
    print('$trx_mode  acquirer_id  : ${tapSDKResult['acquirer_id']}');
    print(
        '$trx_mode  acquirer_response_code : ${tapSDKResult['acquirer_response_code']}');
    print(
        '$trx_mode  acquirer_response_message: ${tapSDKResult['acquirer_response_message']}');
    print('$trx_mode  source_id: ${tapSDKResult['source_id']}');
    print('$trx_mode  source_channel     : ${tapSDKResult['source_channel']}');
    print('$trx_mode  source_object      : ${tapSDKResult['source_object']}');
    print(
        '$trx_mode source_payment_type : ${tapSDKResult['source_payment_type']}');
    responseID = tapSDKResult['charge_id'];
  }
}
