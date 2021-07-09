import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/edit_profile/edit_profile_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_rounded_date_picker/src/material_rounded_date_picker_style.dart';
import 'package:flutter_rounded_date_picker/src/material_rounded_year_picker_style.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditProfileViewModel>.reactive(
      viewModelBuilder: () => EditProfileViewModel(),
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
            getTranslatedValues("profile_page"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(fontSize: 18.0, color: Colors.white)),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(children: <Widget>[
            EditProfileWidgetList(),
            model.isBusy ? showLoader(context: context) : Container()
          ]),
        ),
      ),
    );
  }
}

class EditProfileWidgetList extends ViewModelWidget<EditProfileViewModel> {
  @override
  Widget build(BuildContext context, EditProfileViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            height: 160,
            color: COLOR_PRIMARY,
            child: ProfileContainer(),
          ),
          SizedBox(
            height: 25,
          ),
          NubmerFavouriteOrderContainer(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Text(
              getTranslatedValues('personal_info'),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16.0)),
            ),
          ),
          SizedBox(height: 20),
          EditProfileTextFields(),
          SizedBox(height: 20),
          ButtonUpdate(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ProfileContainer extends ViewModelWidget<EditProfileViewModel> {
  @override
  Widget build(BuildContext context, EditProfileViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 150,
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            child: Stack(children: [
              Container(
                  height: 120,
                  width: 130,
                  child: viewModel.pickedImage != null
                      ? Image.file(viewModel.pickedImage)
                      : CachedNetworkImage(
                          errorWidget: (context, url, error) => Container(
                                child: SvgPicture.asset(
                                  'assets/icons/profile2.svg',
                                ),
                              ),
                          placeholder: (context, url) => Container(
                                child: SvgPicture.asset(
                                  'assets/icons/profile2.svg',
                                ),
                              ),
                          fadeInCurve: Curves.fastOutSlowIn,
                          fit: BoxFit.cover,
                          imageUrl: viewModel.imageUrl != null &&
                                  viewModel.imageUrl.isNotEmpty
                              ? "$BASE_URL/profile_pictures/${viewModel.imageUrl}"
                              : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")),
              Positioned(
                  bottom: 0,
                  right: 0,
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
                                    fontWeight: FontWeight.bold,
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
                                      minWidth:
                                          MediaQuery.of(context).size.width,
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
                                        minWidth:
                                            MediaQuery.of(context).size.width,
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
                    child: Container(
                      width: 23,
                      height: 23,
                      color: COLOR_PRIMARY,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ))
            ]),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.only(top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${viewModel.firstName} ${viewModel.lastName}",
                  maxLines: 1,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        color: COLOR_White,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          getTranslatedValues("reward"),
                          maxLines: 1,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                color: COLOR_White,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          viewModel.rewardPoint != null
                              ? viewModel.rewardPoint.toStringAsFixed(2)
                              : "00",
                          maxLines: 1,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                color: COLOR_White,
                                fontSize: 38,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class NubmerFavouriteOrderContainer
    extends ViewModelWidget<EditProfileViewModel> {
  @override
  Widget build(BuildContext context, EditProfileViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      height: 80,
      color: COLOR_PRIMARY,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: COLOR_PRIMARY_LIGHT,
                    child: Text(
                      viewModel.favProductNumber.toString(),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    getTranslatedValues('fav_product'),
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: COLOR_PRIMARY_LIGHT,
                    child: Text(
                      viewModel.orders.toString(),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    getTranslatedValues('no_of_order'),
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class EditProfileTextFields extends ViewModelWidget<EditProfileViewModel> {
  @override
  Widget build(BuildContext context, EditProfileViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      decoration: BoxDecoration(border: Border.all(color: COLOR_GRAY_BLACK)),
      child: Form(
        key: viewModel.formKey,
        child: Column(
          children: [
            Container(
              height: viewModel.isErrorThrough ? 70 : 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: COLOR_GRAY_BLACK),
                ),
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.firstName.toString()),
                  initialValue: viewModel.firstName.contains("Name")
                      ? ""
                      : viewModel.firstName,
                  onChanged: viewModel.updateFirstName,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  // validator: (value) => viewModel.validateName(value: value),
                  decoration: InputDecoration(
                    hintText: getTranslatedValues('name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(14.0),
                    hintStyle: GoogleFonts.nunitoSans(
                      textStyle:
                          TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: viewModel.isErrorThrough ? 70 : 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: COLOR_GRAY_BLACK),
                ),
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.lastName.toString()),
                  initialValue: viewModel.lastName.contains("Lastname")
                      ? ""
                      : viewModel.lastName,
                  onChanged: viewModel.updateLastName,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  // validator: (value) => viewModel.validateName(value: value),
                  decoration: InputDecoration(
                    hintText: getTranslatedValues('lastname'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(14.0),
                    hintStyle: GoogleFonts.nunitoSans(
                      textStyle:
                          TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: viewModel.isErrorThrough ? 70 : 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: COLOR_GRAY_BLACK),
                ),
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  readOnly: true,
                  enableInteractiveSelection: true,
                  key: Key(viewModel.dateOfBirth.toString()),
                  initialValue: viewModel.dateOfBirth,
                  onChanged: viewModel.updateDateOfBirth,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  // validator: (value) => viewModel.validateDOB(value: value),
                  decoration: InputDecoration(
                    hintText: getTranslatedValues('date_of_birth'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(14.0),
                    hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                  ),
                  onTap: () async {
                    DateTime newDateTime = await showRoundedDatePicker(
                      context: context,
                      theme: ThemeData(primarySwatch: Colors.red),
                      styleDatePicker: MaterialRoundedDatePickerStyle(
                          textStyleDayButton:
                              TextStyle(fontSize: 30, color: Colors.white),
                          textStyleYearButton: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                          ),
                          textStyleDayHeader: TextStyle(
                            fontSize: 16,
                            color: Colors.red[800],
                          ),
                          textStyleCurrentDayOnCalendar: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textStyleDayOnCalendar:
                              TextStyle(fontSize: 16, color: Colors.black),
                          textStyleDayOnCalendarSelected: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textStyleDayOnCalendarDisabled: TextStyle(
                              fontSize: 16,
                              color: Colors.black87.withOpacity(0.3)),
                          textStyleMonthYearHeader: TextStyle(
                              fontSize: 18,
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold),
                          paddingDatePicker: EdgeInsets.all(5),
                          paddingMonthHeader: EdgeInsets.all(32),
                          paddingActionBar: EdgeInsets.all(16),
                          paddingDateYearHeader: EdgeInsets.all(32),
                          sizeArrow: 50,
                          colorArrowNext: Colors.red[800],
                          colorArrowPrevious: Colors.red[800],
                          marginLeftArrowPrevious: 16,
                          marginTopArrowPrevious: 16,
                          marginTopArrowNext: 16,
                          marginRightArrowNext: 32,
                          textStyleButtonAction:
                              TextStyle(fontSize: 18, color: Colors.white),
                          textStyleButtonPositive: TextStyle(
                              fontSize: 16,
                              color: Colors.red[800],
                              fontWeight: FontWeight.bold),
                          textStyleButtonNegative: TextStyle(
                              fontSize: 16,
                              color: Colors.black87.withOpacity(0.3)),
                          decorationDateSelected: BoxDecoration(
                              color: Colors.red[800], shape: BoxShape.circle),
                          backgroundPicker: Colors.white,
                          backgroundActionBar: Colors.white,
                          backgroundHeaderMonth: Colors.transparent),
                      styleYearPicker: MaterialRoundedYearPickerStyle(
                        textStyleYear:
                            TextStyle(fontSize: 36, color: Colors.red[800]),
                        textStyleYearSelected: TextStyle(
                            fontSize: 46,
                            color: Colors.red[800],
                            fontWeight: FontWeight.bold),
                        heightYearRow: 100,
                        backgroundPicker: Colors.white,
                      ),
                      initialDate: viewModel.initialDate(),
                      firstDate: DateTime(DateTime.now().year - 50),
                      lastDate: DateTime(DateTime.now().year - 16),
                      borderRadius: 2,
                    );
                    viewModel.changeDate(newDateTime);
                  },
                ),
              ),
            ),
            Container(
              height: viewModel.isErrorThrough ? 70 : 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: COLOR_GRAY_BLACK),
                ),
              ),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.email.toString()),
                  initialValue: viewModel.email,
                  onChanged: viewModel.updateEmail,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) => viewModel.validateEmail(value: value),
                  decoration: InputDecoration(
                    hintText: getTranslatedValues('edit_email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(14.0),
                    hintStyle: GoogleFonts.nunitoSans(
                      textStyle:
                          TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 15.0),
              height: viewModel.isErrorThrough ? 70 : 50,
              width: MediaQuery.of(context).size.width,
              // color: Colors.transparent,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 1.0, color: COLOR_GRAY_BLACK),
              )),
              child: Text(
                viewModel.phoneNumber == null ? "" : viewModel.phoneNumber,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Container(
              height: viewModel.isErrorThrough ? 70 : 50,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  key: Key(viewModel.selectedGenderValue.toString()),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none),
                  hint: Text(
                    viewModel.genderHint,
                    style: TextStyle(
                      fontSize: 14,
                      color: COLOR_GRAY_BLACK,
                    ),
                  ),
                  items: viewModel.genderArray
                      .map((value) => DropdownMenuItem(
                            child: Text(value,
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                )),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (String value) => viewModel.updateGender(value),
                  isExpanded: false,
                  value: viewModel.selectedGenderValue,
                  // validator: (value) => viewModel.validateGender(value: value),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonUpdate extends ViewModelWidget<EditProfileViewModel> {
  @override
  Widget build(BuildContext context, EditProfileViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: FlatButton(
          onPressed: () => viewModel.onUpdatePressed(),
          padding: EdgeInsets.only(top: 15, bottom: 15),
          minWidth: MediaQuery.of(context).size.width,
          color: COLOR_PRIMARY,
          splashColor: COLOR_PRIMARY,
          child: Text(
            getTranslatedValues('btn_update'),
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )),
    );
  }
}
