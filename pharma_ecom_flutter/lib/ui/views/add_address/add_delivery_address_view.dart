import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/add_address/add_delivery_address_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';

class AddDeliveryAddressView extends StatelessWidget {
  final UniversalResponseAddress address;
  AddDeliveryAddressView({Key key, this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddDeliveryAddressViewModel>.reactive(
      viewModelBuilder: () => AddDeliveryAddressViewModel(),
      onModelReady: (model) => model.loadData(address: address),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: true,
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
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("SelectAddressWidgetList"),
              child: Stack(
                children: <Widget>[
                  AddAddressWidgetList(),
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

class AddAddressWidgetList
    extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 10.0, right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MapContainer(),
          AddressNameRow(),
          SizedBox(height: 20),
          UseCurrentAddressContainer(),
          Text(getTranslatedValues('enter_address_detail'),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: COLOR_GRAY_BLACK),
              )),
          SizedBox(height: 10),
          AddressDetailTextForm(),
          SizedBox(height: 10),
          Text(getTranslatedValues("address_type"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(height: 8),
          AddressTypeRow(),
          SizedBox(height: 8),
          SetDefaultAddress(),
          SizedBox(height: 20),
          SubmitBtn(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class MapContainer extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: GoogleMap(
        zoomControlsEnabled: false,
        compassEnabled: true,
        tiltGesturesEnabled: false,
        onMapCreated: viewModel.onMapCreated,
        myLocationEnabled: true,
        //markers: viewModel.markers.values.toSet(),
        initialCameraPosition: CameraPosition(
          target: LatLng(26.0667, 50.5577),
          zoom: 11.0,
        ),
      ),
    );
  }
}

class UseCurrentAddressContainer
    extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(getTranslatedValues('use_current_address'),
          style: TextStyle(color: Colors.black, fontSize: 14)),
      activeTrackColor: Colors.greenAccent,
      inactiveTrackColor: COLOR_PRIMARY,
      activeColor: Colors.white,
      value: viewModel.enableCurrentLocation,
      onChanged: (value) => viewModel.changeCurrentLocationToggleValue(value),
    );
  }
}

class SetDefaultAddress extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(getTranslatedValues('set_default_address'),
          style: TextStyle(color: Colors.black, fontSize: 14)),
      activeTrackColor: Colors.greenAccent,
      inactiveTrackColor: COLOR_PRIMARY,
      activeColor: Colors.white,
      value: viewModel.setDefaultAddress,
      onChanged: (value) => viewModel.changedefaultAddressToggleValue(value),
    );
  }
}

class AddressNameRow extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                viewModel.userName == null
                    ? getTranslatedValues("name_surname")
                    : viewModel.userName,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunitoSans(
                  textStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                viewModel.userAddress == null
                    ? getTranslatedValues("current_address")
                    : viewModel.userAddress,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 14,
        ),
        GestureDetector(
          onTap: () {
            showMaterialModalBottomSheet(
              expand: false,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => Container(
                margin: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: MediaQuery.of(context).size.height / 2),
                height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.black26,
                        ),
                        child: TextFormField(
                          key: Key(viewModel.userName.toString()),
                          initialValue:
                              viewModel.userName.contains("Name Surname")
                                  ? ""
                                  : viewModel.userName,
                          onChanged: (value) => viewModel.updateUserName(value),
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
                            hintText: getTranslatedValues("name_surname"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                borderSide:
                                    BorderSide(width: 1, color: COLOR_GRAY)),
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
                    SizedBox(height: 30),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: COLOR_PRIMARY)),
                      child: FlatButton(
                        height: 30,
                        color: COLOR_White,
                        textColor: COLOR_PRIMARY,
                        splashColor: COLOR_PRIMARY,
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          getTranslatedValues("done"),
                          textAlign: TextAlign.right,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),
            );
          },
          child: Container(
            height: 30,
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: Color(0xFFF2F8FF),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(color: Color(0XFFC4DFF7))),
            child: Center(
                child: Text(
              getTranslatedValues("change_add_name"),
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: 14,
                    color: COLOR_PRIMARY,
                    fontWeight: FontWeight.w500),
              ),
            )),
          ),
        )
      ],
    );
  }
}

class AddressDetailTextForm
    extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return Form(
        key: viewModel.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(getTranslatedValues("mobile_no"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              height: 50,
              //margin: EdgeInsets.only(left: 30.0, right: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
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
                    padding:
                        const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0),
                    child: Container(
                      width: 2,
                      color: COLOR_GRAY_BLACK,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Theme(
                        data: ThemeData(
                          primaryColor: Colors.black26,
                        ),
                        child: TextFormField(
                          key: Key(viewModel.mobileNo.toString()),
                          initialValue: viewModel.mobileNo,
                          onChanged: viewModel.updatePhoneNumber,
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                              color: COLOR_GRAY,
                              fontSize: 14,
                            ),
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                          validator: (value) =>
                              viewModel.validatePhoneNumber(value: value),
                          decoration: InputDecoration(
                            border: InputBorder.none,
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(getTranslatedValues("villa_flat_building_no"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.vilaFlat.toString()),
                  initialValue: viewModel.vilaFlat,
                  onChanged: viewModel.updateVillaFlat,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY,
                      fontSize: 14,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) =>
                      viewModel.validateFlatVillaBlockNo(value: value),
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
              height: 10,
            ),
            Text(getTranslatedValues("road_street_no"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.roadStreetNo.toString()),
                  initialValue: viewModel.roadStreetNo,
                  onChanged: viewModel.updateRoadStreetNo,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY,
                      fontSize: 14,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) =>
                      viewModel.validateRoadStreet(value: value),
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
              height: 10,
            ),
            Text(getTranslatedValues("area"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.area.toString()),
                  initialValue: viewModel.area,
                  onChanged: viewModel.updateArea,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY,
                      fontSize: 14,
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) => viewModel.validateArea(value: value),
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
              height: 10,
            ),
            Text(getTranslatedValues("block_no"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.blockNo.toString()),
                  initialValue: viewModel.blockNo,
                  onChanged: viewModel.updateLandBlock,
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
              height: 10,
            ),
            /* Text(getTranslatedValues("zip_code"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            Container(
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.black26,
                ),
                child: TextFormField(
                  key: Key(viewModel.zipCode.toString()),
                  initialValue: viewModel.zipCode,
                  onChanged: viewModel.updateZipCode,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: COLOR_GRAY,
                      fontSize: 14,
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                  validator: (value) => viewModel.validateZip(value: value),
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
            ),*/
            SizedBox(
              height: 10,
            ),
            Text(getTranslatedValues("country"),
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 5),
            /* Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black26,
              )),
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  key: Key(viewModel.country.toString()),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none),
                  hint: Text(
                    viewModel.countryHint,
                    style: TextStyle(
                      fontSize: 16,
                      color: viewModel.countryHint.length > 0
                          ? Colors.black54
                          : Colors.grey,
                    ),
                  ),
                  validator: (value) =>
                      viewModel.validateCountry(value: value.toString()),
                  items: viewModel.countryArray
                      .map((value) => DropdownMenuItem(
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (String value) {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    viewModel.updateCountry(value);
                  },
                  isExpanded: false,
                  value: viewModel.country,
                ),
              ),
            ),*/
            Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black26,
                )),
                child: Text(
                  "Bahrain",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black26,
              )),
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  key: Key(viewModel.state.toString()),
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none),
                  hint: Text(
                    viewModel.stateHint,
                    style: TextStyle(
                      fontSize: 16,
                      color: viewModel.stateHint.length > 0
                          ? Colors.black54
                          : Colors.grey,
                    ),
                  ),
                  validator: (value) =>
                      viewModel.validateState(value: value.toString()),
                  items: viewModel.stateArray
                      .map((value) => DropdownMenuItem(
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (String value) {
                    FocusScope.of(context).unfocus();
                    viewModel.updateState(value);
                  },
                  isExpanded: false,
                  value: viewModel.state,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            viewModel.isBusy
                ? Container()
                : Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black26,
                    )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                        key: Key(viewModel.city.toString()),
                        hint: Text(
                          viewModel.cityHint,
                          style: TextStyle(
                            fontSize: 16,
                            color: viewModel.cityHint.length > 0
                                ? Colors.black54
                                : Colors.grey,
                          ),
                        ),
                        validator: (value) =>
                            viewModel.validateCity(value: value.toString()),
                        items: viewModel.cityArray
                            .map((value) => DropdownMenuItem(
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (String value) {
                          viewModel.updateCity(value);
                        },
                        isExpanded: false,
                        value: viewModel.city,
                      ),
                    ),
                  ),
          ],
        ));
  }
}

class AddressTypeRow extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.updateHome(),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: viewModel.isHomeSelected
                      ? COLOR_PRIMARY
                      : Colors.transparent,
                  border: Border.all(color: COLOR_PRIMARY)),
              child: Center(
                child: Text(
                  getTranslatedValues('home'),
                  style: TextStyle(
                    color:
                        viewModel.isHomeSelected ? Colors.white : COLOR_PRIMARY,
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
            onTap: () => viewModel.updateOffice(),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: viewModel.isOfficeSelected
                      ? COLOR_PRIMARY
                      : Colors.transparent,
                  border: Border.all(color: COLOR_PRIMARY)),
              child: Center(
                child: Text(
                  getTranslatedValues('office'),
                  style: TextStyle(
                    color: viewModel.isOfficeSelected
                        ? Colors.white
                        : COLOR_PRIMARY,
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
            onTap: () => viewModel.updateOther(),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: viewModel.isOtherSelected
                      ? COLOR_PRIMARY
                      : Colors.transparent,
                  border: Border.all(color: COLOR_PRIMARY)),
              child: Center(
                child: Text(
                  getTranslatedValues('other'),
                  style: TextStyle(
                    color: viewModel.isOtherSelected
                        ? Colors.white
                        : COLOR_PRIMARY,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SubmitBtn extends ViewModelWidget<AddDeliveryAddressViewModel> {
  @override
  Widget build(BuildContext context, AddDeliveryAddressViewModel viewModel) {
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
