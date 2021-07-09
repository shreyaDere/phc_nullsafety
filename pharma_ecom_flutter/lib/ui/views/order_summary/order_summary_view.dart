import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/order_summary/order_summary_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';

import 'package:stacked/stacked.dart';

class OrderSummeryView extends StatelessWidget {
  final int orderType;
  final int orderId;
  OrderSummeryView({this.orderId, this.orderType, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderSummeryViewModel>.reactive(
      viewModelBuilder: () => OrderSummeryViewModel(),
      onModelReady: (model) =>
          model.loadData(orderType: orderType, orderId: orderId),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            getTranslatedValues("order_summery"),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[
                model.orderDetailResponse.orders != null
                    ? PrescriptedDeliveryOrderSummeryWidgetList()
                    : Container(),
                model.isBusy ? showLoader(context: context) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PrescriptedDeliveryOrderSummeryWidgetList
    extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return viewModel.orderDetailResponse != null
        ? SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowOrderTile(),
                  SizedBox(
                    height: 10,
                  ),
                  RowOfRateAndStatus(),
                  SizedBox(
                    height: 15,
                  ),
                  Visibility(
                      visible: viewModel.orderType == 0,
                      child: PrescriptionViewContainer()),
                  Divider(
                    thickness: 1.6,
                    color: COLOR_GRAY_BLACK,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: viewModel
                              .orderDetailResponse.orders.lineItems.length,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return OrderList(viewModel
                                .orderDetailResponse.orders.lineItems[index]);
                          })),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1.6,
                    color: COLOR_GRAY_BLACK,
                  ),
                  viewModel.orderDetailResponse.orders.coupons.isNotEmpty &&
                          viewModel.orderDetailResponse.orders.coupons.length >
                              0
                      ? SizedBox(
                          height: 25,
                        )
                      : Container(),
                  viewModel.orderDetailResponse.orders.coupons.isNotEmpty &&
                          viewModel.orderDetailResponse.orders.coupons.length >
                              0
                      ? ContainerApplyCoupon()
                      : Container(),
                  SizedBox(
                    height: 25,
                  ),
                  UniqueCodeContainer(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      getTranslatedValues('payment_detail_title'),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14)),
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
                    height: 8,
                  ),
                  PaymentDetailTile(
                      isPaymentTile: true,
                      paymentTitle: getTranslatedValues('total_title'),
                      amount:
                          "${viewModel.orderDetailResponse.orders.subtotal.toStringAsFixed(3)}"),
                  SizedBox(
                    height: 4,
                  ),
                  PaymentDetailTile(
                    isPaymentTile: true,
                    paymentTitle: getTranslatedValues('shipping_title'),
                    amount: viewModel.orderDetailResponse.orders.totalShipping
                        .toStringAsFixed(3)
                        .toString(),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PaymentDetailTile(
                    isPaymentTile: true,
                    paymentTitle: getTranslatedValues('coupon_title'),
                    amount:
                        "- ${viewModel.orderDetailResponse.orders.discount.toStringAsFixed(3)}",
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PaymentDetailTile(
                    isPaymentTile: true,
                    paymentTitle: getTranslatedValues('reward_title'),
                    amount:
                        "- ${viewModel.orderDetailResponse.orders.rewardPointsApplied.toStringAsFixed(3)}",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 1.6,
                    color: COLOR_GRAY_BLACK,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  PaymentDetailTile(
                      paymentTitle: getTranslatedValues('toPay'),
                      amount: viewModel.orderDetailResponse.orders.total
                          .toStringAsFixed(3)
                          .toString(),
                      isTotalPay: true),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonRow(),
                ],
              ),
            ),
          )
        : Container();
  }
}

class RowOfRateAndStatus extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return Row(
      children: [
        Visibility(
          visible: viewModel.orderDetailResponse.orders.deliveryType == 0 &&
              viewModel.orderDetailResponse.orders.orderStatus == 4,
          child: GestureDetector(
            onTap: () => viewModel.onRateOrderClick(),
            child: Text(
              getTranslatedValues('rate_order'),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    color: COLOR_PRIMARY,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Spacer(),
        Text(
          viewModel.getOrderStatus(
              status: viewModel.orderDetailResponse.orders.orderStatus),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                fontSize: 14,
                color: COLOR_PRIMARY,
                fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}

class RowOrderTile extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: new TextSpan(
            text: '',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              new TextSpan(
                text: getTranslatedValues("order_n"),
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              new TextSpan(
                  text: ': ${viewModel.orderDetailResponse.orders.orderId}'),
            ],
          ),
        ),
        Text(
          getTranslatedValues("date") + ": " + viewModel.getDate(),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}

class PrescriptionViewContainer extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslatedValues('title_uploded_pre'),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 140,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount:
                  viewModel.orderDetailResponse.orders.prescriptionImage.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 0.0, right: 8),
                  child: CachedNetworkImage(
                      errorWidget: (context, url, error) => Container(
                            child: SvgPicture.asset(
                              'assets/icons/prescription_placeholder.svg',
                            ),
                          ),
                      placeholder: (context, url) => Container(
                            child: SvgPicture.asset(
                              'assets/icons/prescription_placeholder.svg',
                            ),
                          ),
                      fadeInCurve: Curves.fastOutSlowIn,
                      fit: BoxFit.cover,
                      imageUrl: BASE_URL +
                          "/assets/${viewModel.orderDetailResponse.orders.prescriptionImage[index]}"),
                );
              }),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          viewModel.orderDetailResponse.orders.prescriptionTitle,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        Divider(
          thickness: 1.6,
          color: COLOR_GRAY_BLACK,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          viewModel.orderDetailResponse.orders.prescriptionComment,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class ContainerApplyCoupon extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return viewModel.orderDetailResponse.orders.coupons[0].isEmpty
        ? Container()
        : Container(
            height: 50,
            child: DottedBorder(
                padding: const EdgeInsets.all(15.0),
                color: COLOR_PRIMARY,
                strokeWidth: 1,
                dashPattern: [3, 2],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      viewModel.orderDetailResponse.orders.coupons[0],
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: COLOR_GRAY_BLACK,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          );
  }
}

class UniqueCodeContainer extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return Column(
      children: [
        PaymentDetailTile(
          paymentTitle: getTranslatedValues('unique_code_title'),
          amount: "${viewModel.orderDetailResponse.orders.pickupUser.otp}",
          isUniqueCode: true,
        ),
        SizedBox(
          height: 6,
        ),
        Divider(
          thickness: 1.6,
          color: COLOR_GRAY_BLACK,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class OrderList extends ViewModelWidget<OrderSummeryViewModel> {
  final LineItemOrder product;
  OrderList(this.product);
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
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
                        'assets/icons/prescription_placeholder.svg',
                      ),
                    ),
                fadeInCurve: Curves.fastOutSlowIn,
                fit: BoxFit.fill,
                imageUrl: "$BASE_URL${product.product.featuredImage}"),
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
                      viewModel.getLanguageChangedText(product.product, 0),
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
                            text: "${product.quantity}",
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
                        "", //"${viewModel.orders.lineItems[index].product.regularPrice} BHD",
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

class PaymentDetailTile extends ViewModelWidget<OrderSummeryViewModel> {
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
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
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
                    color: isUniqueCode ? COLOR_GRAY_BLACK : Colors.black,
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

class ButtonRow extends ViewModelWidget<OrderSummeryViewModel> {
  @override
  Widget build(BuildContext context, OrderSummeryViewModel viewModel) {
    return Row(
      children: [
        Visibility(
          visible: viewModel.orderDetailResponse.orders.deliveryType == 0 &&
              viewModel.orderDetailResponse.orders.orderStatus >= 1 &&
              viewModel.orderDetailResponse.orders.orderStatus <= 4,
          child: Expanded(
              flex: 1,
              child: FlatButton(
                height: 50,
                color: COLOR_PRIMARY,
                splashColor: COLOR_PRIMARY,
                onPressed: () => viewModel.onTrackClick(),
                child: Center(
                  child: Text(
                    getTranslatedValues("btn_track_order"),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ),
              )),
        ),
        Visibility(
          visible: viewModel.orderDetailResponse.orders.deliveryType == 0 &&
              viewModel.orderDetailResponse.orders.orderStatus >= 1 &&
              viewModel.orderDetailResponse.orders.orderStatus <= 4,
          child: SizedBox(
            width: 10,
          ),
        ),
        Visibility(
          visible: viewModel.orderDetailResponse.orders.orderStatus != 4 &&
              viewModel.orderDetailResponse.orders.orderStatus != 5,
          child: Expanded(
              flex: 1,
              child: FlatButton(
                height: 50,
                onPressed: () => viewModel.onCancelPress(),
                color: COLOR_PRIMARY,
                splashColor: Colors.transparent,
                child: Center(
                  child: Text(
                    getTranslatedValues("btn_cancel_order"),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
