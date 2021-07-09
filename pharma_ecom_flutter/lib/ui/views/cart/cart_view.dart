import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/cart/cart_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            centerTitle: false,
            iconTheme: new IconThemeData(color: COLOR_White),
            elevation: 0,
            bottomOpacity: 0.0,
            backgroundColor: COLOR_PRIMARY,
            titleSpacing: 1,
            title: Text(
              getTranslatedValues("shopping_cart"),
              textAlign: TextAlign.left,
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                color: COLOR_White,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              )),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () => model.navigateWishlist(),
                child: SvgPicture.asset(
                  'assets/icons/heart.svg',
                  width: 20,
                  //color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: NetworkSensitive(
                currentWidget: Stack(
                  children: <Widget>[
                    model.isBusy
                        ? showLoader(context: context)
                        : model.getCartResponse.cart != null &&
                                model.getCartResponse.cart.length == 0
                            ? EmptyList()
                            : CartWidgetList()
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class EmptyList extends ViewModelWidget<CartViewModel> {
  @override
  Widget build(BuildContext context, CartViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/cart_empty.svg",
            height: 230,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            getTranslatedValues("empty_cart_message"),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: COLOR_PRIMARY,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            getTranslatedValues("empty_cart_msg"),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: COLOR_BLACK,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            getTranslatedValues("continue_shop"),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: COLOR_BLACK,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}

class CartWidgetList extends ViewModelWidget<CartViewModel> {
  @override
  Widget build(BuildContext context, CartViewModel viewModel) {
    return viewModel.getCartResponse.cart != null &&
            viewModel.getCartResponse.cart.length > 0
        ? Container(
            margin: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              children: <Widget>[
                SelectedItemCartList(),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  thickness: 1.5,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getTranslatedValues("product_total"),
                      textAlign: TextAlign.start,
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Text(
                      viewModel.cartTotResponse.data != null &&
                              viewModel.cartTotResponse.data.checkout != null
                          ? "BD ${viewModel.cartTotResponse.data.checkout.subtotal.toStringAsFixed(3)}"
                          : "",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              color: COLOR_PRIMARY,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ContainerApplyCoupon(),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        getTranslatedValues("reward_point_available"),
                        textAlign: TextAlign.start,
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                      ),
                    ),
                    Text(
                      viewModel.cartTotResponse.data != null
                          ? viewModel.rewardPointUser.toStringAsFixed(3)
                          : "",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              color: COLOR_PRIMARY,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Checkbox(
                        value: viewModel.chekReward,
                        onChanged: (bool value) =>
                            viewModel.changeChekReward(value: value),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    getTranslatedValues('payment_detail_title'),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14)),
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
                  paymentTitle: getTranslatedValues('coupon_title'),
                  amount: viewModel.cartTotResponse.data != null
                      ? "- ${viewModel.couponAmt}" //viewModel.cartTotResponse.data.checkout.c.toStringAsFixed(3)}"
                      : "", //viewModel.couponAmt
                ),
                SizedBox(
                  height: 5,
                ),
                PaymentDetailTile(
                  isPaymentTile: true,
                  paymentTitle: getTranslatedValues('reward_title'),
                  amount: viewModel.cartTotResponse.data != null
                      ? "- ${viewModel.cartTotResponse.data.checkout.rewardPointsApplied.toStringAsFixed(3)}"
                      : "",
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
                    paymentTitle: getTranslatedValues('sub_total'),
                    amount: viewModel.cartTotResponse.data != null
                        ? "BD ${viewModel.cartTotResponse.data.checkout.total.toStringAsFixed(3)}"
                        : "",
                    isTotalPay: true),
                SizedBox(
                  height: 20,
                ),
                BtnCheckout(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        : Container();
  }
}

class SelectedItemCartList extends ViewModelWidget<CartViewModel> {
  @override
  Widget build(BuildContext context, CartViewModel viewModel) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: viewModel.cartLen,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(
                left: 10.0, top: 10.0, bottom: 10.0, right: 4.0),
            decoration:
                BoxDecoration(border: Border.all(color: COLOR_GRAY_BLACK)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 140,
                  width: 120.0,
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
                      imageUrl:
                          "$BASE_URL${viewModel.getCartResponse.cart[index].featuredImage}"),
                ),
                SizedBox(width: 10),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                viewModel.getLanguageChangedText(
                                    viewModel.getCartResponse.cart[index], 0),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )),
                              ),
                            ),
                            // GestureDetector(
                            //   onTap: () => viewModel.removeFromCart(
                            //       productId: viewModel
                            //           .getCartResponse.cart[index].sId),
                            //   child: CircleAvatar(
                            //     radius: 10,
                            //     backgroundColor: Colors.grey[350],
                            //     child: Icon(
                            //       Icons.close,
                            //       size: 12,
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                          ],
                        ),
                        // Container(
                        //   height: 55,
                        //   child: Html(
                        //     data: viewModel.getCartResponse != null
                        //         ? viewModel
                        //             .getCartResponse.cart[index].description
                        //         : "Description",
                        //     style: {
                        //       "html": Style(
                        //         color: COLOR_GRAY,
                        //         fontSize: FontSize(12),
                        //         fontFamily: "Noto Sans",
                        //       ),
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              getTranslatedValues("quntity"),
                              style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )),
                            ),
                            Spacer(),
                            Container(
                              width: 80,
                              height: 30.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      viewModel.minus(index: index);
                                    },
                                    child: Icon(
                                      Icons.remove_circle,
                                      color: viewModel.getCartResponse
                                                  .cart[index].quantity <=
                                              1
                                          ? Colors.black12
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    viewModel
                                        .getCartResponse.cart[index].quantity
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      viewModel.add(index: index);
                                    },
                                    child: Icon(
                                      Icons.add_circle,
                                      color: viewModel.getCartResponse
                                                  .cart[index].quantity >=
                                              5
                                          ? Colors.black12
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                                onTap: () => viewModel.removeFromCart(
                                    productId: viewModel
                                        .getCartResponse.cart[index].sId),
                                child: Text(
                                  getTranslatedValues('remove'),
                                  style: TextStyle(color: Colors.red),
                                )),
                            Spacer(),
                            Text(
                              viewModel.getProductPrice(index: index),
                              textAlign: TextAlign.right,
                              style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: COLOR_PRIMARY,
                                fontSize: 16,
                              )),
                            ),
                            SizedBox(width: 8)
                          ],
                        )
                      ],
                    )),
              ],
            ),
          );
        });
  }
}

class ContainerApplyCoupon extends ViewModelWidget<CartViewModel> {
  @override
  Widget build(BuildContext context, CartViewModel viewModel) {
    return DottedBorder(
        padding: const EdgeInsets.all(15.0),
        color: COLOR_PRIMARY,
        strokeWidth: 1,
        dashPattern: [3, 4],
        child: GestureDetector(
          onTap: () => viewModel.couponSelected == null ||
                  viewModel.couponSelected.isEmpty
              ? viewModel.navigateToCouponPage()
              : viewModel.clearCouponData(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                viewModel.couponSelected == null ||
                        viewModel.couponSelected.isEmpty
                    ? getTranslatedValues('apply_coupon')
                    : viewModel.couponSelected,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: COLOR_GRAY,
                      fontWeight: FontWeight.w600),
                ),
              ),
              viewModel.couponSelected == null ||
                      viewModel.couponSelected.isEmpty
                  ? Icon(
                      viewModel.lang == "en"
                          ? Icons.arrow_forward_ios_outlined
                          : Icons.arrow_back_ios_outlined,
                      color: COLOR_PRIMARY,
                    )
                  : Icon(
                      Icons.close,
                      color: COLOR_PRIMARY,
                    )
            ],
          ),
        ));
  }
}

class PaymentDetailTile extends ViewModelWidget<CartViewModel> {
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
  Widget build(BuildContext context, CartViewModel viewModel) {
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

class BtnCheckout extends ViewModelWidget<CartViewModel> {
  @override
  Widget build(BuildContext context, CartViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      //minWidth: MediaQuery.of(context).size.width - 50,
      onPressed: () {
        showMaterialModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20),
                Text(
                  getTranslatedValues('delivery_type_title'),
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: FlatButton(
                    height: 50,
                    color: COLOR_PRIMARY,
                    textColor: COLOR_White,
                    splashColor: COLOR_PRIMARY,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      viewModel.navigateToSelfPickUp();
                    },
                    child: Text(
                      getTranslatedValues('self_pickup'),
                      textAlign: TextAlign.right,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 25.0, right: 25.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: COLOR_PRIMARY)),
                  child: FlatButton(
                    height: 48,
                    color: COLOR_White,
                    textColor: COLOR_PRIMARY,
                    splashColor: COLOR_PRIMARY,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      viewModel.navigateToDelivery();
                    },
                    child: Text(
                      getTranslatedValues('schedule_delivery'),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                /*   Row(
                  children: <Widget>[
                    SizedBox(width: 30),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        height: 50,
                        color: COLOR_PRIMARY,
                        textColor: COLOR_White,
                        splashColor: COLOR_PRIMARY,
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          viewModel.navigateToSelfPickUp();
                        },
                        child: Text(
                          getTranslatedValues('self_pickup'),
                          textAlign: TextAlign.right,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        // padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: COLOR_PRIMARY)),
                        child: FlatButton(
                          height: 48,
                          color: COLOR_White,
                          textColor: COLOR_PRIMARY,
                          splashColor: COLOR_PRIMARY,
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            viewModel.navigateToDelivery();
                          },
                          child: Text(
                            getTranslatedValues('schedule_delivery'),
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),*/
              ],
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getTranslatedValues("btn_checkout"),
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
