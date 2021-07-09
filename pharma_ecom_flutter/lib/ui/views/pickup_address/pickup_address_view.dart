import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/pickup_address/pickup_address_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';

class PickupAddressView extends StatelessWidget {
  final int orderType;
  final int deliveryType;
  final BuiltList<UniversalProduct> productList;
  final CartTotResponse cartTotResponse;
  const PickupAddressView(
      {this.orderType,
      this.deliveryType,
      Key key,
      this.productList,
      this.cartTotResponse})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PickupAddressViewModel>.reactive(
      viewModelBuilder: () => PickupAddressViewModel(),
      onModelReady: (model) => model.loadData(
          orderType: orderType,
          deliveryType: deliveryType,
          productList: productList,
          cartTotResponse: cartTotResponse),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("select_address"),
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
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("SelectAddressWidgetList"),
              child: Stack(
                children: <Widget>[
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height / 2,
                  //   child: GoogleMap(
                  //     onMapCreated: model.onMapCreated,
                  //     initialCameraPosition: CameraPosition(
                  //       target: model.center,
                  //       zoom: 11.0,
                  //     ),
                  //   ),
                  // ),
                  PickUpAddressWidgetList(),
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

class PickUpAddressWidgetList extends ViewModelWidget<PickupAddressViewModel> {
  @override
  Widget build(BuildContext context, PickupAddressViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 10.0, right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(getTranslatedValues('title_pickup_address'),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
          SizedBox(height: 20),
          PickAddressOverviewContainer(),
          SizedBox(height: 20),
          Text(getTranslatedValues('here_your_unique_code'),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )),
          SizedBox(height: 5),
          Container(
            height: 40.0,
            child: Text(
                viewModel.addressData != null
                    ? viewModel.addressData.pickupCode.toString()
                    : "",
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          Text(getTranslatedValues("pickup_person_name"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              )),
          SizedBox(height: 5),
          Container(
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.personName.toString()),
                initialValue: viewModel.personName,
                onChanged: viewModel.updatePersonName,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontSize: 14,
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide(width: 1, color: COLOR_GRAY)),
                  contentPadding: EdgeInsets.all(14.0),
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
          Text(getTranslatedValues("mobile_no"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              )),
          SizedBox(height: 5),
          Container(
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.mobileNo.toString()),
                initialValue: viewModel.mobileNo,
                keyboardType: TextInputType.number,
                onChanged: viewModel.updatePhoneNumber,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontSize: 14,
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide(width: 1, color: COLOR_GRAY)),
                  contentPadding: EdgeInsets.all(14.0),
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
          SizedBox(
            height: 30,
          ),
          SubmitBtn()
        ],
      ),
    );
  }
}

class PickAddressOverviewContainer
    extends ViewModelWidget<PickupAddressViewModel> {
  @override
  Widget build(BuildContext context, PickupAddressViewModel viewModel) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black26,
      )),
      height: 70,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          itemHeight: 70,
          isDense: false,
          key: Key(viewModel.selectedAddressValue.toString()),
          decoration: InputDecoration(
              enabledBorder: InputBorder.none, errorBorder: InputBorder.none),
          hint: Text(
            viewModel.addressHint,
            style: TextStyle(
              fontSize: 14,
              color: COLOR_GRAY_BLACK,
            ),
          ),
          items: viewModel.addressArray
              .map((value) => DropdownMenuItem(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 100,
                      padding: EdgeInsets.only(bottom: 4.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: COLOR_GRAY_BLACK))),
                      child: Text(value,
                          maxLines: 5,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    value: value,
                  ))
              .toList(),
          onChanged: (String value) => viewModel.updateAddress(value),
          isExpanded: false,
          value: viewModel.selectedAddressValue,
        ),
      ),
    );
  }
}

class SubmitBtn extends ViewModelWidget<PickupAddressViewModel> {
  @override
  Widget build(BuildContext context, PickupAddressViewModel viewModel) {
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
