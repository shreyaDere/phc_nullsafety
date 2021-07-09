import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/language_screen/language_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../../app/localization/localization_helper.dart';

class LanguageScreenView extends StatelessWidget {
  const LanguageScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LanguageScreenViewModel>.reactive(
        onModelReady: (model) => model.loadData(),
        builder: (context, model, child) => Scaffold(
              body: SafeArea(
                  top: true,
                  child: Stack(
                    children: [
                      LogoContainer(),
                      LngSelectContainer(),
                    ],
                  )),
            ),
        viewModelBuilder: () => LanguageScreenViewModel());
  }
}

class LogoContainer extends ViewModelWidget<LanguageScreenViewModel> {
  @override
  Widget build(BuildContext context, LanguageScreenViewModel viewModel) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 4.5),
        child: Center(
          child: SvgPicture.asset('assets/icons/logo.svg',
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3),
        ));
  }
}

class LngSelectContainer extends ViewModelWidget<LanguageScreenViewModel> {
  @override
  Widget build(BuildContext context, LanguageScreenViewModel viewModel) {
    return Positioned(
      bottom: 0,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.5,
          decoration: BoxDecoration(
              color: COLOR_PRIMARY,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14.0),
                  topRight: Radius.circular(14.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                getTranslatedValues("select_language"),
                textAlign: TextAlign.right,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      color: COLOR_White,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 50),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        height: 50,
                        color: COLOR_White,
                        textColor: COLOR_PRIMARY,
                        splashColor: COLOR_PRIMARY,
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () => viewModel.onEnglishSelected(),
                        child: Text(
                          getTranslatedValues("english"),
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
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(color: COLOR_White),
                        child: FlatButton(
                          height: 48,
                          color: COLOR_PRIMARY,
                          textColor: COLOR_White,
                          splashColor: COLOR_PRIMARY,
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            viewModel.onArebicSelected();
                          },
                          child: Text(
                            getTranslatedValues("arabic"),
                            textAlign: TextAlign.right,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
