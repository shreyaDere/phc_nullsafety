import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/creation_aware_list/creation_aware_list_item.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'dashboard_view_model.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
          body: SafeArea(
        top: true,
        child: NetworkSensitive(
          currentWidget: SingleChildScrollView(
            key: PageStorageKey("DashboardWidgetList"),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  color: COLOR_PRIMARY,
                ),
                model.shimmerFlag
                    ? DashboardShimmerEffect()
                    : DashboardWidgetList(), //DashboardWidgetList()
                model.isBusy ? showLoader(context: context) : Container(),
                model.popupflag == "1" ? PopUpDashboard() : Container()
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class DashboardWidgetList extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        SearchDashboard(),
        SizedBox(height: 20),
        TopCarousel(),
        SizedBox(height: 20),
        UploadPrescriptionBtn(),
        SizedBox(height: 20),
        ShopByCategoryTitle(),
        SizedBox(height: 20),
        ShopByCategoryList(),
        SizedBox(height: 10),
        ShopByProductListTitle(),
        SizedBox(height: 20),
        ShopByProductList(),
        SizedBox(height: 30),
      ],
    );
  }
}

class PopUpDashboard extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 100,
      color: Colors.black.withOpacity(0.3),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                      onTap: () => viewModel.closePopUpUpdateStatus(),
                      child: Icon(Icons.clear))),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopByCategoryList extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        key: PageStorageKey("product-categories-category-list"),
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.adsetsLocal != null
            ? viewModel.adsetsLocal.data.adsets[0].categories.length
            : 0,
        itemBuilder: (context, index) {
          return CreationAwareListItem(
            // itemCreated: () => SchedulerBinding.instance
            //     .addPostFrameCallback(
            //         (duration) => viewModel.requestMoreData(index)),
            child: GestureDetector(
              onTap: () => viewModel.navigateToProductList(
                  slugId: viewModel
                      .adsetsLocal.data.adsets[0].categories[index].slug,
                  productName: viewModel.getLanguageChangedText(
                      viewModel.adsetsLocal.data.adsets[0].categories[index],
                      0)),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                width: 90.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
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
                            fit: BoxFit.fill,
                            imageUrl:
                                "$BASE_URL${viewModel.adsetsLocal.data.adsets[0].categories[index].featuredImage}"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        // viewModel
                        //     .adsetsLocal.data.adsets[0].categories[index].name,
                        viewModel.getLanguageChangedText(
                            viewModel
                                .adsetsLocal.data.adsets[0].categories[index],
                            0),
                        maxLines: 2,
                        style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                          color: COLOR_GRAY,
                          fontSize: 10,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class OfferContainer extends ViewModelWidget<DashboardViewModel> {
  final index;

  OfferContainer({this.index});
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Positioned(
      top: 15,
      right: 35,
      child: Container(
        width: 60,
        height: 22,
        color: COLOR_PRIMARY,
        child: Text(
          getTranslatedValues("offer"),
          textAlign: TextAlign.center,
          maxLines: 2,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ShopByCategoryTitle extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Row(children: <Widget>[
        Expanded(
          flex: 4,
          child: Text(
            getTranslatedValues("shop_by_categories"),
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_GRAY,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.navigateToCategory(),
            child: Text(
              getTranslatedValues("view_all"),
              textAlign: TextAlign.right,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class ShopByProductListTitle extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Row(children: <Widget>[
        Expanded(
          flex: 4,
          child: Text(
            viewModel.adsetsLocal != null
                ? getTranslatedValues("bestseller")
                //  viewModel.adsetsLocal.data.adsets[2].name[0].toUpperCase() +
                //     viewModel.adsetsLocal.data.adsets[2].name.substring(1)
                : getTranslatedValues("shop_by_categories"),
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  color: COLOR_GRAY, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.navigateToBestSellList(
                product: viewModel.adsetsLocal.data.adsets[2].products),
            child: Text(
              getTranslatedValues("view_all"),
              textAlign: TextAlign.right,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class ShopByProductList extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 2 + 70,
      child: ListView.builder(
        key: PageStorageKey("productlist"),
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.adsetsLocal != null
            ? viewModel.adsetsLocal.data.adsets[2].products.length < 4
                ? viewModel.adsetsLocal.data.adsets[2].products.length
                : 4
            : 0,
        itemBuilder: (context, index) {
          return CreationAwareListItem(
            // itemCreated: () => SchedulerBinding.instance
            //     .addPostFrameCallback(
            //         (duration) => viewModel.requestMoreData(index)),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () => viewModel.navigateToProductDetail(
                      slugId: viewModel
                          .adsetsLocal.data.adsets[2].products[index].sId),
                  child: Container(
                    margin: EdgeInsets.only(right: 25),
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          height: MediaQuery.of(context).size.width / 2 - 60,
                          decoration: BoxDecoration(),
                          child: Hero(
                            tag: Text("image"),
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
                                    "$BASE_URL${viewModel.adsetsLocal.data.adsets[2].products[index].featuredImage}"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            // viewModel.adsetsLocal.data.adsets[2].products[index]
                            //     .name,
                            viewModel.getLanguageChangedText(
                                viewModel
                                    .adsetsLocal.data.adsets[2].products[index],
                                0),
                            maxLines: 2,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  color: COLOR_GRAY,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(left: 10, right: 10),
                        //   child: Text(
                        //     "BD ${viewModel.adsetsLocal.data.adsets[2].products[index].regularPrice}",
                        //     maxLines: 1,
                        //     style: GoogleFonts.nunitoSans(
                        //       textStyle: TextStyle(
                        //           decoration: TextDecoration.lineThrough,
                        //           color: COLOR_GRAY_BLACK,
                        //           fontSize: 12),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      viewModel.getProductPrice(
                          product: viewModel
                              .adsetsLocal.data.adsets[2].products[index]),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: COLOR_PRIMARY,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  right: 35,
                  child: Visibility(
                    visible: viewModel.addToCartStatus(
                        productDetailsResponse: viewModel
                            .adsetsLocal.data.adsets[2].products[index]),
                    child: GestureDetector(
                      onTap: () {
                        viewModel.token != null && viewModel.token.isNotEmpty
                            ? viewModel.addToCart(
                                productId: viewModel.adsetsLocal.data.adsets[2]
                                    .products[index].sId,
                                slugid: viewModel.adsetsLocal.data.adsets[2]
                                    .products[index].slug,
                                quantity: 1)
                            : showMaterialModalBottomSheet(
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
                                        getTranslatedValues(
                                            'dailogue_login_message'),
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
                                                viewModel.onLoginClick();
                                              },
                                              child: Text(
                                                getTranslatedValues('login'),
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
                                                minWidth: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  getTranslatedValues(
                                                      'continue'),
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
                      child: viewModel.getCartResponse != null &&
                              viewModel.cartProduct.any((test) =>
                                  test.sId ==
                                  viewModel.adsetsLocal.data.adsets[2]
                                      .products[index].sId)
                          ? Container(
                              width: 80,
                              height: 30.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      viewModel.minus(
                                          index: viewModel.getIndex(index),
                                          slugId: viewModel.adsetsLocal.data
                                              .adsets[2].products[index].slug);
                                    },
                                    child: Icon(
                                      Icons.remove_circle,
                                      color: viewModel
                                                  .cartProduct[
                                                      viewModel.getIndex(index)]
                                                  .quantity <=
                                              1
                                          ? Colors.black12
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    viewModel
                                        .cartProduct[viewModel.getIndex(index)]
                                        .quantity
                                        .toString(),
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      viewModel.add(
                                          index: viewModel.getIndex(index),
                                          slugId: viewModel.adsetsLocal.data
                                              .adsets[2].products[index].slug);
                                    },
                                    child: Icon(
                                      Icons.add_circle,
                                      color: viewModel
                                                  .cartProduct[
                                                      viewModel.getIndex(index)]
                                                  .quantity >=
                                              5
                                          ? Colors.black12
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : SvgPicture.asset(
                              'assets/icons/plus.svg',
                              width: 40,
                              height: 40,
                            ),
                    ),
                  ),
                ),
                AddToWishList(index: index),
                viewModel.adsetsLocal.data.adsets[2] != null &&
                        viewModel.adsetsLocal.data.adsets[2].products[index]
                                .offerType !=
                            null &&
                        viewModel.adsetsLocal.data.adsets[2].products[index]
                                .offerType ==
                            1
                    ? OfferContainer(
                        index: index,
                      )
                    : Container()
              ],
            ),
          );
        },
      ),
    );
  }
}

class AddToWishList extends ViewModelWidget<DashboardViewModel> {
  final index;

  AddToWishList({this.index});
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Positioned(
      left: 5,
      top: 3,
      child: IconButton(
          icon: Icon(Icons.favorite,
              color: viewModel.wishlistIdlist.contains(
                      viewModel.adsetsLocal.data.adsets[2].products[index].sId)
                  ? Colors.red
                  : Colors.grey),
          onPressed: () {
            viewModel.token != null && viewModel.token.isNotEmpty
                ? viewModel.addToWishlist(
                    slugId: viewModel
                        .adsetsLocal.data.adsets[2].products[index].slug,
                    productId: viewModel
                        .adsetsLocal.data.adsets[2].products[index].sId)
                : showMaterialModalBottomSheet(
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
                            getTranslatedValues('dailogue_login_message'),
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
                                    viewModel.onLoginClick();
                                  },
                                  child: Text(
                                    getTranslatedValues('login'),
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
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      getTranslatedValues('continue'),
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
          }),
    );
  }
}

class SearchDashboard extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return GestureDetector(
      onTap: () => viewModel.onSearchClick(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(5)),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: Text(
                getTranslatedValues("search"),
                textAlign: TextAlign.left,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/search2.svg',
              width: 51,
            ),
          ],
        ),
      ),
    );
  }
}

class UploadPrescriptionBtn extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: FlatButton.icon(
        height: 45,
        color: COLOR_PRIMARY,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: COLOR_PRIMARY,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () => viewModel.onUploadPrescriptionPressed(),
        label: Text(
          getTranslatedValues("upload_your_prescription"),
          style: TextStyle(fontSize: 16.0),
        ),
        icon: Icon(
          Icons.camera_alt,
          size: 20,
        ),
      ),
    );
  }
}

class TopCarousel extends ViewModelWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        pageViewKey: PageStorageKey('carousel_slider'),
        viewportFraction: 1,
        enlargeCenterPage: false,
        initialPage: 1,
        aspectRatio: 3.0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        onPageChanged: (index, reason) {
          viewModel.onCarousalPageChanged(index, reason);
        },
        scrollDirection: Axis.horizontal,
      ),
      itemCount: viewModel.adsetsLocal != null
          ? viewModel.adsetsLocal.data.adsets[1].ads.length
          : 0,
      itemBuilder: (ctx, index) {
        return Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
                child: CachedNetworkImage(
                    errorWidget: (context, url, error) => Container(
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
                        "$BASE_URL${viewModel.adsetsLocal.data.adsets[1].ads[index].image}"),
                onTap: () {
                  viewModel.onCarousalTap(
                      slug: viewModel.topCarousel.ads[index].link);
                }),
            decoration: BoxDecoration());
      },
    );
  }
}

class DashboardShimmerEffect extends StatelessWidget {
  const DashboardShimmerEffect({
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
                height: 50,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: MediaQuery.of(context).size.width / 2.2,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 50,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ]),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 20,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              RowCardShimmer(),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                height: 20,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              RowCardShimmer(),
            ],
          ),
        ),
      ),
    );
  }
}

class RowCardShimmer extends StatelessWidget {
  const RowCardShimmer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      SizedBox(width: 25),
      Expanded(
        flex: 1,
        child: Container(
          height: 250,
          color: Colors.grey,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(left: 15),
          height: 250,
          color: Colors.grey,
        ),
      ),
      SizedBox(width: 25),
    ]);
  }
}
