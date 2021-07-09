import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/prescription_bnav/prescription_bnav_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:flutter_svg/svg.dart';

class PrescriptionView extends StatelessWidget {
  const PrescriptionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrescriptionViewModel>.reactive(
      viewModelBuilder: () => PrescriptionViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Stack(
              children: <Widget>[
                model.isBusy
                    ? PrescriptionShimmerEffect()
                    : model.presciptionData != null &&
                            model.presciptionData.length > 0
                        ? PrescriptionWidgetList()
                        : EmptyList(),
                BtnUploadPrescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyList extends ViewModelWidget<PrescriptionViewModel> {
  @override
  Widget build(BuildContext context, PrescriptionViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/wishlist_missing.svg",
            height: 230,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            getTranslatedValues("no_active_pre"),
            textAlign: TextAlign.center,
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
            getTranslatedValues("empty_pre_msg"),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: COLOR_BLACK,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            getTranslatedValues("empty_pre_note"),
            textAlign: TextAlign.center,
            maxLines: 2,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  color: COLOR_BLACK,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}

class PrescriptionWidgetList extends ViewModelWidget<PrescriptionViewModel> {
  @override
  Widget build(BuildContext context, PrescriptionViewModel viewModel) {
    return Container(
        margin: EdgeInsets.all(15.0),
        color: Colors.white,
        child: viewModel.reversepresciptionData != null
            ? ListView.builder(
                itemCount: viewModel.reversepresciptionData.length > 0
                    ? viewModel.reversepresciptionData.length
                    : 0,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => viewModel.navigateToPrescriptionStatusView(
                        index: index),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 10.0, left: 5.0, right: 5.0, bottom: 4.0),
                      padding: EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: COLOR_GRAY_BLACK,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          ),
                          BoxShadow(
                            color: COLOR_GRAY_BLACK,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                -2.0, -2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(bottom: 10),
                            // padding: EdgeInsets.all(10.0),
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
                                //  fadeInCurve: Curves.fastOutSlowIn,
                                fit: BoxFit.cover,
                                imageUrl: BASE_URL +
                                    "/assets/" +
                                    viewModel.reversepresciptionData[index]
                                        .prescriptionImage[0]),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                viewModel.reversepresciptionData[index]
                                    .prescriptionTitle,
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                viewModel.getDate(index),
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                viewModel.time,
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                viewModel.reversepresciptionData[index]
                                            .prescriptionStatus ==
                                        2
                                    ? getTranslatedValues("inprogress")
                                    : viewModel.reversepresciptionData[index]
                                                .prescriptionStatus ==
                                            1
                                        ? getTranslatedValues("approved")
                                        : viewModel
                                                    .reversepresciptionData[
                                                        index]
                                                    .prescriptionStatus ==
                                                0
                                            ? getTranslatedValues("denied")
                                            : getTranslatedValues("submitted"),
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      color: viewModel
                                                  .reversepresciptionData[index]
                                                  .prescriptionStatus ==
                                              2
                                          ? Colors.amber
                                          : viewModel
                                                      .reversepresciptionData[
                                                          index]
                                                      .prescriptionStatus ==
                                                  1
                                              ? Colors.green
                                              : viewModel
                                                          .reversepresciptionData[
                                                              index]
                                                          .prescriptionStatus ==
                                                      0
                                                  ? Colors.red
                                                  : Colors.blue,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          getTranslatedValues(
                                              'clear_list_item'),
                                          textAlign: TextAlign.center,
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
                                                minWidth: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                onPressed: () {
                                                  viewModel.onYesClick(
                                                      id: viewModel
                                                          .reversepresciptionData[
                                                              index]
                                                          .sId);
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
                                                        width: 1,
                                                        color: COLOR_PRIMARY)),
                                                child: FlatButton(
                                                  height: 48,
                                                  color: COLOR_White,
                                                  textColor: COLOR_PRIMARY,
                                                  splashColor: COLOR_PRIMARY,
                                                  minWidth:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width,
                                                  onPressed: () {
                                                    viewModel.onNoClick();
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    getTranslatedValues('no'),
                                                    textAlign: TextAlign.right,
                                                    style:
                                                        GoogleFonts.nunitoSans(
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
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey[300],
                                child: Icon(Icons.close, size: 13),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
            : Container());
  }
}

class BtnUploadPrescription extends ViewModelWidget<PrescriptionViewModel> {
  @override
  Widget build(BuildContext context, PrescriptionViewModel viewModel) {
    return Positioned(
        bottom: 10.0,
        right: 0.0,
        left: 0.0,
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: FlatButton(
            height: 50,
            color: COLOR_PRIMARY,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            splashColor: COLOR_PRIMARY,
            minWidth: MediaQuery.of(context).size.width - 70,
            onPressed: () => viewModel.onUploadPrescriptionPressed(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera_alt),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  getTranslatedValues("btn_upload_pre"),
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class PrescriptionShimmerEffect extends StatelessWidget {
  const PrescriptionShimmerEffect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NetworkSensitive(
      currentWidget: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey[300],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 130,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
