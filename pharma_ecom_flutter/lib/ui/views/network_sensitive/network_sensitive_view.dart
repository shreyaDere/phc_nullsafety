import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:stacked/stacked.dart';

import 'network_sensitive_view_model.dart';

class NetworkSensitive extends StatelessWidget {
  final Widget currentWidget;
  NetworkSensitive({this.currentWidget, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConnectivityAwareViewModel>.reactive(
      // onModelReady: (model) => model.setWidget(this.currentWidget),
      // fireOnModelReadyOnce: false,
      builder: (context, model, child) {
        switch (model.dataConnectionStatus) {
          case DataConnectionStatus.disconnected:
            // ignore: todo
            return Stack(
              children: <Widget>[
                currentWidget,
                Positioned(
                  bottom: 0,
                  child: Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      margin: EdgeInsets.all(5),
                      color: COLOR_PRIMARY,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Container(
                              width: 15,
                              height: 15,
                              child: SvgPicture.asset(
                                'assets/images/nosignalicon.svg',
                                color: Colors.white,
                              )),
                          SizedBox(width: 15),
                          Text(
                            getTranslatedValues("no_internert"),
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Cormorant",
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                ),
              ],
            );
            break;
          case DataConnectionStatus.connected:
            return currentWidget;
            break;
          default:
            return Container();
          //return Center(child: Text("No internet"));
        }
        //return model.returnWidget();
      },
      viewModelBuilder: () => ConnectivityAwareViewModel(),
    );
  }
}

class NoInternetConnectionUI
    extends ViewModelWidget<ConnectivityAwareViewModel> {
  @override
  Widget build(BuildContext context, ConnectivityAwareViewModel viewModel) {
    return Stack(
      children: <Widget>[
        Container(
            child: Center(
          child: Text(
            getTranslatedValues("no_internert"),
            style: TextStyle(
                backgroundColor: Colors.black,
                fontSize: 18,
                fontFamily: "Cormorant",
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        )),
        viewModel.currentWidget
      ],
    );
  }
}
