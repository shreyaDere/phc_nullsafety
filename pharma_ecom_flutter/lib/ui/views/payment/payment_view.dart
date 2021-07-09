import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/payment/payment_view_model.dart';
import 'package:stacked/stacked.dart';

class PaymentView extends StatelessWidget {
  final CheckoutCartTot checkout;
  final String date;
  final String timeSlot;
  const PaymentView({Key key, this.checkout, this.date, this.timeSlot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentViewModel>.reactive(
      viewModelBuilder: () => PaymentViewModel(),
      onModelReady: (model) =>
          model.loadData(checkout: checkout, date: date, timeSlot: timeSlot),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("payment"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontSize: 16,
            )),
          ),
          actions: <Widget>[
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          top: true,
          child: Stack(children: <Widget>[
            Container(
                margin: EdgeInsets.all(25.0), child: SettingsWidgetList()),
            Positioned(
                bottom: 0.0, right: 0.0, left: 0.0, child: SaveDetailsBtn()),
          ]),
        ),
      ),
    );
  }
}

class SettingsWidgetList extends ViewModelWidget<PaymentViewModel> {
  @override
  Widget build(BuildContext context, PaymentViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentDetail(),
        SizedBox(height: 25.0),
        Text(
          getTranslatedValues("payment_method"),
          style: TextStyle(color: Colors.black),
        ),
        // SizedBox(height: 25.0),
        // PaymentMethod("card_payment"),
        // SizedBox(height: 10.0),
        // PaymentMethod("CREDIMAX"),
        SizedBox(height: 10.0),
        Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
            ),
            child: Text(
              getTranslatedValues("tap_payment"),
            ))
      ],
    );
  }
}

class PaymentMethod extends ViewModelWidget<PaymentViewModel> {
  final String paymentMethod;
  final bool isCod;
  PaymentMethod(this.paymentMethod, {this.isCod = false});
  @override
  Widget build(BuildContext context, PaymentViewModel viewModel) {
    return ConfigurableExpansionTile(
      topBorderOn: false,
      bottomBorderOn: false,
      headerBackgroundColorEnd: Colors.transparent,
      headerBackgroundColorStart: Colors.transparent,
      headerExpanded: Container(
          width: MediaQuery.of(context).size.width - 50,
          alignment: Alignment.centerLeft,
          height: 50,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              border: Border.all(
            width: 1,
            color: COLOR_GRAY_BLACK,
          )),
          child: Row(
            children: [
              Expanded(
                  child: Text(getTranslatedValues(paymentMethod),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ))),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_up,
                  color: COLOR_GRAY_BLACK,
                ),
                onPressed: () {},
              )
            ],
          )),
      header: Container(
          width: MediaQuery.of(context).size.width - 50,
          alignment: Alignment.centerLeft,
          height: 50,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Text(getTranslatedValues(paymentMethod),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ))),
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: COLOR_GRAY_BLACK,
                ),
                onPressed: () {},
              )
            ],
          )),
      // children: [
      //   Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 250,
      //     child: ShowExpandedList(),
      //   )
      // ],
      // onExpansionChanged: (value) {
      //   viewModel.expansionHeader;
      // },
    );
  }
}

class PaymentDetail extends ViewModelWidget<PaymentViewModel> {
  @override
  Widget build(BuildContext context, PaymentViewModel viewModel) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK)),
      child: Column(
        children: [
          RowElement(
            isAmountTile: true,
            text: getTranslatedValues('amount_to_pay'),
            secondText: viewModel.checkoutCartTot.total.toStringAsFixed(2),
          ),
          //SizedBox(height: 8.0),
          // Divider(
          //   height: 1.0,
          //   color: COLOR_GRAY_BLACK,
          // ),
          // RowElement(
          //     text: getTranslatedValues('order_no'), secondText: "0000000000"),
        ],
      ),
    );
  }
}

class RowElement extends ViewModelWidget<PaymentViewModel> {
  final String text;
  final String secondText;
  final bool isAmountTile;
  RowElement({this.text, this.secondText, this.isAmountTile = false});
  @override
  Widget build(BuildContext context, PaymentViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:
                TextStyle(color: isAmountTile ? COLOR_PRIMARY : Colors.black),
          ),
          Text(
            secondText,
            style: GoogleFonts.nunitoSans(
              textStyle:
                  TextStyle(color: isAmountTile ? COLOR_PRIMARY : Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

class SaveDetailsBtn extends ViewModelWidget<PaymentViewModel> {
  @override
  Widget build(BuildContext context, PaymentViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: FlatButton(
        height: 50,
        color: COLOR_PRIMARY,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: COLOR_PRIMARY,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => viewModel.onSvaeDetailsPressed(),
        child: Text(
          getTranslatedValues("btn_save_details"),
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
