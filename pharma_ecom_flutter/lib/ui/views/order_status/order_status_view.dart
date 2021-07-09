import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/order_status/order_status_view_model.dart';
import 'package:stacked/stacked.dart';

class OrderStatusView extends StatelessWidget {
  final int orderId;
  const OrderStatusView({Key key, this.orderId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderStatusViewModel>.reactive(
      viewModelBuilder: () => OrderStatusViewModel(),
      onModelReady: (model) => model.loadData(orderId),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[
                OrderStatusWidgetList(),
                model.isBusy ? showLoader(context: context) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderStatusWidgetList extends ViewModelWidget<OrderStatusViewModel> {
  @override
  Widget build(BuildContext context, OrderStatusViewModel viewModel) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(left: 20, right: 20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/delivered.svg',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              getTranslatedValues('delivery_msg'),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: COLOR_PRIMARY)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(getTranslatedValues('delivery_sub_title'),
                textAlign: TextAlign.center,
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: COLOR_GRAY_BLACK))),
            SizedBox(
              height: 30,
            ),
            Text(getTranslatedValues('title_rate'),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.black))),
            SizedBox(
              height: 10,
            ),
            RatingBar(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              ratingWidget: RatingWidget(
                  full: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  empty: Icon(
                    Icons.star,
                    color: Colors.grey[300],
                  )),
              onRatingUpdate: (rating) => viewModel.updateRatings(rating),
            ),
            SizedBox(
              height: 10,
            ),
            Text(getTranslatedValues('feedback'),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.black))),
            SizedBox(
              height: 10,
            ),
            Theme(
              data: ThemeData(
                primaryColor: COLOR_GRAY_BLACK,
              ),
              child: TextFormField(
                key: Key(viewModel.comment.toString()),
                initialValue: viewModel.comment,
                onChanged: viewModel.updateComment,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: getTranslatedValues('hint_text'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide:
                          BorderSide(width: 1, color: COLOR_GRAY_BLACK)),
                  contentPadding: EdgeInsets.all(14.0),
                  hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SubmitBtn()
          ],
        ),
      ),
    ));
  }
}

class SubmitBtn extends ViewModelWidget<OrderStatusViewModel> {
  @override
  Widget build(BuildContext context, OrderStatusViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () => viewModel.onSubmitBtnPressed(),
      child: Text(
        getTranslatedValues("submit"),
        style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
