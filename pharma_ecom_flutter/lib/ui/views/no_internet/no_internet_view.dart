import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/no_internet/no_internet_view_model.dart';
import 'package:stacked/stacked.dart';

class NoInternateView extends StatelessWidget {
  const NoInternateView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NoInternateViewModel>.reactive(
      viewModelBuilder: () => NoInternateViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0.0,
          centerTitle: false,
          backgroundColor: COLOR_PRIMARY,
          title: Text(getTranslatedValues("app_bar_no_internet"),
              textAlign: TextAlign.left),
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[Center(child: NoInternetWidgetList())],
            ),
          ),
        ),
      ),
    );
  }
}

class NoInternetWidgetList extends ViewModelWidget<NoInternateViewModel> {
  @override
  Widget build(BuildContext context, NoInternateViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/no_connectivity_capsule.svg",
          height: 230.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          getTranslatedValues("title_no_internet"),
          textAlign: TextAlign.left,
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
          getTranslatedValues("subtitle_no_internet"),
          textAlign: TextAlign.left,
          maxLines: 2,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: COLOR_BLACK,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: FlatButton(
            height: 50,
            color: COLOR_PRIMARY,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            splashColor: COLOR_PRIMARY,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () => viewModel.onTryAginBtnPressed(),
            child: Text(
              getTranslatedValues("btn_try_again"),
              style: GoogleFonts.lato(
                textStyle:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
