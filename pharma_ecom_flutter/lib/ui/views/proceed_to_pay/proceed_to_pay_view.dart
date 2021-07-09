import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/proceed_to_pay/proceed_to_pay_view_model.dart';
import 'package:stacked/stacked.dart';

class ProceedToPayView extends StatelessWidget {
  final int orderType;
  final int deliveryType;
  final BuiltList<UniversalProduct> productList;
  final CartTotResponse cartTotResponse;
  final int uniqueCode;
  final PickUpAddressRequest pickupAddressRequest;
  const ProceedToPayView(
      {this.orderType,
      this.deliveryType,
      this.productList,
      this.cartTotResponse,
      this.uniqueCode,
      this.pickupAddressRequest,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProceedToPayViewModel>.reactive(
      viewModelBuilder: () => ProceedToPayViewModel(),
      onModelReady: (model) => model.loadData(
          orderType: orderType,
          deliveryType: deliveryType,
          productList: productList,
          cartTotResponse: cartTotResponse,
          uniqueCode: uniqueCode,
          pickupAddressRequest: pickupAddressRequest),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            iconTheme: new IconThemeData(color: COLOR_White),
            elevation: 0,
            bottomOpacity: 0.0,
            centerTitle: false,
            backgroundColor: COLOR_PRIMARY,
            title: Text(
              getTranslatedValues("Order_details"),
              textAlign: TextAlign.left,
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
          ),
          body: SafeArea(
            top: true,
            child: NetworkSensitive(
              currentWidget: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    model.isBusy
                        ? showLoader(context: context)
                        : ProceedToPayWidgetList()
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class ProceedToPayWidgetList extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BillingAddressContainer(),
          SizedBox(
            height: 15.0,
          ),
          viewModel.deliveryType == 0
              ? viewModel.address != null
                  ? Text(
                      "${viewModel.address.name}\n${viewModel.address.address1}\n${viewModel.address.city}, ${viewModel.address.country}\n${viewModel.address.zip}",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          color: COLOR_GRAY,
                        ),
                      ),
                    )
                  : Container()
              : viewModel.pickupAddressRequest != null
                  ? Text(
                      "${viewModel.pickupAddressRequest.pickupBranch.addressLine1} \n${viewModel.pickupAddressRequest.pickupBranch.addressLine2} \n${viewModel.pickupAddressRequest.pickupBranch.addressLine3} \n${viewModel.pickupAddressRequest.pickupBranch.area} , ${viewModel.pickupAddressRequest.pickupBranch.city} \n${viewModel.pickupAddressRequest.pickupBranch.phoneNumber}",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          color: COLOR_GRAY,
                        ),
                      ),
                    )
                  : Container(),

          SizedBox(
            height: 15.0,
          ),
          Divider(
            thickness: 1.5,
            color: COLOR_GRAY_BLACK,
          ),
          ActualBillingAddress(),
          viewModel.address != null
              ? Text(
                  "${viewModel.address.name}\n${viewModel.address.address1}\n${viewModel.address.city}, ${viewModel.address.country}\n${viewModel.address.zip}",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      fontSize: 14.0,
                      color: COLOR_GRAY,
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 15.0,
          ),
          Divider(
            thickness: 1.5,
            color: COLOR_GRAY_BLACK,
          ),
          SizedBox(
            height: 15.0,
          ),
          Visibility(
            visible: viewModel.deliveryType == 0,
            child: TimeSlotContainer(),
          ),
          SizedBox(
            height: 10.0,
          ),
          //),
          ProductList(),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            thickness: 1.5,
            color: COLOR_GRAY_BLACK,
          ),
          SizedBox(
            height: 15.0,
          ),
          ContainerApplyCoupon(),
          SizedBox(
            height: 20,
          ),

          PaymentDetailTile(
            paymentTitle: getTranslatedValues('unique_code_title'),
            amount: "${viewModel.cartTotResponse.data.checkout.uniqueCode}",
            isUniqueCode: true,
          ),
          //),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1.6,
            color: COLOR_GRAY_BLACK,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              getTranslatedValues('payment_detail_title'),
              textAlign: TextAlign.start,
              style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1.6,
            color: COLOR_GRAY_BLACK,
          ),
          SizedBox(
            height: 10,
          ),
          PaymentDetailTile(
            isPaymentTile: true,
            paymentTitle: getTranslatedValues('total_title'),
            amount:
                " ${viewModel.cartTotResponse.data.checkout.subtotal.toStringAsFixed(3)}",
          ),
          SizedBox(
            height: 5,
          ),
          Visibility(
            visible: !viewModel.isPickUp,
            child: PaymentDetailTile(
              isPaymentTile: true,
              paymentTitle: getTranslatedValues('shipping_title'),
              amount:
                  "+ ${viewModel.cartTotResponse.data.checkout.totalShipping}",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          PaymentDetailTile(
            isPaymentTile: true,
            paymentTitle: getTranslatedValues('total_discount'),
            amount:
                "- ${viewModel.cartTotResponse.data.checkout.discount.toStringAsFixed(3)}",
          ),
          SizedBox(
            height: 5,
          ),
          viewModel.cartTotResponse.data.checkout.totalTax.cgst == null
              ? Container()
              : PaymentDetailTile(
                  isPaymentTile: true,
                  paymentTitle: getTranslatedValues('cgst'),
                  amount:
                      "+ ${viewModel.cartTotResponse.data.checkout.totalTax.cgst.toStringAsFixed(3)}",
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.cgst == null
              ? Container()
              : SizedBox(
                  height: 5,
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.sgst == null
              ? Container()
              : PaymentDetailTile(
                  isPaymentTile: true,
                  paymentTitle: getTranslatedValues('sgst'),
                  amount:
                      "+ ${viewModel.cartTotResponse.data.checkout.totalTax.sgst.toStringAsFixed(3)}",
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.sgst == null
              ? Container()
              : SizedBox(
                  height: 5,
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.igst == null
              ? Container()
              : PaymentDetailTile(
                  isPaymentTile: true,
                  paymentTitle: getTranslatedValues('igst'),
                  amount:
                      "+ ${viewModel.cartTotResponse.data.checkout.totalTax.igst.toStringAsFixed(3)}",
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.igst == null
              ? Container()
              : SizedBox(
                  height: 5,
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.vat == null
              ? Container()
              : PaymentDetailTile(
                  isPaymentTile: true,
                  paymentTitle: getTranslatedValues('vat'),
                  amount:
                      "+ ${viewModel.cartTotResponse.data.checkout.totalTax.vat.toStringAsFixed(3)}",
                ),
          viewModel.cartTotResponse.data.checkout.totalTax.vat == null
              ? Container()
              : SizedBox(
                  height: 5,
                ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1.6,
            color: COLOR_GRAY_BLACK,
          ),
          SizedBox(
            height: 10,
          ),
          PaymentDetailTile(
              paymentTitle: getTranslatedValues('toPay'),
              amount:
                  " ${viewModel.cartTotResponse.data.checkout.total.toStringAsFixed(3)}",
              isTotalPay: true),
          SizedBox(
            height: 20,
          ),
          BtnProceedToPay(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class BillingAddressContainer extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            getTranslatedValues('select_address'),
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_PRIMARY,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
          ),
          viewModel.deliveryType == 0
              ? GestureDetector(
                  onTap: () => viewModel.onBillingAddressEditPressed(),
                  child: Container(
                    width: 20,
                    height: 20,
                    color: COLOR_GRAY_BLACK,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class ActualBillingAddress extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            getTranslatedValues('billing_address'),
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_PRIMARY,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
          ),
          viewModel.deliveryType == 1
              ? GestureDetector(
                  onTap: () => viewModel.onBillingAddTap(),
                  child: Container(
                    width: 20,
                    height: 20,
                    color: COLOR_GRAY_BLACK,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class TimeSlotContainer extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          getTranslatedValues("time_slot_for_delivery"),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: COLOR_PRIMARY,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        /*  Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField(
              key: Key(viewModel.shippingType.toString()),
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
              hint: Text(
                viewModel.shippingMethodHint,
                style: TextStyle(
                  fontSize: 14,
                  color: COLOR_GRAY_BLACK,
                ),
              ),
              items: viewModel.shippingMethodArray
                  .map((value) => DropdownMenuItem(
                        child: Text(value,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )),
                        value: value,
                      ))
                  .toList(),
              onChanged: (String value) =>
                  viewModel.updateShippingMethod(value),
              isExpanded: false,
              value: viewModel.shippingType,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),*/
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButtonFormField(
              key: Key(viewModel.dateSlot.toString()),
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
              hint: Text(
                getTranslatedValues(viewModel.dateSlotHint),
                style: TextStyle(
                  fontSize: 14,
                  color: COLOR_GRAY_BLACK,
                ),
              ),
              items: viewModel.dateSlotArray
                  .map((value) => DropdownMenuItem(
                        child: Text(value,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )),
                        value: value,
                      ))
                  .toList(),
              onChanged: (String value) => viewModel.updatedateSlot(value),
              isExpanded: false,
              value: viewModel.dateSlot,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<TimeSlotsCartTot>(
              hint: new Text(
                getTranslatedValues('time_slot'),
                style: TextStyle(
                  fontSize: 14,
                  color: COLOR_GRAY_BLACK,
                ),
              ),
              value: viewModel.timeSlotsCartTot,
              onChanged: (TimeSlotsCartTot timeSlotValue) {
                viewModel.updateTimeSlot(timeSlotValue);
              },
              items: viewModel.timeSlotArrayDd.map((TimeSlotsCartTot timeSlot) {
                return new DropdownMenuItem<TimeSlotsCartTot>(
                  value: timeSlot,
                  child: new Text(
                    timeSlot.time.startTime + " - " + timeSlot.time.endTime,
                    style: new TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(
          thickness: 1.5,
          color: COLOR_GRAY_BLACK,
        ),
        SizedBox(
          height: 8.0,
        )
      ],
    );
  }
}

class OrderList extends ViewModelWidget<ProceedToPayViewModel> {
  final int index;

  OrderList({this.index});
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(bottom: 10),
            child: CachedNetworkImage(
                errorWidget: (context, url, error) => Container(
                      child: SvgPicture.asset(
                        'assets/icons/prescription_placeholder.svg',
                      ),
                    ),
                placeholder: (context, url) => Container(
                      child: SvgPicture.asset(
                        'assets/icons/logo.svg',
                      ),
                    ),
                fadeInCurve: Curves.fastOutSlowIn,
                fit: BoxFit.fill,
                imageUrl:
                    "$BASE_URL${viewModel.cartTotResponse.data.checkout.lineItems[index].product.featuredImage}"),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      viewModel.getLanguageChangedText(
                          viewModel.cartTotResponse.data.checkout
                              .lineItems[index].product,
                          0),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                    RichText(
                      text: new TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          new TextSpan(
                            text: "Qty: ",
                            style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14)),
                          ),
                          new TextSpan(
                            text:
                                ' ${viewModel.cartTotResponse.data.checkout.lineItems[index].quantity}',
                            style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "BD ${viewModel.cartTotResponse.data.checkout.lineItems[index].lineTotal.toStringAsFixed(3)}",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14)),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductList extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: viewModel.cartTotResponse.data.checkout.lineItems.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return OrderList(index: index);
            }));
  }
}

class ContainerApplyCoupon extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return DottedBorder(
        padding: const EdgeInsets.all(15.0),
        color: COLOR_PRIMARY,
        strokeWidth: 1,
        dashPattern: [3, 4],
        child: GestureDetector(
          onTap: () => viewModel.orderType == 0
              ? viewModel.navigateToCouponPage()
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                viewModel.couponCode.length > 0
                    ? viewModel.couponCode[0]
                    : getTranslatedValues('select_coupon'),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: COLOR_GRAY,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}

class PaymentDetailTile extends ViewModelWidget<ProceedToPayViewModel> {
  final String paymentTitle;
  final String amount;
  final bool isTotalPay;
  final bool isUniqueCode;
  final bool isPaymentTile;
  PaymentDetailTile(
      {this.paymentTitle,
      this.amount,
      this.isTotalPay = false,
      this.isUniqueCode = false,
      this.isPaymentTile = false});
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return Padding(
      padding: isPaymentTile
          ? const EdgeInsets.only(left: 8.0, right: 8.0)
          : const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            paymentTitle,
            textAlign: TextAlign.start,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_GRAY,
                    //isUniqueCode ? COLOR_GRAY_BLACK : Colors.black,
                    fontWeight: isTotalPay
                        ? FontWeight.w700
                        : isUniqueCode
                            ? FontWeight.bold
                            : FontWeight.w400,
                    fontSize: isTotalPay
                        ? 14
                        : isUniqueCode
                            ? 14
                            : 12)),
          ),
          Text(
            amount,
            textAlign: TextAlign.start,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_GRAY,
                    //isUniqueCode ? COLOR_GRAY_BLACK : Colors.black,
                    fontWeight: isTotalPay
                        ? FontWeight.w700
                        : isUniqueCode
                            ? FontWeight.bold
                            : FontWeight.w400,
                    fontSize: isTotalPay
                        ? 14
                        : isUniqueCode
                            ? 16
                            : 12)),
          ),
        ],
      ),
    );
  }
}

class BtnProceedToPay extends ViewModelWidget<ProceedToPayViewModel> {
  @override
  Widget build(BuildContext context, ProceedToPayViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      minWidth: MediaQuery.of(context).size.width - 70,
      onPressed: () => viewModel.onBtnProceedToPayPressed(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getTranslatedValues("procced_to_pay"),
            style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.arrow_right_alt),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
