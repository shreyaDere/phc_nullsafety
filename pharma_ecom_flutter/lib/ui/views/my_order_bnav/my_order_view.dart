import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/app_drawer/app_drawer_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/my_order_bnav/my_order_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyOrderViewModel>.reactive(
      viewModelBuilder: () => MyOrderViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        drawer: AppDrawerView(),
        body: SafeArea(
          top: true,
          child: Stack(
            children: <Widget>[
              model.isBusy ? MyOrderShimmerEffect() : MyOrderWidgetList(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrderWidgetList extends ViewModelWidget<MyOrderViewModel> {
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Column(
      children: [
        PrescriptionNonPrescriptionRow(),
        ListviewWidget(),
      ],
    );
  }
}

class PrescriptionNonPrescriptionRow extends ViewModelWidget<MyOrderViewModel> {
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25),
      height: 50,
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () => viewModel.onNonPrescriptionPressed(),
            child: Container(
              // height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 2,
                          color: viewModel.orderType == 1
                              ? COLOR_PRIMARY
                              : COLOR_GRAY_BLACK))),
              child: Center(
                child: Text(
                  getTranslatedValues("non_prescripted"),
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        color: viewModel.orderType == 1
                            ? COLOR_PRIMARY
                            : COLOR_GRAY_BLACK),
                  ),
                ),
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () => viewModel.onPrescriptionPressed(),
            child: Container(
              // height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 2,
                          color: viewModel.orderType == 0
                              ? COLOR_PRIMARY
                              : COLOR_GRAY_BLACK))),
              child: Center(
                child: Text(
                  getTranslatedValues("prescripted"),
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        color: viewModel.orderType == 0
                            ? COLOR_PRIMARY
                            : COLOR_GRAY_BLACK),
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class ListviewWidget extends ViewModelWidget<MyOrderViewModel> {
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Container(
      child: Expanded(
        child: viewModel.reverseordersList != null &&
                viewModel.reverseordersList.length > 0
            ? ListView.builder(
                key: PageStorageKey("NonPrescriptionItem"),
                itemCount: viewModel.reverseordersList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListItem(context, index);
                })
            : viewModel.emptyView
                ? EmptyList()
                : Container(),
      ),
    );
  }
}

class EmptyList extends ViewModelWidget<MyOrderViewModel> {
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/cart_empty.svg",
          height: 150,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          getTranslatedValues("empty_my_order"),
          textAlign: TextAlign.center,
          maxLines: 2,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: COLOR_PRIMARY,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class ListItem extends ViewModelWidget<MyOrderViewModel> {
  final BuildContext context;
  final int index;
  ListItem(this.context, this.index);

  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0, right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: COLOR_GRAY_BLACK,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          ),
          BoxShadow(
            color: COLOR_GRAY_BLACK,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(-2.0, -2.0), // shadow direction: bottom right
          )
        ],
      ),
      // color: Colors.amber,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getTranslatedValues("order_n") +
                    ": ${viewModel.reverseordersList[index].orderId}",
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              GestureDetector(
                // onTap: () => viewModel.expandNonPrescriptedview(index),
                child: Row(
                  children: [
                    Text(
                      viewModel.getDate(index),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                    // viewModel.expandList.elementAt(index).isExpanded
                    //     ? Icon(
                    //         Icons.arrow_drop_up,
                    //         color: COLOR_GRAY_BLACK,
                    //       )
                    //     : Icon(
                    //         Icons.arrow_drop_down,
                    //         color: COLOR_GRAY_BLACK,
                    //       )
                  ],
                ),
              ),
            ],
          ),
          viewModel.expandList.elementAt(index).isExpanded
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 15.0),
                  height: 170,
                  child: ListView.builder(
                      itemCount:
                          viewModel.reverseordersList[index].lineItems.length,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      key: PageStorageKey("data-nonprescripted"),
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return Column(
                          children: [
                            SizedBox(height: 10),
                            HorizontalList(
                                viewModel.reverseordersList[index].lineItems),

                            //HorizontalList()
                          ],
                        );
                      }),
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => viewModel.onViewSummeryClick(
                    orderId: viewModel.reverseordersList[index].orderId),
                child: Text(
                  getTranslatedValues('view_summary'),
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: COLOR_PRIMARY)),
                ),
              ),
              Container(
                  child: BannerOnProduct(
                      index: index,
                      deliveryType:
                          viewModel.reverseordersList[index].deliveryType)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      viewModel.getOrderStatus(
                                  status: viewModel
                                      .reverseordersList[index].orderStatus) !=
                              null
                          ? viewModel.getOrderStatus(
                              status: viewModel
                                  .reverseordersList[index].orderStatus)
                          : "",
                      style: GoogleFonts.nunitoSans(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 10)),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  "${viewModel.reverseordersList[index].total.toStringAsFixed(3)} BHD",
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: COLOR_PRIMARY)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HorizontalList extends ViewModelWidget<MyOrderViewModel> {
  final BuiltList<LineItemOrder> productList;

  HorizontalList(this.productList);
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
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
                  fit: BoxFit.fill,
                  imageUrl: "$BASE_URL${productList[0].product.imageGallery}"),
              /*CachedNetworkImage(
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
                    imageUrl: productList[0].product.featuredImage != null
                        ? "$BASE_URL${productList[0].product.featuredImage}"
                        : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")*/
            ),
            SizedBox(
              width: 20,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.getLanguageChangedText(productList[0].product, 0),
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(fontWeight: FontWeight.w700),
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
                                  fontWeight: FontWeight.w700, fontSize: 14)),
                        ),
                        new TextSpan(
                          text: "${productList[0].product.quantity}",
                          style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${productList[0].product.regularPrice} BD",
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14)),
                  ),
                ]),
            SizedBox(
              width: 150,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        productList.length > 1
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 60,
                      height: 60,
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
                              "$BASE_URL${productList[1].product.imageGallery}")),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          viewModel.getLanguageChangedText(
                              productList[1].product, 0),
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(fontWeight: FontWeight.w700),
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
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14)),
                              ),
                              new TextSpan(
                                text: "${productList[1].product.quantity}",
                                style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "${productList[1].product.regularPrice} BD",
                          style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14)),
                        ),
                      ]),
                  SizedBox(
                    width: 150,
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}

class BannerOnProduct extends ViewModelWidget<MyOrderViewModel> {
  final index;
  final int deliveryType;
  BannerOnProduct({this.index, this.deliveryType});
  @override
  Widget build(BuildContext context, MyOrderViewModel viewModel) {
    return ClipPath(
      clipper: LinePathBanner(),
      child: Container(
        width: 110,
        height: 25,
        color: Colors.indigo[900],
        padding: EdgeInsets.only(left: 30, top: 3, right: 20),
        child: Text(
          deliveryType == 0
              ? getTranslatedValues("delivery")
              : getTranslatedValues("pickup"),
          style: TextStyle(color: COLOR_White),
        ),
      ),
    );
  }
}

class LinePathBanner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(100, 110);
    path.lineTo(100, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyOrderShimmerEffect extends StatelessWidget {
  const MyOrderShimmerEffect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NetworkSensitive(
      currentWidget: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey[300],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 50,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 150,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 150,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 150,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 150,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 150,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
