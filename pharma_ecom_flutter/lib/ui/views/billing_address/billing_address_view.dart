import 'package:flutter/material.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/billing_address/billing_address_view_model.dart';
import 'package:stacked/stacked.dart';

class BillingAddressView extends StatelessWidget {
  const BillingAddressView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BillingAddressViewModel>.reactive(
      viewModelBuilder: () => BillingAddressViewModel(),
      //locator<HomeViewModel>(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: COLOR_PRIMARY,
          title: Text(getTranslatedValues("title_billing_address")),
        ),
        body: SafeArea(
          top: true,
          child: Stack(children: <Widget>[
            BillingAddressField(),
            ButtonSubmit(),
          ]),
        ),
      ),
    );
  }
}

class BillingAddressField extends ViewModelWidget<BillingAddressViewModel> {
  @override
  Widget build(BuildContext context, BillingAddressViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslatedValues('billing_address_title'),
            style: TextStyle(color: COLOR_GRAY),
          ),
          SizedBox(height: 20),
          Text(
            getTranslatedValues('mobile_no'),
            style: TextStyle(color: COLOR_GRAY_BLACK),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
            ),
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.mobileNo.toString()),
                initialValue: viewModel.mobileNo,
                onChanged: viewModel.updateMobile,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  // hintText: getTranslatedValues('mobile_no'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.all(14.0),
                  hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            getTranslatedValues("house_flat_block_no"),
            style: TextStyle(color: COLOR_GRAY_BLACK),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
            ),
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.mobileNo.toString()),
                initialValue: viewModel.mobileNo,
                onChanged: viewModel.updateMobile,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  // hintText: getTranslatedValues('mobile_no'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.all(14.0),
                  hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            getTranslatedValues("land_mark"),
            style: TextStyle(color: COLOR_GRAY_BLACK),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
            ),
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.mobileNo.toString()),
                initialValue: viewModel.mobileNo,
                onChanged: viewModel.updateMobile,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  // hintText: getTranslatedValues('mobile_no'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.all(14.0),
                  hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            getTranslatedValues('zipcode'),
            style: TextStyle(color: COLOR_GRAY_BLACK),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: COLOR_GRAY_BLACK),
            ),
            child: Theme(
              data: ThemeData(
                primaryColor: Colors.black26,
              ),
              child: TextFormField(
                key: Key(viewModel.mobileNo.toString()),
                initialValue: viewModel.mobileNo,
                onChanged: viewModel.updateMobile,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (v) => viewModel.requestNextFocus(),
                // validator: (value) =>
                //     viewModel.validateEmail(value: value),
                decoration: InputDecoration(
                  // hintText: getTranslatedValues('mobile_no'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.all(14.0),
                  hintStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSubmit extends ViewModelWidget<BillingAddressViewModel> {
  @override
  Widget build(BuildContext context, BillingAddressViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlatButton(
              onPressed: () => viewModel.onSubmitPressed(),
              padding: EdgeInsets.only(top: 15, bottom: 15),
              minWidth: MediaQuery.of(context).size.width,
              color: COLOR_PRIMARY,
              splashColor: COLOR_PRIMARY,
              child: Text(
                getTranslatedValues('submit'),
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
