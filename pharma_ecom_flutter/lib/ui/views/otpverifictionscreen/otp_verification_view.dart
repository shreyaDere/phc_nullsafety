import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/otpverifictionscreen/otp_verification_view_model.dart';
import 'package:stacked/stacked.dart';

class OtpVerificationView extends StatelessWidget {
  final int phoneNumber;
  OtpVerificationView({this.phoneNumber, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OtpVerifiactionViewModel>.reactive(
      viewModelBuilder: () => OtpVerifiactionViewModel(),
      onModelReady: (model) => model.loadData(phoneNumber),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: NetworkSensitive(
              currentWidget: Stack(
                children: <Widget>[
                  LoginScreenContaint(),
                  model.isBusy ? Container() : BackButton(),
                  model.isBusy ? showLoader(context: context) : Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreenContaint extends ViewModelWidget<OtpVerifiactionViewModel> {
  @override
  Widget build(BuildContext context, OtpVerifiactionViewModel viewModel) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/otp_verify.svg',
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.width / 2,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            getTranslatedValues("title_otp"),
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 30,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: getTranslatedValues("subtitle_otp"),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                color: COLOR_GRAY,
                fontSize: 16,
              )),
            ),
            TextSpan(
              text: '+${viewModel.phoneNumber}',
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                color: COLOR_PRIMARY,
              )),
            ),
          ])),
          SizedBox(
            height: 35,
          ),
          Container(
              color: Colors.white,
              width: 300,
              child: Form(
                key: viewModel.formKey,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    inactiveColor: COLOR_GRAY_BLACK,
                    inactiveFillColor: Colors.white30,
                    activeColor: COLOR_GRAY_BLACK,
                    selectedColor: COLOR_GRAY_BLACK,
                    selectedFillColor: Colors.white30,
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 40,
                    fieldWidth: 40,
                    activeFillColor: Colors.white30,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Color(0XFFFBFAFB),
                  enableActiveFill: true,
                  textStyle: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 18)),
                  onChanged: (value) {
                    viewModel.setOtp(otpString: value);
                  },
                  validator: (value) =>
                      viewModel.validateOtpNumber(value: value),
                ),
              )),
          SizedBox(
            height: 15,
          ),
          FlatButton(
              onPressed: () => viewModel.verifyOtpPressed(),
              color: COLOR_PRIMARY,
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15, bottom: 15),
              splashColor: COLOR_PRIMARY,
              child: Text(
                getTranslatedValues("title_otp"),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        color: COLOR_White,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getTranslatedValues("otp_resend"),
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                  color: COLOR_GRAY,
                  fontSize: 12,
                )),
              ),
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            getTranslatedValues('bnt_otp_resend'),
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 50),
                              Expanded(
                                flex: 1,
                                child: FlatButton(
                                  height: 50,
                                  color: COLOR_PRIMARY,
                                  textColor: COLOR_White,
                                  splashColor: COLOR_PRIMARY,
                                  minWidth: MediaQuery.of(context).size.width,
                                  onPressed: () {
                                    viewModel.onYesClick();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    getTranslatedValues('yes'),
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
                                  height: 50,
                                  // padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: COLOR_PRIMARY)),
                                  child: FlatButton(
                                    height: 48,
                                    color: COLOR_White,
                                    textColor: COLOR_PRIMARY,
                                    splashColor: COLOR_PRIMARY,
                                    minWidth: MediaQuery.of(context).size.width,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      getTranslatedValues('no'),
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
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  " " + getTranslatedValues("text_resend"),
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    color: COLOR_PRIMARY,
                    fontSize: 12,
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BackButton extends ViewModelWidget<OtpVerifiactionViewModel> {
  @override
  Widget build(BuildContext context, OtpVerifiactionViewModel viewModel) {
    return Positioned(
      left: 10,
      top: 10,
      child: IconButton(
        icon: viewModel.lang == "en"
            ? Icon(
                Icons.arrow_back,
              )
            : Icon(
                Icons.arrow_forward,
              ),
        iconSize: 20,
        color: Colors.black,
        splashColor: COLOR_GRAY,
        onPressed: () => viewModel.onbackPressed(),
      ),
    );
  }
}
