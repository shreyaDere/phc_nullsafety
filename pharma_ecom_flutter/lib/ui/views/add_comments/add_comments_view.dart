import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

import 'add_comments_view_model.dart';

class AddCommentsView extends StatelessWidget {
  final ProductDetailResponse productDetails;
  const AddCommentsView({Key key, this.productDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddCommentsViewModel>.reactive(
      viewModelBuilder: () => AddCommentsViewModel(),
      onModelReady: (model) => model.loadData(productDetails: productDetails),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues('app_bar_new_comment'),
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
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("NewCommentWidgetList"),
              child: Stack(
                children: <Widget>[
                  AddCommentsWidgetList(),
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

class AddCommentsWidgetList extends ViewModelWidget<AddCommentsViewModel> {
  @override
  Widget build(BuildContext context, AddCommentsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          ProductNameRow(),
          SizedBox(
            height: 20,
          ),
          Text(
            getTranslatedValues("write_review_hint"),
            style: GoogleFonts.nunitoSans(
                textStyle:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          ),
          SizedBox(
            height: 10,
          ),
          ProductComment(),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   getTranslatedValues("add_image"),
          //   style: GoogleFonts.nunitoSans(
          //     textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // AddImage(),
          SizedBox(
            height: 30,
          ),
          SubmitBtn()
        ],
      ),
    );
  }
}

class ProductNameRow extends ViewModelWidget<AddCommentsViewModel> {
  @override
  Widget build(BuildContext context, AddCommentsViewModel viewModel) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
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
                  "$BASE_URL${viewModel.productDetails.data.product.featuredImage}"),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          viewModel.productDetails.data.product.name,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}

class ProductComment extends ViewModelWidget<AddCommentsViewModel> {
  @override
  Widget build(BuildContext context, AddCommentsViewModel viewModel) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.black26,
      ),
      child: TextFormField(
        key: Key(viewModel.comment.toString()),
        initialValue: viewModel.comment,
        onChanged: viewModel.updateComment,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        //   onFieldSubmitted: (v) => viewModel.requestNextFocus(),
        // validator: (value) =>
        //     viewModel.validateEmail(value: value),
        maxLines: 5,
        decoration: InputDecoration(
          // hintText: getTranslatedValues('mobile_no'),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(width: 1, color: Colors.black)),
          contentPadding: EdgeInsets.all(14.0),
          hintStyle: GoogleFonts.nunitoSans(
              textStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 16)),
        ),
      ),
    );
  }
}

class AddImage extends ViewModelWidget<AddCommentsViewModel> {
  @override
  Widget build(BuildContext context, AddCommentsViewModel viewModel) {
    return viewModel.image != null && viewModel.image != null
        ? Container(
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage('${viewModel.image.path}'),
              fit: BoxFit.cover,
            ),
          )
        : Container(
            height: 150,
            width: 150,
            child: DottedBorder(
              color: COLOR_PRIMARY,
              strokeWidth: 1,
              child: GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    expand: false,
                    context: context,
                    backgroundColor: Colors.transparent,
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
                  );
                },
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: COLOR_PRIMARY,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

class SubmitBtn extends ViewModelWidget<AddCommentsViewModel> {
  @override
  Widget build(BuildContext context, AddCommentsViewModel viewModel) {
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
