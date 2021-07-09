import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/best_seller_product_list/best_sellere_product_view_model.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart';

class BestsellerGridListView extends StatelessWidget {
  final BuiltList<UniversalProduct> product;
  BestsellerGridListView({this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BestsellerGridListViewModel>.reactive(
      viewModelBuilder: () => BestsellerGridListViewModel(),
      onModelReady: (model) => model.loadData(product),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          centerTitle: false,
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            getTranslatedValues("bestseller"),
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
                  model.productGridListResponse != null &&
                          model.productGridListResponse.length <= 0
                      ? Center(child: EmptyList())
                      : ProductGridWidgetList(),
                  // model.productGridListResponse != null &&
                  //         model.productGridListResponse.data.total <= 0
                  //     ? Container()
                  //     : BottomNextPrevious(),
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

// class BottomNextPrevious extends ViewModelWidget<BestsellerGridListViewModel> {
//   @override
//   Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
//     return Positioned(
//       bottom: 1,
//       left: 0,
//       child: Container(
//         height: 50,
//         color: Colors.white,
//         width: MediaQuery.of(context).size.width,
//         child: Row(
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () => viewModel.previousClick(),
//                 child: Text(
//                   getTranslatedValues("previous"),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 14, color: COLOR_PRIMARY),
//                 ),
//               ),
//             ),
//             Container(
//                 margin: EdgeInsets.only(top: 15, bottom: 10),
//                 color: COLOR_GRAY_BLACK,
//                 height: 30,
//                 width: 1),
//             Expanded(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () => viewModel.nextClick(),
//                 child: Text(
//                   getTranslatedValues("next"),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 14, color: COLOR_PRIMARY),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class EmptyList extends ViewModelWidget<BestsellerGridListView> {
  @override
  Widget build(BuildContext context, BestsellerGridListView viewModel) {
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

class ProductGridWidgetList
    extends ViewModelWidget<BestsellerGridListViewModel> {
  @override
  Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          ProductsList(),
          SizedBox(height: 100),
          // SubCategoryGridView(),
        ],
      ),
    );
  }
}

class ProductsList extends ViewModelWidget<BestsellerGridListViewModel> {
  @override
  Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: viewModel.productGridListResponse != null
            ? viewModel.productGridListResponse.length
            : 0,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //TODO: adjust ratio to fix overflow issue
          childAspectRatio: 0.5,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return
              // CreationAwareListItem(
              //     itemCreated: () => SchedulerBinding.instance.addPostFrameCallback(
              //         (duration) => viewModel.requestMoreData(index)),
              // child:
              GestureDetector(
                  onTap: () => viewModel.navigateToProductDetail(
                      slugId: viewModel.productGridListResponse[index].sId),
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
                                      imageUrl: viewModel
                                                  .productGridListResponse !=
                                              null
                                          ? "$BASE_URL${viewModel.productGridListResponse[index].featuredImage}"
                                          : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60")),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  viewModel.productGridListResponse != null
                                      ? viewModel.getLanguageChangedText(
                                          viewModel
                                              .productGridListResponse[index],
                                          0)
                                      : "product name",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: GoogleFonts.nunitoSans(
                                    textStyle: TextStyle(
                                        color: //index % 2 == 0?
                                            COLOR_PRIMARY,
                                        //: Colors.grey[300],
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              // Container(
                              //   height: 25,
                              //   margin: EdgeInsets.only(left: 5, right: 5),
                              //   child: Html(
                              //     data:
                              //         viewModel.productGridListResponse != null &&
                              //                 viewModel
                              //                         .productGridListResponse
                              //                         .data
                              //                         .products[index]
                              //                         .description !=
                              //                     null
                              //             ? viewModel.productGridListResponse.data
                              //                 .products[index].description
                              //             : "Description",
                              //     style: {
                              //       "html": Style(
                              //         color: COLOR_GRAY,
                              //         fontSize: FontSize(12),
                              //         fontFamily: "Noto Sans",
                              //       ),
                              //     },
                              //   ),
                              // ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      viewModel.productGridListResponse != null
                                          ? viewModel.getProductPrice(
                                              product: viewModel
                                                      .productGridListResponse[
                                                  index])
                                          : "Unavailable",
                                      textAlign: TextAlign.left,
                                      maxLines: 1,
                                      style: GoogleFonts.nunitoSans(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: //index % 2 == 0?
                                                COLOR_PRIMARY,
                                            //: Colors.grey[300],
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
                                    productDetailsResponse: viewModel
                                        .productGridListResponse[index]),
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: FlatButton(
                                    height: 35,
                                    color: //index % 2 == 0?
                                        COLOR_PRIMARY,
                                    //: Colors.grey[300],
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    disabledTextColor: Colors.black,
                                    splashColor: COLOR_PRIMARY,
                                    minWidth: MediaQuery.of(context).size.width,
                                    onPressed: () {
                                      viewModel.token != null &&
                                              viewModel.token.isNotEmpty
                                          ? viewModel.addProductToCart(
                                              index,
                                              viewModel
                                                  .productGridListResponse[
                                                      index]
                                                  .slug)
                                          : showMaterialModalBottomSheet(
                                              context: context,
                                              builder: (context) => Container(
                                                height: 200,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: Colors.white,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 20),
                                                    Text(
                                                      getTranslatedValues(
                                                          'dailogue_login_message'),
                                                      style: GoogleFonts
                                                          .nunitoSans(
                                                        textStyle: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w800,
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
                                                            onPressed: () {
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
                                                              color:
                                                                  COLOR_White,
                                                              textColor:
                                                                  COLOR_PRIMARY,
                                                              splashColor:
                                                                  COLOR_PRIMARY,
                                                              minWidth:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              onPressed: () {
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
                                                        SizedBox(width: 50),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                    },
                                    child: Text(
                                      getTranslatedValues(//index % 2 == 0?
                                          "add_to_cart"),
                                      // : "out_of_stock"),
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
                        //BannerOnGridItem(index: index),
                        Positioned(
                            left: 0.0,
                            top:
                                MediaQuery.of(context).size.height / 3.5, //250,
                            child: Container(
                                child: BannerOnProduct(
                                    productDetailsResponse: viewModel
                                        .productGridListResponse[index]))),
                        AddToWishList(index: index)
                      ],
                    ),
                  ));
          // );
        },
      ),
    );
  }
}

class AddToWishList extends ViewModelWidget<BestsellerGridListViewModel> {
  final index;

  AddToWishList({this.index});
  @override
  Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
    return Positioned(
      right: 3,
      top: 3,
      child: IconButton(
          icon: Icon(Icons.favorite,
              color: viewModel.wishlistIdlist
                      .contains(viewModel.productGridListResponse[index].sId)
                  ? Colors.red
                  : Colors
                      .grey // index % 2 == 0 ? Colors.red : COLOR_GRAY_BLACK,
              ),
          onPressed: () {
            viewModel.token != null && viewModel.token.isNotEmpty
                ? viewModel.addToWishlist(
                    slugId: viewModel.productGridListResponse[index].slug,
                    productId: viewModel.productGridListResponse[index].sId)
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

// class BannerOnGridItem extends ViewModelWidget<BestsellerGridListViewModel> {
//   final index;

//   BannerOnGridItem({this.index});
//   @override
//   Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
//     return index == 0
//         ? Container()
//         : ClipPath(
//             clipper: LinePathBanner(),
//             child: Container(
//               width: 110,
//               height: 25,
//               color: COLOR_GRAY_BLACK,
//               padding: EdgeInsets.only(left: 10, top: 3),
//               child: Text(
//                 "Unavailable",
//                 style: TextStyle(color: COLOR_White),
//               ),
//             ),
//           );
//   }
// }

class BannerOnProduct extends ViewModelWidget<BestsellerGridListViewModel> {
  // final index;
  final UniversalProduct productDetailsResponse;
  BannerOnProduct({this.productDetailsResponse});

  @override
  Widget build(BuildContext context, BestsellerGridListViewModel viewModel) {
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
