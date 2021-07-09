import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/brandGridList/brand_grid_list_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/brands/brand_response.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BrandGridListView extends StatelessWidget {
  final String brandName;
  BrandGridListView({this.brandName, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BrandGridListViewModel>.reactive(
      viewModelBuilder: () => BrandGridListViewModel(),
      onModelReady: (model) => model.loadData(brandName),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          centerTitle: false,
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            model.brandName != null
                ? model.brandName
                : getTranslatedValues("sub_category"),
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () => model.navigateSearch(),
              child: Icon(
                Icons.search,
                color: COLOR_White,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () => model.navigateWishlist(),
              child: Icon(
                Icons.favorite_border,
                color: COLOR_White,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
                onTap: () => model.navigateCart(),
                child: Badge(
                  position: BadgePosition(top: 10.0, end: 0.0),
                  padding: EdgeInsets.all(3.0),
                  badgeColor: Colors.white,
                  badgeContent:
                      Text("${model.quantity}", style: TextStyle(fontSize: 10)),
                  child: SvgPicture.asset(
                    'assets/icons/cart.svg',
                    width: 16,
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
                  ProductGridWidgetList(),
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

class EmptyList extends ViewModelWidget<BrandGridListViewModel> {
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          getTranslatedValues("no_product_ava"),
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
          getTranslatedValues("sub_title_product_ava"),
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
      ],
    );
  }
}

class ProductGridWidgetList extends ViewModelWidget<BrandGridListViewModel> {
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: COLOR_PRIMARY,
            child: FilterOptionsContainer(),
          ),
          ProductScrollList(),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

class ProductScrollList extends ViewModelWidget<BrandGridListViewModel> {
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height - 190,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: PagedGridView<int, ResponseData>(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.5,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount:
                (MediaQuery.of(context).orientation == Orientation.portrait)
                    ? 2
                    : 4,
          ),
          pagingController: viewModel.pagingController,
          builderDelegate: PagedChildBuilderDelegate<ResponseData>(
              firstPageProgressIndicatorBuilder: (context) => Container(),
              newPageProgressIndicatorBuilder: (context) => Container(),
              itemBuilder: (context, item, index) => GestureDetector(
                  onTap: () {
                    viewModel.navigateToProductDetail(slugId: item.sId);
                    print(index);
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: COLOR_GRAY_BLACK, width: 1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.width / 2 -
                                          65,
                                  width: MediaQuery.of(context).size.width,
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
                                      fit: BoxFit.fill,
                                      imageUrl:
                                          // viewModel
                                          //             .productScrollGridList !=
                                          //         null
                                          //     ? "$BASE_URL${item.featuredImage}"
                                          //     :
                                          "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                height: 38,
                                child: Text(
                                  item != null
                                      ? item.name
                                      // viewModel.getLanguageChangedText(
                                      //     item.name.toString(), 0)
                                      : "product name",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        color: COLOR_PRIMARY,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      item != null
                                          ? item.regularPrice.toString()
                                          //  viewModel.getProductPrice(
                                          //     product: item)
                                          : "Unavailable",
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
                                  Expanded(
                                    flex: 1,
                                    child: Container(),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Visibility(
                                visible: viewModel.addToCartStatus(
                                    productDetailsResponse: item),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: viewModel.brandList != null &&
                                          viewModel.getCartResponse != null &&
                                          viewModel.cartProduct.any(
                                              (test) => test.sId == item.sId)
                                      ? Container(
                                          width: 80,
                                          height: 30.0,
                                          margin: EdgeInsets.only(bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  viewModel.minus(
                                                      index: viewModel
                                                          .getIndex(item.sId),
                                                      slug: item.slug);
                                                },
                                                child: Icon(
                                                  Icons.remove_circle,
                                                  color: viewModel
                                                              .cartProduct[viewModel
                                                                  .getIndex(
                                                                      item.sId)]
                                                              .quantity <=
                                                          1
                                                      ? Colors.black12
                                                      : Colors.black,
                                                ),
                                              ),
                                              Text(
                                                viewModel
                                                    .cartProduct[viewModel
                                                        .getIndex(item.sId)]
                                                    .quantity
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  viewModel.add(
                                                      index: viewModel
                                                          .getIndex(item.sId),
                                                      slug: item.slug);
                                                },
                                                child: Icon(
                                                  Icons.add_circle,
                                                  color: viewModel
                                                              .cartProduct[viewModel
                                                                  .getIndex(
                                                                      item.sId)]
                                                              .quantity >=
                                                          5
                                                      ? Colors.black12
                                                      : Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : FlatButton(
                                          height: 35,
                                          color: COLOR_PRIMARY,
                                          textColor: Colors.white,
                                          disabledColor: Colors.grey,
                                          disabledTextColor: Colors.black,
                                          splashColor: COLOR_PRIMARY,
                                          minWidth:
                                              MediaQuery.of(context).size.width,
                                          onPressed: () {
                                            viewModel.token != null &&
                                                    viewModel.token.isNotEmpty
                                                ? viewModel.addProductToCart(
                                                    item.sId, item.slug, 1)
                                                : showMaterialModalBottomSheet(
                                                    context: context,
                                                    builder: (context) =>
                                                        Container(
                                                      height: 200,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      color: Colors.white,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(height: 20),
                                                          Text(
                                                            getTranslatedValues(
                                                                'dailogue_login_message'),
                                                            style: GoogleFonts
                                                                .nunitoSans(
                                                              textStyle:
                                                                  TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(height: 30),
                                                          Row(
                                                            children: <Widget>[
                                                              SizedBox(
                                                                  width: 50),
                                                              Expanded(
                                                                flex: 1,
                                                                child:
                                                                    FlatButton(
                                                                  height: 50,
                                                                  color:
                                                                      COLOR_PRIMARY,
                                                                  textColor:
                                                                      COLOR_White,
                                                                  splashColor:
                                                                      COLOR_PRIMARY,
                                                                  minWidth:
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width,
                                                                  onPressed:
                                                                      () {
                                                                    viewModel
                                                                        .onLoginClick();
                                                                  },
                                                                  child: Text(
                                                                    getTranslatedValues(
                                                                        'login'),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style: GoogleFonts
                                                                        .nunitoSans(
                                                                      textStyle:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 20),
                                                              Expanded(
                                                                flex: 1,
                                                                child:
                                                                    Container(
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      border: Border.all(
                                                                          width:
                                                                              1,
                                                                          color:
                                                                              COLOR_PRIMARY)),
                                                                  child:
                                                                      FlatButton(
                                                                    height: 48,
                                                                    color:
                                                                        COLOR_White,
                                                                    textColor:
                                                                        COLOR_PRIMARY,
                                                                    splashColor:
                                                                        COLOR_PRIMARY,
                                                                    minWidth: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width,
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                    child: Text(
                                                                      getTranslatedValues(
                                                                          'continue'),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: GoogleFonts
                                                                          .nunitoSans(
                                                                        textStyle:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  width: 50),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                          },
                                          child: Text(
                                            getTranslatedValues("add_to_cart"),
                                            style: GoogleFonts.nunitoSans(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: COLOR_White,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0.0,
                          top: MediaQuery.of(context).size.height / 3.5,
                          child: Container(
                              child: BannerOnProduct(
                                  productDetailsResponse: item)),
                        ),
                        AddToWishList(index: index, item: item),
                        // viewModel.productScrollGridList != null &&
                        //         item.offerType != null &&
                        //         item.offerType == 1
                        //     ? OfferContainer(
                        //         index: index,
                        //       )
                        //     : Container()
                      ],
                    ),
                  )))),
    );
  }
}

class OfferContainer extends ViewModelWidget<BrandGridListViewModel> {
  final index;

  OfferContainer({this.index});
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return Positioned(
      top: 15,
      right: 10,
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

class AddToWishList extends ViewModelWidget<BrandGridListViewModel> {
  final index;
  final item;
  AddToWishList({this.index, this.item});
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return Positioned(
      left: 3,
      top: 3,
      child: IconButton(
          icon: Icon(Icons.favorite,
              color: viewModel.wishlistIdlist.contains(item.sId)
                  ? Colors.red
                  : Colors.grey),
          onPressed: () {
            viewModel.token != null && viewModel.token.isNotEmpty
                ? viewModel.addToWishlist(
                    slugId: item.slug, productId: item.sId)
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

class FilterOptionsContainer extends ViewModelWidget<BrandGridListViewModel> {
  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 20.0),
      child: Row(children: <Widget>[
        /*    GestureDetector(
            // onTap: () => viewModel.navigateToFilters(),
            child: Icon(Icons.ac_unit, size: 14, color: COLOR_White)),*/
        /* SizedBox(width: 5),
        GestureDetector(
          // onTap: () => viewModel.navigateToFilters(),
          child: Text(
            getTranslatedValues("filter"),
            style: TextStyle(fontSize: 16.0, color: COLOR_White),
          ),
        ),*/
        SizedBox(width: 15),
        GestureDetector(
            onTap: () => showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom: 25),
                    child: ListView.builder(
                        itemCount: viewModel.sortByOptions.length > 0
                            ? viewModel.sortByOptions.length
                            : 0,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return (index == 0)
                              ? Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 1, color: Color(0xFFEDEDED)),
                                    ),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  child: Text(
                                    getTranslatedValues(
                                        viewModel.sortByOptions[index]),
                                    style: TextStyle(
                                        fontSize: 14, color: COLOR_GRAY_BLACK),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    viewModel.selectedSortByOption(index);
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                        left: 25, right: 25, top: 5, bottom: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            viewModel.sortByOptions[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: (viewModel
                                                      .selectedSortByOptionIndex ==
                                                  index)
                                              ? Icon(
                                                  Icons.check,
                                                  size: 15,
                                                )
                                              : Container(),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                        }),
                  ),
                ),
            child: Icon(Icons.ac_unit, size: 14, color: COLOR_White)),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () => showMaterialModalBottomSheet(
            context: context,
            builder: (context) => Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              child: ListView.builder(
                  itemCount: viewModel.sortByOptions.length > 0
                      ? viewModel.sortByOptions.length
                      : 0,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return (index == 0)
                        ? Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Color(0xFFEDEDED)),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            padding: EdgeInsets.only(left: 25, right: 25),
                            child: Text(
                              viewModel.sortByOptions[index],
                              style: TextStyle(
                                  fontSize: 14, color: COLOR_GRAY_BLACK),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              viewModel.selectedSortByOption(index);
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              padding:
                                  EdgeInsets.only(left: 25, right: 25, top: 15),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 5,
                                    child: Text(
                                      viewModel.sortByOptions[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child:
                                        (viewModel.selectedSortByOptionIndex ==
                                                index)
                                            ? Icon(
                                                Icons.check,
                                                size: 15,
                                              )
                                            : Container(),
                                  )
                                ],
                              ),
                            ),
                          );
                  }),
            ),
          ),
          child: Text(
            getTranslatedValues("sort"),
            style: TextStyle(fontSize: 16.0, color: COLOR_White),
          ),
        ),
        Spacer(),
        Text(
          viewModel.brandList != null && !viewModel.isBusy
              ? "${viewModel.getProductCount()}"
              : "",
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 16.0, color: COLOR_White),
        )
      ]),
    );
  }
}

class BannerOnProduct extends ViewModelWidget<BrandGridListViewModel> {
  final ResponseData productDetailsResponse;
  BannerOnProduct({this.productDetailsResponse});

  @override
  Widget build(BuildContext context, BrandGridListViewModel viewModel) {
    return ClipPath(
      clipper: LinePathBanner(),
      child: Container(
        width: 120,
        height: 25,
        color: Colors.indigo[900],
        padding: EdgeInsets.only(left: 16, top: 3, right: 20),
        child: Text(
          productDetailsResponse.manageStock > 0
              ? getTranslatedValues("available")
              : getTranslatedValues("unavailable"),
          textAlign: TextAlign.left,
          style: TextStyle(color: COLOR_White),
        ),
      ),
    );
  }
}
