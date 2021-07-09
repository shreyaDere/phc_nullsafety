import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/login/login_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

import '../loading_indicator/loading_progress_indicator.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: [
                LoginScreenContaint(),
                model.isBusy ? showLoader(context: context) : Container()
              ],
            ),
          ),
        ),
        floatingActionButton: Visibility(
          visible: !(MediaQuery.of(context).viewInsets.bottom != 0),
          child: FloatingActionButton(
            onPressed: () => model.onSkipPressed(),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            splashColor: Colors.transparent,
            highlightElevation: 0.0,
            isExtended: true,
            child: Text(
              getTranslatedValues("text_skip"),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                color: COLOR_GRAY,
                fontSize: 16,
              )),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonBack extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(Object context, LoginViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Icon(
        Icons.arrow_back_ios_rounded,
        size: 20,
      ),
    );
  }
}

class LoginScreenContaint extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return SingleChildScrollView(
      child: Container(
        // margin: EdgeInsets.only(left: 30.0, right: 30.0),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadSvgImage(),
            SizedBox(height: 40),
            GetWelcomText(),
            SizedBox(height: 20),
            LoginSubText(),
            SizedBox(height: 30),
            LoginField(),
            ContainerTearmsAndCondition(),
            ButtonSendOtp()
          ],
        ),
      ),
    );
  }
}

class LoginSubText extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Text(
      getTranslatedValues("login_otp_title"),
      textAlign: TextAlign.center,
      style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
        color: COLOR_GRAY,
        fontSize: 16,
      )),
    );
  }
}

class GetWelcomText extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Text(
      getTranslatedValues("loginscreen_title"),
      style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
              color: COLOR_GRAY, fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}

class ButtonSendOtp extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: FlatButton(
          onPressed: () => viewModel.sendOtp(),
          color: COLOR_PRIMARY,
          splashColor: COLOR_PRIMARY,
          child: Text(
            getTranslatedValues("btn_send_otp"),
            style: GoogleFonts.nunitoSans(
                fontSize: 16,
                textStyle:
                    TextStyle(color: COLOR_White, fontWeight: FontWeight.bold)),
          )),
    );
  }
}

class ContainerTearmsAndCondition extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 5.0),
      child: CheckboxListTile(
        title: Text(
          getTranslatedValues("login_tems_condition"),
          textAlign: TextAlign.left,
          style: GoogleFonts.nunitoSans(
              fontSize: 12,
              textStyle: TextStyle(
                color: COLOR_GRAY,
              )),
        ),
        value: viewModel.checkBoxValue,
        onChanged: (newValue) => viewModel.changeCheckBoxValue(newValue),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

class LoginField extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Container(
      height: viewModel.isThroughEtrror ? 70 : 50,
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(color: COLOR_GRAY_BLACK)),
      child: Row(
        children: [
          Container(
              width: 90,
              child: CountryCodePicker(
                  countryFilter: [
                    "+91",
                    "+971",
                    "+974",
                    "+966",
                    "+973",
                    "+968",
                    "+965"
                  ],
                  initialSelection: viewModel.countryInitial,
                  onChanged: viewModel.onCountryChanged,
                  textStyle: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    color: COLOR_GRAY,
                  )),
                  dialogTextStyle: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    color: COLOR_GRAY,
                  )),
                  boxDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0)))),
          Padding(
            padding: const EdgeInsets.only(
                top: 4.0, bottom: 4.0, left: 4.0, right: 15.0),
            child: Container(
              width: 2,
              color: COLOR_GRAY_BLACK,
            ),
          ),
          Expanded(
              child: Form(
            key: viewModel.formKey,
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                  key: Key(viewModel.phoneNumber.toString()),
                  initialValue: viewModel.phoneNumber,
                  onChanged: viewModel.updatePhoneNumber,
                  style: TextStyle(
                    fontSize: 16,
                    color: COLOR_GRAY,
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) =>
                      viewModel.validatePhoneNumber(value: value),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 12, height: 0.3),
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: getTranslatedValues("mobile_no"),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: COLOR_GRAY_BLACK,
                    ),
                  )),
            ),
          )),
        ],
      ),
    );
  }
}

class LoadSvgImage extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return SvgPicture.asset(
      'assets/images/login_vector.svg',
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.width / 2,
    );
  }
}
