import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/notification/notification_view_model.dart';
import 'package:stacked/stacked.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      viewModelBuilder: () => NotificationViewModel(),
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
            getTranslatedValues("app_bar_notification"),
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
          child: Stack(children: <Widget>[
            NotificationList(),
            model.isBusy ? showLoader(context: context) : Container()
          ]),
        ),
      ),
    );
  }
}

class NotificationList extends ViewModelWidget<NotificationViewModel> {
  @override
  Widget build(BuildContext context, NotificationViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: viewModel.notification.isNotEmpty
          ? ListView.builder(
              itemCount: viewModel.notification.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: COLOR_GRAY_BLACK,
                          radius: 16,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.red,
                            size: 18,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                viewModel.notification[index].body,
                                maxLines: 3,
                                style: TextStyle(
                                    color: COLOR_GRAY,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                viewModel.getDate(index),
                                style: TextStyle(
                                    color: COLOR_GRAY_BLACK, fontSize: 14.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Divider(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              })
          : viewModel.isBusy
              ? Container()
              : Center(
                  child: Text(
                    getTranslatedValues("empty_view"),
                    style: GoogleFonts.nunitoSans(
                        textStyle:
                            TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                ),
    );
  }
}
