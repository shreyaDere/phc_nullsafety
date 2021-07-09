import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/upload_prescription/upload_prescription_view_model.dart';
import 'package:stacked/stacked.dart';

class UploadPrescriptionView extends StatelessWidget {
  const UploadPrescriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UploadPrescriptionViewModel>.reactive(
      viewModelBuilder: () => UploadPrescriptionViewModel(),
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
            getTranslatedValues("upload_prescription"),
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
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                    child: UploadPrescriptionWidgetList()),
                model.isBusy ? showLoader(context: context) : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UploadPrescriptionWidgetList
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          PrescriptionGuideView(),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              getTranslatedValues("upload_prescription_image"),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          UploadNewPrescriptionView(),
          SizedBox(
            height: 15,
          ),
          AddTitleForPrescription(),
          SizedBox(
            height: 20,
          ),
          AddCommentForPrescription(),
          SizedBox(
            height: 30,
          ),
          UploadMemberIdImage(),
          SizedBox(
            height: 10,
          ),
          Text(
            getTranslatedValues("upload_id"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
          ),
          Visibility(
            visible: viewModel.showError,
            child: Text(
              getTranslatedValues("id_validation_message"),
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            getTranslatedValues("select_prescription_type"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 15,
          ),
          RowInsureanceNonInsurance(),
          SizedBox(
            height: 20,
          ),
          UploadInsuanceImage(),
          SizedBox(
            height: 20,
          ),
          Text(
            getTranslatedValues("upload_img"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
          ),
          SizedBox(
            height: 20,
          ),
          SubmitBtn(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

class PrescriptionGuideView
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, viewModel) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? Text(
                          getTranslatedValues("valid_prescription_guide"),
                          // textAlign: TextAlign.left,
                          style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  color: COLOR_PRIMARY,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                            top: 6.0,
                            bottom: 6.0,
                            right: 6.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 8.0),
                                        child: Icon(
                                          Icons.brightness_1,
                                          color: COLOR_PRIMARY,
                                          size: 14,
                                        ))),
                                TextSpan(
                                  text: "Point $index ",
                                  style: GoogleFonts.nunitoSans(
                                      textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        );
                }),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 170,
              width: 150,
              color: COLOR_PRIMARY_LIGHT,
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
                  imageUrl:
                      "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
            ),
          )
        ],
      ),
    );
  }
}

class UploadNewPrescriptionView
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, viewModel) {
    return Container(
      height: 155,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.listOfPrescriptionList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            margin: EdgeInsets.only(right: 10),
                            child: Image.file(
                                viewModel.listOfPrescriptionList
                                    .elementAt(index),
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                              right: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  onTap: () => viewModel.deletePicture(index),
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(Icons.close, size: 12),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  );
                }),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  height: 155,
                  padding: EdgeInsets.only(right: 10.0, bottom: 5.0),
                  child: DottedBorder(
                    color: COLOR_PRIMARY,
                    strokeWidth: 1,
                    child: GestureDetector(
                      onTap: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            height: 150,
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
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                        onPressed: () {
                                          viewModel.getImageFromGallary(
                                              true, 0);
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
                                                width: 1,
                                                color: COLOR_PRIMARY)),
                                        child: FlatButton(
                                          height: 48,
                                          color: COLOR_White,
                                          textColor: COLOR_PRIMARY,
                                          splashColor: COLOR_PRIMARY,
                                          minWidth:
                                              MediaQuery.of(context).size.width,
                                          onPressed: () {
                                            viewModel.getImageFromCamera(
                                                true, 0);
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            getTranslatedValues(
                                                'title_capture'),
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
                      child: Center(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: COLOR_PRIMARY,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                    visible: viewModel.listOfPrescriptionList.length > 4,
                    child: Container(
                      height: 185,
                      width: 160,
                      color: Colors.white54,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AddTitleForPrescription
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return Form(
      key: viewModel.formKey,
      child: Container(
        height: 50,
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
            key: Key(viewModel.titleForPrescription.toString()),
            initialValue: viewModel.titleForPrescription,
            onChanged: viewModel.updateTitleForPrescription,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            onFieldSubmitted: (v) => viewModel.requestNextFocus(),
            validator: (value) => viewModel.validateName(value: value),
            decoration: InputDecoration(
              hintText: getTranslatedValues('add_title_for_prescription'),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.all(14.0),
              hintStyle: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddCommentForPrescription
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return Container(
      height: 50,
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
          key: Key(viewModel.commentForPrescription.toString()),
          initialValue: viewModel.commentForPrescription,
          onChanged: viewModel.updateCommentForPrescription,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.name,
          onFieldSubmitted: (v) => viewModel.requestNextFocus(),
          // validator: (value) =>
          //     viewModel.validateEmail(value: value),
          decoration: InputDecoration(
            hintText: getTranslatedValues('add_your_comment'),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.all(14.0),
            hintStyle: GoogleFonts.nunitoSans(
              textStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

class UploadMemberIdImage extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 25,
      height: 150,
      margin: EdgeInsets.only(right: 10, left: 10),
      child: viewModel.memberId == null
          ? DottedBorder(
              // padding: const EdgeInsets.all(30.0),
              color: COLOR_PRIMARY,
              strokeWidth: 1,
              child: GestureDetector(
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
                                    viewModel.getImageFromGallary(false, 1);
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
                                      viewModel.getImageFromCamera(false, 1);
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
                  );
                },
                child: Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: COLOR_PRIMARY,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            )
          : Image.file(viewModel.memberId, fit: BoxFit.fitWidth),
    );
  }
}

class RowInsureanceNonInsurance
    extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => viewModel.updateInsuranceFlag(insuranceFlag: false),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: viewModel.insuranceFlag ? COLOR_White : COLOR_PRIMARY,
                  border: Border.all(color: COLOR_PRIMARY)),
              child: Center(
                child: Text(
                  getTranslatedValues("non_insurance"),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color:
                          viewModel.insuranceFlag ? COLOR_PRIMARY : COLOR_White,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => viewModel.updateInsuranceFlag(insuranceFlag: true),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: viewModel.insuranceFlag ? COLOR_PRIMARY : COLOR_White,
                  border: Border.all(color: COLOR_PRIMARY)),
              child: Center(
                child: Text(
                  getTranslatedValues("insurance"),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color:
                          viewModel.insuranceFlag ? COLOR_White : COLOR_PRIMARY,
                      fontSize: 16,
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

class UploadInsuanceImage extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return Visibility(
      visible: viewModel.insuranceFlag,
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 25,
        height: 150,
        margin: EdgeInsets.only(right: 10, left: 10),
        child: viewModel.insuranceImage == null
            ? DottedBorder(
                // padding: const EdgeInsets.all(30.0),
                color: Colors.grey,
                strokeWidth: 1,
                child: GestureDetector(
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
                                      viewModel.getImageFromGallary(false, 2);
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
                                        viewModel.getImageFromCamera(false, 2);
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
                    );
                  },
                  child: Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[400],
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ))
            : Image.file(viewModel.insuranceImage, fit: BoxFit.fitWidth),
      ),
    );
  }
}

class SubmitBtn extends ViewModelWidget<UploadPrescriptionViewModel> {
  @override
  Widget build(BuildContext context, UploadPrescriptionViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      minWidth: MediaQuery.of(context).size.width,
      onPressed: () => viewModel.onSubmitBtnPressed(),
      child: Text(
        getTranslatedValues("submit"),
        style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
