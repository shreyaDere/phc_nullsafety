import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/payment_successful/payment_successful_view_model.dart';
import 'package:stacked/stacked.dart';

class PaymentSuccessfulView extends StatelessWidget {
  final PaymentResponse response;
  const PaymentSuccessfulView({Key key, this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentSuccessfulViewModel>.reactive(
      viewModelBuilder: () => PaymentSuccessfulViewModel(),
      onModelReady: (model) => model.loadData(response: response),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[
                PaymentWidgetList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentWidgetList extends ViewModelWidget<PaymentSuccessfulViewModel> {
  @override
  Widget build(BuildContext context, PaymentSuccessfulViewModel viewModel) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/payment_successful.svg',
          height: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          getTranslatedValues('sucess_msg'),
          style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: COLOR_PRIMARY)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(getTranslatedValues('sub_title_msg'),
            textAlign: TextAlign.center,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: COLOR_GRAY_BLACK))),
        SizedBox(
          height: 25,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Text(getTranslatedValues("amount_paid"),
        //         style: GoogleFonts.nunitoSans(
        //             textStyle: TextStyle(
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.black))),
        //     Text("00.00",
        //         style: GoogleFonts.nunitoSans(
        //             textStyle: TextStyle(
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.black))),
        //   ],
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(getTranslatedValues('order_id'),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))),
            Text(viewModel.response.result.orderId.toString(),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SubmitOk()
      ],
    ));
  }
}

class SubmitOk extends ViewModelWidget<PaymentSuccessfulViewModel> {
  @override
  Widget build(BuildContext context, PaymentSuccessfulViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20.0),
      child: FlatButton(
        height: 50,
        color: COLOR_PRIMARY,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: COLOR_PRIMARY,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => viewModel.onSubmitBtnPressed(),
        child: Text(
          getTranslatedValues("ok"),
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
