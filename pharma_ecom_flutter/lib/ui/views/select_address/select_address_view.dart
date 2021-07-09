import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/select_address/select_address_view_model.dart';
import 'package:stacked/stacked.dart';

class SelectAddressView extends StatelessWidget {
  final bool proceesToPayFalg;
  SelectAddressView({Key key, this.proceesToPayFalg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectAddressViewModel>.reactive(
      viewModelBuilder: () => SelectAddressViewModel(),
      onModelReady: (model) => model.loadData(proceedtoPay: proceesToPayFalg),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("address"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontSize: 16,
            )),
          ),
          actions: <Widget>[
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  SelectAddressWidgetList(),
                  model.addressResponseLocal != null &&
                          model.addressResponseLocal.data.length != 0
                      ? SelectAddressButton()
                      : Container(),
                  model.addressResponseLocal != null &&
                          model.addressResponseLocal.data.length <= 0
                      ? Container(
                          child: Center(
                            child: Text(
                              getTranslatedValues("no_add_available"),
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
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

class SelectAddressWidgetList extends ViewModelWidget<SelectAddressViewModel> {
  @override
  Widget build(BuildContext context, SelectAddressViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 15),
          AddNewAddressViewTitleRow(),
          ListOfCustomerAddressDetails(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}

class AddNewAddressViewTitleRow
    extends ViewModelWidget<SelectAddressViewModel> {
  @override
  Widget build(BuildContext context, SelectAddressViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              getTranslatedValues("delivery_address"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 20.0,
                    color: COLOR_PRIMARY,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => viewModel.btnAddNewAddress(),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: COLOR_PRIMARY,
                child: Icon(
                  Icons.add,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListOfCustomerAddressDetails
    extends ViewModelWidget<SelectAddressViewModel> {
  @override
  Widget build(BuildContext context, SelectAddressViewModel viewModel) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: viewModel.addressResponseLocal != null &&
                viewModel.addressResponseLocal.data.length > 0
            ? viewModel.addressResponseLocal.data.length
            : 0,
        padding: EdgeInsets.all(0.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 25,
                ),
                Flexible(
                  child: Container(
                      width: 50,
                      margin: EdgeInsets.only(top: 18),
                      child: GestureDetector(
                        onTap: () =>
                            viewModel.updateCheckBoxPosition(index: index),
                        child: index == viewModel.selectedCheckBoxIndex
                            ? SvgPicture.asset(
                                'assets/icons/radiobutton.svg',
                                width: 18,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.radio_button_off,
                                size: 20,
                              ),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 10,
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              viewModel.getLabel(
                                  label: viewModel
                                      .addressResponseLocal.data[index].label),
                              textAlign: TextAlign.start,
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${viewModel.addressResponseLocal.data[index].name}",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${viewModel.addressResponseLocal.data[index].address1}, ${viewModel.addressResponseLocal.data[index].address2},\n${viewModel.addressResponseLocal.data[index].city}, ${viewModel.addressResponseLocal.data[index].state}, ${viewModel.addressResponseLocal.data[index].country}",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.nunitoSans(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      viewModel.editAddressPressed(index),
                                  child: Text(
                                    "Edit",
                                    //viewModel.allAddressList.elementAt(index).label,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          color: COLOR_PRIMARY,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showMaterialModalBottomSheet(
                                      expand: false,
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) => Container(
                                        height: 200,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              getTranslatedValues(
                                                  'delete_message'),
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
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    onPressed: () {
                                                      viewModel.onDeletePressed(
                                                          viewModel
                                                              .addressResponseLocal
                                                              .data[index]
                                                              .id);
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text(
                                                      getTranslatedValues(
                                                          'yes'),
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: GoogleFonts
                                                          .nunitoSans(
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
                                                            color:
                                                                COLOR_PRIMARY)),
                                                    child: FlatButton(
                                                      height: 48,
                                                      color: COLOR_White,
                                                      textColor: COLOR_PRIMARY,
                                                      splashColor:
                                                          COLOR_PRIMARY,
                                                      minWidth:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        getTranslatedValues(
                                                            'no'),
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: GoogleFonts
                                                            .nunitoSans(
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
                                    "Delete",
                                    //viewModel.allAddressList.elementAt(index).label,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          color: COLOR_GRAY_BLACK,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 4, top: 12, right: 12),
                              child: Divider(height: 1, color: COLOR_GRAY),
                            )
                          ]),
                    )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        });
  }
}

class SelectAddressButton extends ViewModelWidget<SelectAddressViewModel> {
  @override
  Widget build(BuildContext context, SelectAddressViewModel viewModel) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      left: 0.0,
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 25.0, right: 35.0),
        child: FlatButton(
          height: 50,
          color: COLOR_PRIMARY,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: COLOR_PRIMARY,
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            viewModel.onSelectAddressBtnPressed();
          },
          child: Text(
            getTranslatedValues("select_address"),
            style: GoogleFonts.lato(
              textStyle:
                  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
