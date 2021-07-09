import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/coupon/coupon_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class CouponView extends StatelessWidget {
  const CouponView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CouponViewModel>.reactive(
      viewModelBuilder: () => CouponViewModel(),
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
            getTranslatedValues("title_coupon"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontSize: 16,
            )),
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                CouponWidgetList(),
                model.isBusy ? showLoader(context: context) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CouponWidgetList extends ViewModelWidget<CouponViewModel> {
  @override
  Widget build(Object context, CouponViewModel viewModel) {
    return Container(
      // margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            color: COLOR_PRIMARY,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                SearchCoupon(),
                SizedBox(height: 15),
                Text(
                  getTranslatedValues("available_coupon"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    color: COLOR_White,
                    fontSize: 16,
                  )),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CouponList()
        ],
      ),
    );
  }
}

class SearchCoupon extends ViewModelWidget<CouponViewModel> {
  @override
  Widget build(BuildContext context, CouponViewModel viewModel) {
    return GestureDetector(
      //  onTap: () => viewModel.onSearchClick(),
      child: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.couponCode.toString()),
                  initialValue: viewModel.couponCode,
                  onChanged: viewModel.updateCouponCode,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: getTranslatedValues('hint_coupon'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(14.0),
                    hintStyle: GoogleFonts.nunitoSans(
                      textStyle:
                          TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
                onPressed: () => viewModel.popViewBack(),
                color: COLOR_PRIMARY,
                splashColor: COLOR_PRIMARY,
                textColor: Colors.white,
                child: Text(
                  getTranslatedValues("apply"),
                )),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

class CouponList extends ViewModelWidget<CouponViewModel> {
  @override
  Widget build(BuildContext context, CouponViewModel viewModel) {
    return viewModel.couponData != null
        ? Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: viewModel.couponData.coupons.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 6,
                            ),
                            Expanded(
                                child: Text(
                              viewModel.couponData.coupons
                                  .elementAt(index)
                                  .code,
                              style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      color: COLOR_PRIMARY,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            )),
                            GestureDetector(
                              onTap: () =>
                                  viewModel.onSelectCoupon(index: index),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor:
                                    index == viewModel.selectedCheckBoxIndex
                                        ? COLOR_PRIMARY
                                        : COLOR_GRAY_BLACK,
                                child: index == viewModel.selectedCheckBoxIndex
                                    ? CircleAvatar(
                                        radius: 10,
                                        backgroundColor: COLOR_PRIMARY,
                                        child: Center(
                                          child: Icon(
                                            Icons.check,
                                            size: 16,
                                          ),
                                        ))
                                    : CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                      ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Html(
                          data: viewModel.couponData.coupons
                              .elementAt(index)
                              .description,
                          style: {
                            "html": Style(
                              color: COLOR_GRAY,
                              fontSize: FontSize(12),
                              fontFamily: "Noto Sans",
                            ),
                          },
                        ),
                        Divider(
                          thickness: 1.5,
                          color: COLOR_GRAY_BLACK,
                        ),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Text(
                        //         "Coupon Description",
                        //         style: GoogleFonts.nunitoSans(
                        //             textStyle: TextStyle(
                        //                 color: COLOR_GRAY_BLACK,
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeight.bold)),
                        //       ),
                        //     ),
                        //     Text(
                        //       getTranslatedValues("more"),
                        //       style: GoogleFonts.nunitoSans(
                        //           textStyle: TextStyle(
                        //               color: COLOR_PRIMARY,
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.normal)),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  );
                }),
          )
        : Container();
  }
}
