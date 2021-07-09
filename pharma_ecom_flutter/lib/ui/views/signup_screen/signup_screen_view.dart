import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/signup_screen/signup_view_model.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewViewModel>.reactive(
      viewModelBuilder: () => SignUpViewViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          top: true,
          child: Stack(
            children: <Widget>[
              LoginScreenContaint(),
              model.isBusy ? showLoader(context: context) : Container()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
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
    );
  }
}

class LoginScreenContaint extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 30, right: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            ProfileImageContainer(),
            SizedBox(height: 20),
            Text(
              getTranslatedValues("title_sign_up"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  color: COLOR_GRAY,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            ProfileEditForm(),
            SizedBox(height: 20),
            GenderContainer(),
            SizedBox(height: 8),
            SizedBox(height: 25),
            ButtonSignUp(),
            SizedBox(height: 20),
            DividerClass(),
            SizedBox(height: 20),
            SocialMediaLogins(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class ButtonSignUp extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: FlatButton(
          onPressed: () => viewModel.saveBtn(),
          color: COLOR_PRIMARY,
          splashColor: COLOR_PRIMARY,
          child: Text(
            getTranslatedValues("text_save"),
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          )),
    );
  }
}

class DividerClass extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 1,
              color: COLOR_GRAY_BLACK,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            getTranslatedValues("or"),
            style: TextStyle(
              color: COLOR_GRAY_BLACK,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 1,
            color: COLOR_GRAY_BLACK,
          ),
        ),
      ],
    );
  }
}

class SocialMediaLogins extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 45,
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(color: Color(0XFF38A1FC)),
            child: FlatButton(
                height: 45,
                color: Colors.white,
                splashColor: COLOR_PRIMARY,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () => viewModel.signupGoogle(),
                child: SvgPicture.asset(
                  'assets/icons/google-glass-logo.svg',
                  width: 20,
                  height: 20,
                  color: Color(0XFF38A1FC),
                )),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Container(
            height: 45,
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(color: Color(0xFF1A5598)),
            child: FlatButton(
                height: 45,
                color: Colors.white,
                splashColor: COLOR_PRIMARY,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () => viewModel.loginWithFacebook(context: context),
                child: SvgPicture.asset(
                  'assets/images/facebook-app-symbol.svg',
                  width: 20,
                  height: 20,
                  color: Color(0xFF1A5598),
                )),
          ),
        ),
      ],
    );
  }
}

class ProfileImageContainer extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: viewModel.image != null && viewModel.image != null
                ? Image(
                    image: FileImage(viewModel
                        .pickedImage), //AssetImage('${viewModel.image.path}'),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width / 2.5,
                    width: MediaQuery.of(context).size.width / 2.5,
                  )
                : SvgPicture.asset(
                    "assets/icons/profile_placeholder.svg",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width / 2.5,
                  )),
        Positioned(
          bottom: 0.0,
          right: 10.0,
          child: GestureDetector(
            onTap: () => {
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
                        getTranslatedValues('camera_btmsheet_tltle'),
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
                                viewModel.getImageFromGallary();
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                getTranslatedValues('title_upload'),
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
                                  viewModel.getImageFromCamera();
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  getTranslatedValues('title_capture'),
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
              )
            },
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFF262863),
              child: Icon(Icons.camera_alt, size: 16, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class ProfileEditForm extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Form(
      key: viewModel.formKey,
      child: Column(
        children: [
          Container(
            child: Theme(
                data: ThemeData(
                  primaryColor: COLOR_GRAY_BLACK,
                ),
                child: TextFormField(
                  key: Key(viewModel.firstName.toString()),
                  initialValue: viewModel.firstName,
                  onChanged: viewModel.updateFirstName,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY,
                      fontSize: 14,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  // validator: (value) =>
                  //     viewModel.validateFirstName(value: value),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide:
                            BorderSide(width: 1, color: COLOR_GRAY_BLACK)),
                    contentPadding: EdgeInsets.all(14.0),
                    hintText: getTranslatedValues("first_name"),
                    hintStyle: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                        color: COLOR_GRAY_BLACK,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )),
          ),
          SizedBox(height: 20),
          Container(
            child: Theme(
              data: ThemeData(
                primaryColor: COLOR_GRAY_BLACK,
              ),
              child: TextFormField(
                key: Key(viewModel.lastName.toString()),
                initialValue: viewModel.lastName,
                onChanged: viewModel.updateLastName,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontSize: 14,
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                //validator: (value) => viewModel.validateLastName(value: value),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide:
                          BorderSide(width: 1, color: COLOR_GRAY_BLACK)),
                  contentPadding: EdgeInsets.all(14.0),
                  hintText: getTranslatedValues("last_name"),
                  hintStyle: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY_BLACK,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Theme(
              data: ThemeData(
                primaryColor: COLOR_GRAY_BLACK,
              ),
              child: TextFormField(
                key: Key(viewModel.email.toString()),
                initialValue: viewModel.email,
                onChanged: viewModel.updateEmail,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontSize: 14,
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                validator: (value) => viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide:
                          BorderSide(width: 1, color: COLOR_GRAY_BLACK)),
                  contentPadding: EdgeInsets.all(14.0),
                  hintText: getTranslatedValues("email"),
                  hintStyle: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY_BLACK,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GenderContainer extends ViewModelWidget<SignUpViewViewModel> {
  @override
  Widget build(BuildContext context, SignUpViewViewModel viewModel) {
    return Row(
      children: [
        Text(
          getTranslatedValues("gender"),
          style: TextStyle(color: COLOR_GRAY, fontSize: 16),
        ),
        SizedBox(width: 50),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.clickGender(gendarStatus: 1),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color:
                    viewModel.genderStatus != 0 && viewModel.genderStatus == 1
                        ? COLOR_PRIMARY
                        : Colors.transparent,
                border: Border.all(width: 1, color: COLOR_GRAY_BLACK),
              ),
              child: Center(
                child: Text(
                  getTranslatedValues("male"),
                  textAlign: TextAlign.right,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: viewModel.genderStatus != 0 &&
                              viewModel.genderStatus == 1
                          ? COLOR_White
                          : COLOR_GRAY_BLACK,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.clickGender(gendarStatus: 2),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color:
                    viewModel.genderStatus != 0 && viewModel.genderStatus == 2
                        ? COLOR_PRIMARY
                        : Colors.transparent,
                border: Border.all(width: 1, color: COLOR_GRAY_BLACK),
              ),
              child: Center(
                child: Text(
                  getTranslatedValues("female"),
                  textAlign: TextAlign.right,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: viewModel.genderStatus != 0 &&
                              viewModel.genderStatus == 2
                          ? COLOR_White
                          : COLOR_GRAY_BLACK,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
