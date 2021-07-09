import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/on_bording_second/on_boarding_view_model.dart';
import 'package:stacked/stacked.dart';

class OnBordingSecondView extends StatelessWidget {
  final OnBordingResponse onBordingResponse;
  OnBordingSecondView({this.onBordingResponse, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBordingSecondViewModel>.reactive(
        onModelReady: (model) => model.loadData(onBordingResponse),
        builder: (context, model, child) => Scaffold(
              body: SafeArea(
                  top: true,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [WidgetList(), ButtonSkipAndNext()],
                    ),
                  )),
            ),
        viewModelBuilder: () => OnBordingSecondViewModel());
  }
}

class WidgetList extends ViewModelWidget<OnBordingSecondViewModel> {
  @override
  Widget build(BuildContext context, OnBordingSecondViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(bottom: 60, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 70),
          Container(
            height: 300,
            width: 230,
            child: Center(
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
                  fit: BoxFit.cover,
                  imageUrl: BASE_URL +
                      viewModel.onBordingResponse.data[1].boardingScreenImage),
            ),
          ),
          SizedBox(height: 30),
          Text(
            viewModel.onBordingResponse.data[1].boardingScreenName,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  color: COLOR_PRIMARY,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Html(
            data: viewModel.onBordingResponse.data[1].boardingScreenDescription,
            style: {
              "html": Style(
                textAlign: TextAlign.center,
                fontFamily: 'nunitoSans',
                fontSize: FontSize(16),
              )
            },
          ),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: COLOR_GRAY_BLACK,
                  radius: 4,
                ),
                SizedBox(width: 5),
                Container(
                  height: 10.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: COLOR_PRIMARY,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: COLOR_GRAY_BLACK,
                  radius: 4,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSkipAndNext extends ViewModelWidget<OnBordingSecondViewModel> {
  @override
  Widget build(BuildContext context, OnBordingSecondViewModel viewModel) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      left: 0.0,
      child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => viewModel.onSkipPressed(),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 8.0, top: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      getTranslatedValues("text_skip"),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: COLOR_GRAY,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: FlatButton(
                    minWidth: 80,
                    height: 50,
                    color: COLOR_PRIMARY,
                    splashColor: COLOR_PRIMARY,
                    textColor: Colors.white,
                    onPressed: () => viewModel.onNextPress(),
                    child: Text(getTranslatedValues('next'),
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 18,
                                color: COLOR_White,
                                fontWeight: FontWeight.bold)))),
              ))
            ],
          )),
    );
  }
}
