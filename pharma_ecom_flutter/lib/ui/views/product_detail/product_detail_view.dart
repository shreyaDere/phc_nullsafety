import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/creation_aware_list/creation_aware_list_item.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/product_detail/product_detail_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductDetailView extends StatelessWidget {
  final String slugId;
  const ProductDetailView({Key key, this.slugId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductDetailsViewModel>.reactive(
      viewModelBuilder: () => ProductDetailsViewModel(),
      onModelReady: (model) => model.loadData(slugId: slugId),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("app_bar_product"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontSize: 16,
            )),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () => model.navigateSearch(),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 18,
                //color: Colors.white,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
                onTap: () => model.navigateCart(),
                child: Badge(
                  position: BadgePosition(top: 5.0, end: 4.0),
                  padding: EdgeInsets.all(3.0),
                  badgeColor: Colors.white,
                  badgeContent:
                      Text("${model.quantity}", style: TextStyle(fontSize: 10)),
                  child: SvgPicture.asset(
                    'assets/icons/cart.svg',
                    width: 14,
                    //color: Colors.white,
                  ),
                )),
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("DashboardWidgetList"),
              child: Stack(
                children: <Widget>[
                  ProductDetailsWidgetList(),
                  model.isBusy ? Container() : WishListShareContainer(),
                  // model.isBusy
                  //     ? Container()
                  //     : Positioned(
                  //         left: 25.0,
                  //         bottom: MediaQuery.of(context).size.width /
                  //             1.4, //MediaQuery.of(context).size.width / 3, //250,
                  //         child: Container(child: BannerOnProduct())),
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

class WishListShareContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Positioned(
      top: 40,
      right: 40,
      child: Container(
          child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          GestureDetector(
              onTap: () => viewModel.addToWishList(),
              child: SvgPicture.asset(
                'assets/icons/heartfill.svg',
                width: 25,
                color: viewModel.cartStatus ? COLOR_PRIMARY : Colors.grey[200],
              ))
        ],
      )),
    );
  }
}

class ProductDetailsWidgetList
    extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25),
        ProductDetailContainer(),

        // ProductOffersContainer(),
        // SizedBox(height: 10),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data != null &&
                viewModel.productDetailsResponse.data.product.offerType == 1
            ? OfferContainer()
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.description !=
                    null
            ? SizedBox(height: 10)
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.description !=
                    null
            ? MedicineOverviewContainer()
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.description !=
                    null
            ? SizedBox(height: 10)
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.description !=
                    null
            ? DescriptionContainer()
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.specifications !=
                    null
            ? SizedBox(height: 10)
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.specifications !=
                    null
            ? SpecificationContainer()
            : Container(),
        SizedBox(height: 10),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.attributes != null
            ? AttributeContainer()
            : Container(),

        CommentTitle(),
        CommentView(),
        SeeAllCommentView(),
        SizedBox(height: 20),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.upsellIds.length >
                    0
            ? ReleatedProductListTitle()
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.upsellIds.length >
                    0
            ? SizedBox(height: 20)
            : Container(),
        viewModel.productDetailsResponse != null &&
                viewModel.productDetailsResponse.data.product.upsellIds.length >
                    0
            ? RelatedProductList()
            : Container(),
        SizedBox(height: 30)
      ],
    );
  }
}

class AttributeContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25.0, right: 25.0),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 0.9, color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   getTranslatedValues("attribute"),
          //   textAlign: TextAlign.left,
          //   style: GoogleFonts.nunitoSans(
          //       textStyle: TextStyle(
          //           fontSize: 14.0,
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold)),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: viewModel
                    .productDetailsResponse.data.product.attributes.length,
                //  viewModel
                //     .productDetailsResponse.data.product.attributes.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Text(
                          viewModel.getLanguageChangedText(
                              viewModel.productDetailsResponse.data.product
                                  .attributes[index],
                              0),
                          style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal)),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "${viewModel.productDetailsResponse.data.product.attributes[index].terms[0].name}",
                          maxLines: 2,
                          style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class OfferContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(width: 0.9, color: COLOR_PRIMARY),
        ),
        child: Text(
          viewModel.getOfferCode(),
          textAlign: TextAlign.center,
          style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  fontSize: 14.0,
                  color: COLOR_PRIMARY,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

class CommentTitle extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Row(children: <Widget>[
      SizedBox(
        width: 25,
      ),
      Expanded(
        flex: 6,
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: getTranslatedValues("comments"),
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              fontSize: 14.0,
              color: COLOR_GRAY,
            )),
          ),
          TextSpan(
              text: '  ',
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                fontSize: 14.0,
                color: COLOR_GRAY_BLACK,
                fontWeight: FontWeight.bold,
              ))),
          TextSpan(
              text: viewModel.productDetailsResponse != null
                  ? "${viewModel.productDetailsResponse.data.totalReviews}"
                  : "",
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                fontSize: 14.0,
                color: COLOR_GRAY_BLACK,
                fontWeight: FontWeight.bold,
              ))),
        ])),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerRight,
          child: IconButton(
            color: COLOR_PRIMARY,
            icon: Icon(Icons.message),
            onPressed: () {
              viewModel.navigateToNewComments();
            },
          ),
        ),
      ),
      SizedBox(
        width: 18,
      ),
    ]);
  }
}

class SeeAllCommentView extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return viewModel.productDetailsResponse != null &&
            viewModel.productDetailsResponse.data.totalReviews > 0
        ? Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () => viewModel.navigateToAllComments(),
              child: Text(
                getTranslatedValues("see_all"),
                textAlign: TextAlign.left,
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                  fontSize: 14.0,
                  color: COLOR_PRIMARY,
                )),
              ),
            ),
          )
        : Container();
  }
}

class CommentView extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      height: viewModel.productDetailsResponse != null
          ? viewModel.getHeightCommentView(
              length: viewModel.productDetailsResponse.data.reviews.length)
          : 1,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: viewModel.productDetailsResponse != null &&
                  viewModel.productDetailsResponse.data.reviews.length > 0
              ? viewModel.productDetailsResponse.data.reviews.length < 3
                  ? viewModel.productDetailsResponse.data.reviews.length
                  : 3
              : 0,
          itemBuilder: (context, index) {
            return SingleCommentRowContainer(
              comment:
                  viewModel.productDetailsResponse.data.reviews[index].review,
              title:
                  viewModel.productDetailsResponse.data.reviews[index].username,
            );
          }),
    );
  }
}

class ReleatedProductListTitle
    extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Row(children: <Widget>[
        Expanded(
          flex: 4,
          child: Text(
            getTranslatedValues("related_products"),
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                  color: COLOR_GRAY, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => viewModel.navigateToProductList(),
            child: Text(
              getTranslatedValues("view_all"),
              textAlign: TextAlign.right,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY_BLACK, fontSize: 14),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class SingleCommentRowContainer
    extends ViewModelWidget<ProductDetailsViewModel> {
  final title;
  final comment;
  final index;

  SingleCommentRowContainer({this.title, this.comment, this.index});
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(children: <Widget>[
          Flexible(
            child: CircleAvatar(
              backgroundColor: COLOR_PRIMARY_LIGHT,
              radius: 18,
              child: ClipOval(
                child: Icon(
                  Icons.comment_sharp,
                  color: COLOR_PRIMARY,
                  size: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 8,
            child: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  maxLines: 1,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    fontSize: 14.0,
                    color: COLOR_GRAY,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                Text(
                  comment,
                  maxLines: 1,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                    fontSize: 13.0,
                    color: COLOR_GRAY,
                  )),
                ),
              ],
            )),
          )
        ]));
  }
}

class ProductOffersContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              getTranslatedValues("select_offer"),
              style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                fontSize: 14.0,
                color: COLOR_GRAY_BLACK,
              )),
            ),
            SizedBox(height: 15),
            OffersContainers(),
            SizedBox(height: 15),
          ],
        ));
  }
}

class OffersContainers extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: ListView.builder(
        key: PageStorageKey("product-categories-category-list"),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return CreationAwareListItem(
              // itemCreated: () => SchedulerBinding.instance
              //     .addPostFrameCallback(
              //         (duration) => viewModel.requestMoreData(index)),
              child: GestureDetector(
                  onTap: () => viewModel.selectOffer(index: index),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: viewModel.selectOfferIndex == index
                          ? COLOR_PRIMARY
                          : Colors.transparent,
                      border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
                    ),
                    width: 50.0,
                    height: 30,
                    child: Center(
                      child: Text(
                        "1+1",
                        maxLines: 1,
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              color: viewModel.selectOfferIndex == index
                                  ? COLOR_White
                                  : COLOR_GRAY_BLACK,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  )));
        },
      ),
    );
  }
}

class ProductDetailContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 15),
                ProductNameContainer(),
                null != viewModel.productDetailsResponse &&
                        null !=
                            viewModel.productDetailsResponse.data.product
                                .imageGallery.length &&
                        viewModel.productDetailsResponse.data.product
                                .imageGallery.length >
                            0
                    ? ProductCarousel()
                    : Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: SvgPicture.asset(
                          'assets/icons/prescription_placeholder.svg',
                        ),
                      ),
                //BannerOnProduct(),
                StockMessage(),
                SizedBox(height: 10),
                PriceContainer(),
                SizedBox(height: 15),
                AddToCartContainer(),
                SizedBox(height: 10),
              ],
            )),
        viewModel.isBusy
            ? Container()
            : Positioned(
                left: 25.0,
                top: 82,
                child: Container(child: BannerOnProduct())),
      ],
    );
  }
}

class StockMessage extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Visibility(
        visible: viewModel.getInfoStockMessageStatus(),
        child: Text(getTranslatedValues("ship_message")));
  }
}

class MedicineOverviewContainer
    extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      // margin: EdgeInsets.only(left: 25, right: 25),
      child: ConfigurableExpansionTile(
        key: PageStorageKey('medicineContainer'),
        initiallyExpanded: false,
        headerExpanded: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
            child: Row(
              children: [
                Expanded(
                  child: Text(getTranslatedValues("medicine_overview"),
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunitoSans(
                          textStyle:
                              TextStyle(color: COLOR_GRAY, fontSize: 14))),
                ),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        header: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  getTranslatedValues("medicine_overview"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)),
                )),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        children: [
          Container(
              width: MediaQuery.of(context).size.width - 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                      left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                      right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
              child: Row(
                children: [
                  Expanded(
                    child: Html(
                      data: viewModel.productDetailsResponse != null &&
                              viewModel.productDetailsResponse.data.product
                                      .description !=
                                  null &&
                              viewModel.productDetailsResponse.data.product
                                      .description !=
                                  null
                          ? viewModel.getLanguageChangedText(
                              viewModel.productDetailsResponse.data.product, 1)
                          : "",
                      style: {
                        "html": Style(
                          color: COLOR_GRAY,
                          fontSize: FontSize(12),
                          fontFamily: "Noto Sans",
                        ),
                      },
                    ),
                  ),
                ],
              )),

          // + more params, see example !!
        ],
      ),
    );
  }
}

class RelatedProductList extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 2 + 100,
      child: ListView.builder(
        key: PageStorageKey("productlist"),
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.productDetailsResponse != null
            ? viewModel.productDetailsResponse.data.product.upsellIds.length
            : 0,
        itemBuilder: (context, index) {
          return CreationAwareListItem(
            // itemCreated: () => SchedulerBinding.instance
            //     .addPostFrameCallback(
            //         (duration) => viewModel.requestMoreData(index)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  right: 18,
                  child: SvgPicture.asset(
                    'assets/icons/plus.svg',
                    width: 45,
                    height: 45,
                  ),
                ),
                GestureDetector(
                  onTap: () => viewModel.navigateToCategory(index),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
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
                                  "$BASE_URL${viewModel.productDetailsResponse.data.product.upsellIds[index].featuredImage}"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            viewModel.productDetailsResponse.data.product
                                .upsellIds[index].name,
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
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "BD ${viewModel.productDetailsResponse.data.product.upsellIds[index].regularPrice}",
                            maxLines: 1,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  color: COLOR_PRIMARY,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "BD ${viewModel.productDetailsResponse.data.product.upsellIds[index].regularPrice}",
                            maxLines: 1,
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: COLOR_GRAY,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                //AddToWishList(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DescriptionContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      // margin: EdgeInsets.only(left: 25, right: 25),
      child: ConfigurableExpansionTile(
        key: PageStorageKey('descriptionContainer'),
        initiallyExpanded: false,
        headerExpanded: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  getTranslatedValues("medicine_descriptions"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)),
                )),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        header: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  getTranslatedValues("medicine_descriptions"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)),
                )),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        children: [
          Container(
              width: MediaQuery.of(context).size.width - 50,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                      left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                      right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
              child: Row(
                children: [
                  Expanded(
                    child: Html(
                      data: viewModel.productDetailsResponse != null &&
                              viewModel.productDetailsResponse.data.product
                                      .description !=
                                  null &&
                              viewModel.productDetailsResponse.data.product
                                      .description !=
                                  null
                          ? viewModel.getLanguageChangedText(
                              viewModel.productDetailsResponse.data.product, 1)
                          : "",
                      style: {
                        "html": Style(
                          color: COLOR_GRAY,
                          fontSize: FontSize(12),
                          fontFamily: "Noto Sans",
                        ),
                      },
                    ),
                  ),
                ],
              )),

          // + more params, see example !!
        ],
      ),
    );
  }
}

class SpecificationContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      // margin: EdgeInsets.only(left: 25, right: 25),
      child: ConfigurableExpansionTile(
        key: PageStorageKey('specificationContainer'),
        initiallyExpanded: false,
        headerExpanded: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  getTranslatedValues("medicine_specification"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)),
                )),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        header: Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              border: Border.all(color: COLOR_GRAY_BLACK, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  getTranslatedValues("medicine_specification"),
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)),
                )),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: COLOR_GRAY_BLACK,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )),
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 50,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    left: BorderSide(width: 1, color: COLOR_GRAY_BLACK),
                    right: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
            child: Html(
              data: viewModel.productDetailsResponse != null &&
                      viewModel.productDetailsResponse.data.product
                              .specifications !=
                          null &&
                      viewModel.productDetailsResponse.data.product
                              .specifications !=
                          null
                  ? viewModel.getLanguageChangedText(
                      viewModel.productDetailsResponse.data.product, 2)
                  : "",
              style: {
                "html": Style(
                  color: COLOR_GRAY,
                  fontSize: FontSize(12),
                  fontFamily: "Noto Sans",
                ),
              },
            ),
          )
        ],
      ),
    );
  }
}

class AddToCartContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Visibility(
      visible: viewModel.addToCartStatus(),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
            // child: Container(
            //   width: 80,
            //   height: 60.0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       GestureDetector(
            //         onTap: () {
            //           viewModel.minus();
            //         },
            //         child: Stack(
            //           children: [
            //             Container(
            //               height: 30.0,
            //               width: 30.0,
            //               child: Center(
            //                   child: Text(
            //                 '-',
            //                 style: TextStyle(color: Colors.white, fontSize: 16),
            //               )),
            //               decoration: BoxDecoration(
            //                   color: Colors.grey[350],
            //                   borderRadius: BorderRadius.circular(4.0)),
            //             ),
            //             Visibility(
            //               visible: viewModel.count == 1,
            //               child: Container(
            //                 height: 30.0,
            //                 width: 30.0,
            //                 color: Colors.white60,
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       Container(
            //         height: 20.0,
            //         color: Colors.grey[100],
            //         child: Text(
            //           "${viewModel.count}",
            //           style: TextStyle(
            //             fontSize: 14.0,
            //           ),
            //         ),
            //       ),
            //       Stack(
            //         children: [
            //           GestureDetector(
            //             onTap: () {
            //               viewModel.add();
            //             },
            //             child: Container(
            //               height: 30.0,
            //               width: 30.0,
            //               child: Center(
            //                   child: Text(
            //                 '+',
            //                 style: TextStyle(color: Colors.white, fontSize: 16),
            //               )),
            //               decoration: BoxDecoration(
            //                   color: Colors.grey[350],
            //                   borderRadius: BorderRadius.circular(4.0)),
            //             ),
            //           ),
            //           Visibility(
            //             visible: viewModel.count == 5,
            //             child: Container(
            //               height: 30.0,
            //               width: 30.0,
            //               color: Colors.white60,
            //             ),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: viewModel.productDetailsResponse != null &&
                    viewModel.getCartResponse != null &&
                    viewModel.cartProduct.any((test) =>
                        test.sId ==
                        viewModel.productDetailsResponse.data.product.sId)
                ? Container(
                    width: 80,
                    height: 30.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            viewModel.minus(index: viewModel.getIndex());
                          },
                          child: Icon(
                            Icons.remove_circle,
                            color: viewModel.cartProduct[viewModel.getIndex()]
                                        .quantity <=
                                    1
                                ? Colors.black12
                                : Colors.black,
                          ),
                        ),
                        Text(
                          viewModel.cartProduct[viewModel.getIndex()].quantity
                              .toString(),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModel.add(index: viewModel.getIndex());
                          },
                          child: Icon(
                            Icons.add_circle,
                            color: viewModel.cartProduct[viewModel.getIndex()]
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
                    height: 50,
                    color: COLOR_PRIMARY,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: COLOR_PRIMARY,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      viewModel.addToCart(
                          productId:
                              viewModel.productDetailsResponse.data.product.sId,
                          quantity: 1);
                    },
                    child: Text(
                      getTranslatedValues("add_to_cart"),
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                    )),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class LinePathBanner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 120);
    path.lineTo(120, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class BannerOnProduct extends ViewModelWidget<ProductDetailsViewModel> {
  // final index;
  BannerOnProduct();

  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return ClipPath(
      clipper: LinePathBanner(),
      child: Container(
        width: 120,
        height: 25,
        color: Colors.indigo[900],
        padding: EdgeInsets.only(left: 16, top: 3, right: 20),
        child: Text(
          viewModel.getProductStatus(), //getTranslatedValues("pickup"),
          textAlign: TextAlign.left,
          style: TextStyle(color: COLOR_White),
        ),
      ),
    );
  }
}

class ProductCarousel extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            pageViewKey: PageStorageKey('carousel_slider'),
            viewportFraction: 1,
            enlargeCenterPage: false,
            initialPage: 1,
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              viewModel.onCarousalPageChanged(index, reason);
            },
            scrollDirection: Axis.horizontal,
          ),
          itemCount: null != viewModel.productDetailsResponse &&
                  null !=
                      viewModel.productDetailsResponse.data.product.imageGallery
                          .length &&
                  viewModel.productDetailsResponse.data.product.imageGallery
                          .length >
                      0
              ? viewModel
                  .productDetailsResponse.data.product.imageGallery.length
              : 1,
          itemBuilder: (ctx, index) {
            return viewModel.productDetailsResponse != null
                ? Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
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
                                "$BASE_URL${viewModel.productDetailsResponse.data.product.imageGallery[index]}"),
                        onTap: () {}),
                    decoration: BoxDecoration())
                : Container();
          },
        ),
        null != viewModel.productDetailsResponse
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: viewModel
                    .productDetailsResponse.data.product.imageGallery
                    .map((element) {
                  final index = null !=
                          viewModel.productDetailsResponse.data.product
                              .imageGallery.length
                      ? viewModel.productDetailsResponse.data.product
                          .imageGallery.length
                      : 1;
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: viewModel.currentIndexCarousel == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              )
            : Container()
      ],
    );
  }
}

class PriceContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 20),
        Text(
            viewModel.productDetailsResponse != null &&
                    viewModel.productDetailsResponse.data != null &&
                    viewModel.productDetailsResponse.data.product != null
                ? viewModel.getProductPrice()
                : "",
            textAlign: TextAlign.start,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    color: COLOR_GRAY,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))),
        SizedBox(width: 10),
        Text(
            viewModel.productDetailsResponse != null &&
                    viewModel.productDetailsResponse.data != null &&
                    viewModel.productDetailsResponse.data.product.offerType == 0
                ? viewModel.getDiscountText()
                // .productDetailsResponse.data.product
                //             .productDiscount ==
                //         0
                //     ? ""
                //     : "BD ${viewModel.productDetailsResponse.data.product.regularPrice}"
                : "",
            textAlign: TextAlign.start,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_GRAY,
              fontSize: 16,
              decoration: TextDecoration.lineThrough,
            ))),
        SizedBox(width: 10),
        // Text(
        //   viewModel.productDetailsResponse != null &&
        //           viewModel.productDetailsResponse.data != null &&
        //           viewModel.productDetailsResponse.data.product.offerType == 0
        //       ? "(${viewModel.productDetailsResponse.data.product.productDiscount}% off)"
        //       : viewModel.getOfferCode(),
        //   textAlign: TextAlign.start,
        //   style: GoogleFonts.nunitoSans(
        //       textStyle: TextStyle(color: COLOR_PRIMARY, fontSize: 16)),
        // )
      ],
    );
  }
}

class ProductNameContainer extends ViewModelWidget<ProductDetailsViewModel> {
  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 80),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                  viewModel.productDetailsResponse != null &&
                          null !=
                              viewModel.productDetailsResponse.data.product.name
                      ? viewModel.getLanguageChangedText(
                          viewModel.productDetailsResponse.data.product, 0)
                      : "",
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                          color: COLOR_GRAY,
                          fontWeight: FontWeight.bold,
                          fontSize: 16))),
            ),
            SizedBox(height: 5),
            Text("",
                style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14)))
          ]),
    );
  }
}
