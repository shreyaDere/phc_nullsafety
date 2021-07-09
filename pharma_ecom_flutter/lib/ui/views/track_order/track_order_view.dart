import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/track_order/track_order_view_model.dart';
import 'package:stacked/stacked.dart';

class TrackOrderView extends StatelessWidget {
  final int orderId;
  final int orderType;
  TrackOrderView({Key key, this.orderId, this.orderType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrackOrderViewModel>.reactive(
      viewModelBuilder: () => TrackOrderViewModel(),
      onModelReady: (model) => model.loadData(orderId, orderType),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            getTranslatedValues("track_order"),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("DashboardWidgetList"),
              child: Stack(
                children: <Widget>[
                  model.isBusy
                      ? showLoader(context: context)
                      : TrackOrderWidgetList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TrackOrderWidgetList extends ViewModelWidget<TrackOrderViewModel> {
  @override
  Widget build(BuildContext context, TrackOrderViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopProductDetailsView(),
          Text(
            getTranslatedValues('track_order'),
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  fontSize: 16,
                  color: COLOR_PRIMARY,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TrackingListView()
        ],
      ),
    );
  }
}

class TopProductDetailsView extends ViewModelWidget<TrackOrderViewModel> {
  @override
  Widget build(BuildContext context, TrackOrderViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: new TextSpan(
              text: '',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                new TextSpan(
                  text: 'Order No: ',
                  style: GoogleFonts.nunitoSans(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                new TextSpan(text: viewModel.orderId),
              ],
            ),
          ),
          Text(
            viewModel.deliveryDate,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class TrackingListView extends ViewModelWidget<TrackOrderViewModel> {
  @override
  Widget build(BuildContext context, TrackOrderViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: viewModel.orderTrackingAry.length,
          itemBuilder: (context, index) {
            return Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/radiobutton.svg',
                        width: 18,
                        color: COLOR_PRIMARY,
                      ),
                      Container(
                        color: viewModel.orderTrackingAry[index].status == 4
                            ? Colors.white
                            : COLOR_PRIMARY,
                        width: 1,
                        height: 70,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        viewModel.getOrderStatus(
                            status: viewModel.orderTrackingAry[index].status),
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      viewModel.orderTrackingAry[index].comments != null &&
                              viewModel
                                  .orderTrackingAry[index].comments.isNotEmpty
                          ? Text(
                              viewModel.orderTrackingAry[index].comments,
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            )
                          : Container(),
                      Row(
                        children: <Widget>[
                          Text(
                            viewModel.orderTrackingAry[index].timestamp,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  color: COLOR_GRAY_BLACK,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}

class ListItemView extends ViewModelWidget<TrackOrderViewModel> {
  final int index;

  ListItemView(this.index);
  @override
  Widget build(BuildContext context, TrackOrderViewModel viewModel) {
    return Container(
      height: 130,
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/radiobutton.svg',
                      width: 18,
                      color: COLOR_PRIMARY,
                    ),
                    Container(
                      color: index == 4 ? Colors.white : COLOR_PRIMARY,
                      width: 1,
                      height: 70,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      viewModel.orderTrackingAry[index].comments,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          viewModel.orderTrackingAry[index].timestamp,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: COLOR_GRAY_BLACK,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
