import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/settings/settings_model_view.dart';
import 'package:stacked/stacked.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            iconTheme: new IconThemeData(color: COLOR_White),
            elevation: 0,
            bottomOpacity: 0.0,
            centerTitle: false,
            backgroundColor: COLOR_PRIMARY,
            title: Text(
              getTranslatedValues("settings"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  color: COLOR_White,
                ),
              ),
            )),
        body: SafeArea(
          top: true,
          child: Stack(children: <Widget>[
            SettingsWidgetList(),
          ]),
        ),
      ),
    );
  }
}

class SettingsWidgetList extends ViewModelWidget<SettingsViewModel> {
  @override
  Widget build(BuildContext context, SettingsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK)),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/settings.svg",
                      color: Colors.red,
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        getTranslatedValues("general_settings"),
                        style: GoogleFonts.nunitoSans(
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.0),
                Divider(
                  height: 1.0,
                  color: COLOR_GRAY_BLACK,
                ),
                RowElement(
                  text: getTranslatedValues('language'),
                  widget: viewModel.changeLanguage
                      ? GestureDetector(
                          onTap: () {
                            viewModel.onEnglishPressed(isChangeToEr: false);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.indigo[900],
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Center(
                              child: Text(
                                "En",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            viewModel.onArebicPressed(isChangeToEr: true);
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.indigo[900],
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Center(
                              child: Text(
                                "Ar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          )),
                  greyApply: true,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color(0XFFBBBBBB))),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/notification.svg",
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        getTranslatedValues("notification"),
                        style: TextStyle(color: COLOR_GRAY),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                SizedBox(height: 8.0),
                Divider(
                  height: 1.0,
                  color: COLOR_GRAY_BLACK,
                ),
                SwitchListTile(
                  title: Text(getTranslatedValues('enable_vibration'),
                      style: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14)),
                  activeTrackColor: COLOR_PRIMARY,
                  inactiveTrackColor: COLOR_PRIMARY,
                  activeColor: Colors.white,
                  value: viewModel.enableVibrateValue,
                  onChanged: (value) => viewModel.changeToggleValue(value),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowElement extends ViewModelWidget<SettingsViewModel> {
  final String text;
  final Widget widget;
  final bool greyApply;

  RowElement({this.text, this.widget, this.greyApply = false});
  @override
  Widget build(BuildContext context, SettingsViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: greyApply ? COLOR_GRAY_BLACK : COLOR_GRAY),
          ),
          widget
        ],
      ),
    );
  }
}
