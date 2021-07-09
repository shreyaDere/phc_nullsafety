import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/creation_aware_list/creation_aware_list_item.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart';
import 'category_view_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
      viewModelBuilder: () => CategoryViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("category"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () => model.navigateWishlist(),
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                width: 20,
                //color: Colors.white,
              ),
            ),
            SizedBox(width: 20),
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
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("categoryViewWidgetList"),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    color: COLOR_PRIMARY,
                  ),
                  CategoryWidgetList(),
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

class CategoryWidgetList extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          SearchBnavCategory(),
          SizedBox(height: 20),
          // CategoryTitle(),
          SizedBox(height: 20),
          CategoryList(),
          SizedBox(height: 20),
          // viewModel.getSubCategoryResponse != null &&
          //         viewModel.getSubCategoryResponse.data.categories.length > 0
          //     ? SubCategoryTitle()
          //     : Container(),
          SizedBox(height: 20),
          SubCategoryGridView(),
          SizedBox(height: 20),
          // viewModel.getSubCategoryResponse != null &&
          //         viewModel.getSubCategoryResponse.data.brands.length > 0
          //     ? BrandsTitle()
          //     : Container(),
          GestureDetector(
              onTap: () => viewModel.navigateToBrandsGridList(),
              child: BrandsTitle()),
          SizedBox(height: 30),
          BrandsGridView(),
          SizedBox(height: 30),
          // SubCategoryGridView(),
        ],
      ),
    );
  }
}

class SearchBnavCategory extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
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

class SubCategoryGridView extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: viewModel.getSubCategoryResponse != null
          ? viewModel.getSubCategoryResponse.data.categories.length
          : 0,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          mainAxisSpacing: 15,
          crossAxisSpacing: 10,
          crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return CreationAwareListItem(
          itemCreated: () => SchedulerBinding.instance.addPostFrameCallback(
              (duration) => viewModel.requestMoreData(index)),
          child: GestureDetector(
              onTap: () => viewModel.navigateToProductList(
                  slugId: viewModel
                      .getSubCategoryResponse.data.categories[index].slug,
                  productName: viewModel.getLanguageChangedText(
                      viewModel.getSubCategoryResponse.data.categories[index],
                      0)),
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      margin: EdgeInsets.only(bottom: 40),
                      color: COLOR_GRAY_BLACK,
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
                              "$BASE_URL${viewModel.getSubCategoryResponse.data.categories[index].featuredImage}"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Text(
                        viewModel.getSubCategoryResponse != null
                            ? viewModel.getLanguageChangedText(
                                viewModel.getSubCategoryResponse.data
                                    .categories[index],
                                0)
                            : getTranslatedValues("category"),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(color: COLOR_GRAY, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}

class BrandsGridView extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: viewModel.getSubCategoryResponse != null
          ? viewModel.getSubCategoryResponse.data.brands.length
          : 0,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return CreationAwareListItem(
          itemCreated: () => SchedulerBinding.instance.addPostFrameCallback(
              (duration) => viewModel.requestMoreData(index)),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                // color: COLOR_PRIMARY_LIGHT,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
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
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width,
                          imageUrl: viewModel.getSubCategoryResponse != null &&
                                  viewModel.getSubCategoryResponse.data.brands
                                      .isNotEmpty
                              ? "$BASE_URL${viewModel.getSubCategoryResponse.data.brands[index].brandCoverPic}"
                              : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}

class CategoryList extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        key: PageStorageKey("category-list"),
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.categoryResponse != null
            ? viewModel.categoryResponse.data.categories.length
            : 0,
        itemBuilder: (context, index) {
          return index > 0
              ? CreationAwareListItem(
                  // itemCreated: () => SchedulerBinding.instance
                  //     .addPostFrameCallback(
                  //         (duration) => viewModel.requestMoreData(index)),
                  child: GestureDetector(
                    onTap: () =>
                        viewModel.onCategorySelected(currentIndex: index),
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 70.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration:
                                viewModel.selectedCategoryIndex == index &&
                                        viewModel.selectedCategoryIndex > 0
                                    ? BoxDecoration(
                                        border: Border.all(
                                            color: COLOR_White, width: 1),
                                        borderRadius: BorderRadius.circular(40))
                                    : BoxDecoration(),
                            child: CircleAvatar(
                              radius: 25,
                              child: ClipOval(
                                child: CachedNetworkImage(
                                    errorWidget: (context, url, error) =>
                                        Container(
                                          child: SvgPicture.asset(
                                            'assets/icons/prescription_placeholder.svg',
                                          ),
                                        ),
                                    placeholder: (context, url) => Container(
                                          child: SvgPicture.asset(
                                            'assets/icons/prescription_placeholder.svg',
                                          ),
                                        ),
                                    fit: BoxFit.fitHeight,
                                    imageUrl:
                                        "$BASE_URL${viewModel.categoryResponse.data.categories[index].featuredImage}"),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            // padding: EdgeInsets.only(left: 2),
                            child: Expanded(
                              child: Text(
                                viewModel.categoryResponse != null
                                    ? viewModel.getLanguageChangedText(
                                        viewModel.categoryResponse.data
                                            .categories[index],
                                        0)
                                    : "Category and name",
                                maxLines: 2,
                                style: GoogleFonts.nunitoSans(
                                  textStyle: TextStyle(
                                      color: COLOR_White, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          // viewModel.selectedCategoryIndex == index
                          //     ? Icon(Icons.keyboard_arrow_down,
                          //         color: COLOR_White)
                          //     : Container()
                        ],
                      ),
                    ),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}

class CategoryTitle extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(children: <Widget>[
        Text(
          getTranslatedValues("category"),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(color: COLOR_White, fontSize: 16),
          ),
        ),
      ]),
    );
  }
}

class SubCategoryTitle extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(children: <Widget>[
        Text(
          getTranslatedValues("sub_category"),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                color: COLOR_GRAY, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ]),
    );
  }
}

class BrandsTitle extends ViewModelWidget<CategoryViewModel> {
  @override
  Widget build(BuildContext context, CategoryViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(children: <Widget>[
        Text(
          getTranslatedValues("brands"),
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
                color: COLOR_GRAY, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ]),
    );
  }
}
