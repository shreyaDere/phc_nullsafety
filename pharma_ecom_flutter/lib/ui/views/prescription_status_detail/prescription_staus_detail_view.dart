import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/prescription_status_detail/prescription_status_detail_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';

class PrescriptionStatusDetailView extends StatelessWidget {
  final PrescriptionData presciptionData;
  PrescriptionStatusDetailView({Key key, this.presciptionData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PrescriptionStatusDetailViewModel>.reactive(
      viewModelBuilder: () => PrescriptionStatusDetailViewModel(),
      //locator<HomeViewModel>(),
      onModelReady: (model) => model.loadData(presciptionData: presciptionData),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            model.presciptionData.prescriptionStatus == 1
                ? getTranslatedValues("approved_pre")
                : model.presciptionData.prescriptionStatus == 0
                    ? getTranslatedValues("denied_pre")
                    : getTranslatedValues("submit_pre"),
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
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              model.prescriptionDetailsData != null
                  ? PrescriptionStatusWidgetList()
                  : Container(),
              model.isBusy ? showLoader(context: context) : Container()
            ],
          ),
        ),
      ),
    );
  }
}

class PrescriptionStatusWidgetList
    extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getTranslatedValues("uploaded_pre"),
              textAlign: TextAlign.left,
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal)),
            ),
            SizedBox(
              height: 10,
            ),
            PrescriptionList(),
            SizedBox(
              height: 20,
            ),
            RowOfId(),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1.5,
              color: COLOR_GRAY_BLACK,
            ),
            SizedBox(
              height: 15,
            ),
            viewModel.presciptionData.prescriptionStatus == 1
                ? Text(
                    getTranslatedValues("cart"),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: COLOR_PRIMARY,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  )
                : Container(),
            viewModel.presciptionData.prescriptionStatus == 1
                ? CartListView()
                : viewModel.presciptionData.prescriptionStatus == 2
                    ? Container(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/inprocessprc.svg",
                                height: 130,
                              ),
                              Text(
                                getTranslatedValues("in_process"),
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/denied.svg",
                                height: 130,
                              ),
                              Text(
                                getTranslatedValues("denied"),
                                textAlign: TextAlign.left,
                                style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        color: COLOR_PRIMARY,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
            viewModel.presciptionData.prescriptionComment != null &&
                    viewModel.presciptionData.prescriptionComment.isNotEmpty
                ? SizedBox(
                    height: 20,
                  )
                : Container(),
            viewModel.presciptionData.prescriptionComment != null &&
                    viewModel.presciptionData.prescriptionComment.isNotEmpty
                ? Text(
                    viewModel.presciptionData.prescriptionComment,
                    textAlign: TextAlign.left,
                    maxLines: 5,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                  )
                : Container(),
            viewModel.presciptionData.prescriptionComment != null &&
                    viewModel.presciptionData.prescriptionComment.isNotEmpty
                ? Visibility(
                    visible:
                        viewModel.presciptionData.prescriptionStatus != null,
                    child: Divider(
                      thickness: 1.5,
                      color: COLOR_GRAY_BLACK,
                    ),
                  )
                : Container(),
            viewModel.presciptionData.prescriptionComment != null &&
                    viewModel.presciptionData.prescriptionComment.isNotEmpty
                ? SizedBox(
                    height: 20,
                  )
                : Container(),
            viewModel.presciptionData.adminComment != null
                ? Text(
                    "${viewModel.presciptionData.adminComment}",
                    textAlign: TextAlign.left,
                    maxLines: 5,
                    style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                  )
                : Container(),
            viewModel.presciptionData.adminComment != null
                ? Divider(
                    thickness: 1.5,
                    color: COLOR_GRAY_BLACK,
                  )
                : Container(),
            viewModel.presciptionData.adminComment != null
                ? SizedBox(
                    height: 20,
                  )
                : Container(),
            viewModel.presciptionData.prescriptionStatus == 1 &&
                    viewModel.presciptionData.prescriptionValidity == 1 &&
                    viewModel.presciptionData.lineItems.isNotEmpty
                ? BtnCheckout()
                : viewModel.presciptionData.prescriptionStatus == 0
                    ? BtnClose()
                    : BtnOk(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PrescriptionList
    extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return Container(
      height: 150,
      child: viewModel.prescriptionDetailsData == null
          ? Container()
          : ListView.builder(
              itemCount:
                  viewModel.prescriptionDetailsData.prescriptionImage.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 130,
                  margin: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
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
                      fadeInCurve: Curves.fastOutSlowIn,
                      fit: BoxFit.cover,
                      imageUrl:
                          "$BASE_URL/assets/${viewModel.prescriptionDetailsData.prescriptionImage[index]}"),
                );
              }),
    );
  }
}

class CartListView extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return viewModel.prescriptionDetailsData == null
        ? Container()
        : ListView.builder(
            itemCount: viewModel.prescriptionDetailsData.lineItems.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 4.0),
                padding: EdgeInsets.only(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: COLOR_GRAY_BLACK)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.all(10),
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
                            fadeInCurve: Curves.fastOutSlowIn,
                            fit: BoxFit.fill,
                            imageUrl:
                                "$BASE_URL${viewModel.prescriptionDetailsData.lineItems[index].featuredImage}")),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            viewModel.getLanguageChangedText(
                                viewModel
                                    .presciptionData.lineItems[index].product,
                                0),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            viewModel.prescriptionDetailsData.lineItems[index]
                                        .regularPrice ==
                                    null
                                ? ""
                                : "BD ${viewModel.prescriptionDetailsData.lineItems[index].regularPrice.toStringAsFixed(3).toString()}",
                            style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: COLOR_PRIMARY)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            viewModel.prescriptionDetailsData.lineItems[index]
                                        .quantity ==
                                    null
                                ? ""
                                : viewModel.prescriptionDetailsData
                                    .lineItems[index].quantity
                                    .toString(),
                            style: GoogleFonts.nunitoSans(
                              textStyle:
                                  TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            });
  }
}

class RowOfId extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        viewModel.prescriptionDetailsData.memberId.isEmpty
            ? Container()
            : Expanded(
                flex: 1,
                child: MemberIdAndInsuranceID(
                  idName: "member_id",
                  imageName: viewModel.prescriptionDetailsData.memberId,
                ),
              ),
        SizedBox(width: 10),
        viewModel.prescriptionDetailsData.insuranceImage.isEmpty
            ? Container()
            : Expanded(
                flex: 1,
                child: MemberIdAndInsuranceID(
                  idName: "cpr_insurance",
                  imageName: viewModel
                          .prescriptionDetailsData.insuranceImage.isNotEmpty
                      ? viewModel.prescriptionDetailsData.insuranceImage[0]
                      : "",
                ),
              )
      ],
    );
  }
}

class MemberIdAndInsuranceID
    extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  final String idName;
  final String imageName;
  MemberIdAndInsuranceID({this.idName, this.imageName});
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return Container(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslatedValues(idName),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
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
                fadeInCurve: Curves.fastOutSlowIn,
                fit: BoxFit.fill,
                imageUrl: imageName != null && imageName.isNotEmpty
                    ? BASE_URL + "/assets/" + imageName
                    : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
          )
        ],
      ),
    );
  }
}

class BtnOk extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      minWidth: MediaQuery.of(context).size.width - 30,
      onPressed: () => viewModel.btnCloseForDeniedAndProgress(),
      child: Text(
        getTranslatedValues('ok'),
        style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class BtnClose extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return FlatButton(
      height: 50,
      color: COLOR_PRIMARY,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: COLOR_PRIMARY,
      minWidth: MediaQuery.of(context).size.width - 30,
      onPressed: () => viewModel.btnCloseForDeniedAndProgress(),
      child: Text(
        getTranslatedValues('close'),
        style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class BtnCheckout extends ViewModelWidget<PrescriptionStatusDetailViewModel> {
  @override
  Widget build(
      BuildContext context, PrescriptionStatusDetailViewModel viewModel) {
    return Visibility(
      visible: viewModel.prescriptionDetailsData.prescriptionValidity == 1,
      child: FlatButton(
        height: 50,
        color: COLOR_PRIMARY,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: COLOR_PRIMARY,
        minWidth: MediaQuery.of(context).size.width - 70,
        onPressed: () {
          showMaterialModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(height: 20),
                  Text(
                    getTranslatedValues('delivery_type_title'),
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: FlatButton(
                      height: 50,
                      color: COLOR_PRIMARY,
                      textColor: COLOR_White,
                      splashColor: COLOR_PRIMARY,
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        viewModel.navigateToSelfPickUp();
                      },
                      child: Text(
                        getTranslatedValues('self_pickup'),
                        textAlign: TextAlign.right,
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    // padding: EdgeInsets.all(1.0),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: COLOR_PRIMARY)),
                    child: FlatButton(
                      height: 48,
                      color: COLOR_White,
                      textColor: COLOR_PRIMARY,
                      splashColor: COLOR_PRIMARY,
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        viewModel.navigateToDelivery();
                      },
                      child: Text(
                        getTranslatedValues('schedule_delivery'),
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  /* Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          height: 50,
                          color: COLOR_PRIMARY,
                          textColor: COLOR_White,
                          splashColor: COLOR_PRIMARY,
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            viewModel.navigateToSelfPickUp();
                          },
                          child: Text(
                            getTranslatedValues('self_pickup'),
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
                              border:
                                  Border.all(width: 1, color: COLOR_PRIMARY)),
                          child: FlatButton(
                            height: 48,
                            color: COLOR_White,
                            textColor: COLOR_PRIMARY,
                            splashColor: COLOR_PRIMARY,
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: () {
                              viewModel.navigateToDelivery();
                            },
                            child: Text(
                              getTranslatedValues('schedule_delivery'),
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),*/
                ],
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getTranslatedValues("btn_checkout"),
              style: GoogleFonts.lato(
                textStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.arrow_right_alt),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
