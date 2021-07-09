import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/creation_aware_list/creation_aware_list_item.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/wishlist_grid/wishlist_grid_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';

import 'package:stacked/stacked.dart';

class WishListGridView extends StatelessWidget {
  const WishListGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WishListGridViewModel>.reactive(
      viewModelBuilder: () => WishListGridViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: new IconThemeData(color: COLOR_White),
          bottomOpacity: 0.0,
          centerTitle: false,
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            getTranslatedValues("wishlist"),
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            SizedBox(width: 10),
            GestureDetector(
                onTap: () => model.navigateCart(),
                child: Badge(
                  position: BadgePosition(top: 10.0, end: 0.0),
                  padding: EdgeInsets.all(3.0),
                  badgeColor: Colors.white,
                  badgeContent:
                      Text("${model.quentity}", style: TextStyle(fontSize: 10)),
                  child: SvgPicture.asset(
                    'assets/icons/cart.svg',
                    width: 16,
                    //color: Colors.white,
                  ),
                )),
            SizedBox(width: 10),
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
                  model.isBusy
                      ? LoaderCircle()
                      : model.wishListResponse != null &&
                              model.wishListResponse.data.length > 0
                          ? ProductGridWidgetList()
                          : EmptyList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoaderCircle extends ViewModelWidget<WishListGridViewModel> {
  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
          strokeWidth: 5,
        ),
      ),
    );
  }
}

class ProductGridWidgetList extends ViewModelWidget<WishListGridViewModel> {
  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            ProductsList(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class EmptyList extends ViewModelWidget<WishListGridViewModel> {
  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
            getTranslatedValues("wishlist_missing"),
            textAlign: TextAlign.left,
            maxLines: 2,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  color: COLOR_PRIMARY,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Visibility(
            visible: viewModel.token == null || viewModel.token.isEmpty,
            child: Text(
              getTranslatedValues("title_login_wishlist"),
              textAlign: TextAlign.left,
              maxLines: 2,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_BLACK,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Visibility(
            visible: viewModel.token == null || viewModel.token.isEmpty,
            child: SizedBox(
              height: 20,
            ),
          ),
          Visibility(
            visible: viewModel.token == null || viewModel.token.isEmpty,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: FlatButton(
                height: 50,
                color: COLOR_PRIMARY,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                splashColor: COLOR_PRIMARY,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () => viewModel.onLoginClick(),
                child: Text(
                  getTranslatedValues("login"),
                  style: GoogleFonts.nunitoSans(
                    textStyle:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            getTranslatedValues("add_items_to_wishlist"),
            textAlign: TextAlign.left,
            maxLines: 2,
            style: GoogleFonts.nunitoSans(
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

class ProductsList extends ViewModelWidget<WishListGridViewModel> {
  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: viewModel.wishListResponse != null &&
                viewModel.wishListResponse.data.length > 0
            ? viewModel.wishListResponse.data.length
            : 0,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.52,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CreationAwareListItem(
            itemCreated: () => SchedulerBinding.instance.addPostFrameCallback(
                (duration) => viewModel.requestMoreData(index)),
            child: GestureDetector(
                onTap: () => viewModel.navigateToProductDetail(index),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                height:
                                    MediaQuery.of(context).size.width / 2 - 65,
                                color: COLOR_PRIMARY_LIGHT,
                                child: CachedNetworkImage(
                                    errorWidget: (context, url, error) =>
                                        Container(
                                          child: SvgPicture.asset(
                                            'assets/icons/prescription_placeholder.svg',
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                    placeholder: (context, url) => Container(
                                          child: SvgPicture.asset(
                                            'assets/icons/prescription_placeholder.svg',
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                    fadeInCurve: Curves.fastOutSlowIn,
                                    fit: BoxFit.cover,
                                    imageUrl:
                                        "$BASE_URL${viewModel.wishListResponse.data[index].featuredImage}")),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                viewModel.getLanguageChangedText(
                                    viewModel.wishListResponse.data[index], 0),
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      color: COLOR_PRIMARY,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // Container(
                            //   height: 30,
                            //   margin: EdgeInsets.only(left: 5, right: 5),
                            //   child: Html(
                            //     data: viewModel.wishListResponse.data[index]
                            //                 .description !=
                            //             null
                            //         ? viewModel.getLanguageChangedText(
                            //             viewModel.wishListResponse.data[index],
                            //             1)
                            //         : "",
                            //     style: {
                            //       "html": Style(
                            //         color: COLOR_GRAY,
                            //         fontSize: FontSize(12),
                            //         fontFamily: "Noto Sans",
                            //       ),
                            //     },
                            //   ),
                            //   // Text(
                            //   //   viewModel
                            //   //       .wishListResponse.data[index].description,
                            //   //   textAlign: TextAlign.center,
                            //   //   maxLines: 1,
                            //   //   style: GoogleFonts.nunitoSans(
                            //   //     textStyle: TextStyle(
                            //   //         color: COLOR_GRAY_BLACK, fontSize: 14),
                            //   //   ),
                            //   // ),
                            // ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "BD ${viewModel.wishListResponse.data[index].regularPrice}",
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: COLOR_PRIMARY,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                // Expanded(flex: 1, child: Container()),
                                Spacer()
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: FlatButton(
                                height: 35,
                                color: COLOR_PRIMARY,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                splashColor: COLOR_PRIMARY,
                                minWidth: MediaQuery.of(context).size.width,
                                onPressed: () {
                                  viewModel.addToCart(
                                      slugid: viewModel
                                          .wishListResponse.data[index].slug,
                                      productId: viewModel
                                          .wishListResponse.data[index].sId);
                                },
                                child: Text(
                                  getTranslatedValues("btn_move_to_cart"),
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: COLOR_White,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        top: MediaQuery.of(context).size.height / 4, //250,
                        child: Container(
                            child: BannerOnProduct(
                                productDetailsResponse:
                                    viewModel.wishListResponse.data[index])),
                      ),
                      RemoveFromWishList(index: index)
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}

class LinePathBanner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 110);
    path.lineTo(110, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BannerOnProduct extends ViewModelWidget<WishListGridViewModel> {
  // final index;
  final UniversalProduct productDetailsResponse;
  BannerOnProduct({this.productDetailsResponse});

  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return ClipPath(
      clipper: LinePathBanner(),
      child: Container(
        width: 120,
        height: 25,
        color: Colors.indigo[900],
        padding: EdgeInsets.only(left: 16, top: 3, right: 20),
        child: Text(
          viewModel.getProductStatus(
              productDetailsResponse: productDetailsResponse),
          textAlign: TextAlign.left,
          style: TextStyle(color: COLOR_White),
        ),
      ),
    );
  }
}

class RemoveFromWishList extends ViewModelWidget<WishListGridViewModel> {
  final index;

  RemoveFromWishList({this.index});
  @override
  Widget build(BuildContext context, WishListGridViewModel viewModel) {
    return Positioned(
        right: 5,
        top: 5,
        child: GestureDetector(
            onTap: () => viewModel.removeFromWishlist(
                slugId: viewModel.wishListResponse.data[index].slug),
            child: SvgPicture.asset(
              "assets/icons/remove.svg",
              width: 20,
              height: 20,
            )));
  }
}
