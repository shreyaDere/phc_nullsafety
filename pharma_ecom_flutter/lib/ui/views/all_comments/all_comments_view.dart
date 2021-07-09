import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

import 'all_comments_view_model.dart';

class AllCommentsView extends StatelessWidget {
  final ProductDetailResponse productDetailResponse;
  const AllCommentsView({Key key, this.productDetailResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllCommentsViewModel>.reactive(
      viewModelBuilder: () => AllCommentsViewModel(),
      onModelReady: (model) => model.loadData(productDetailResponse),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 0.0,
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          backgroundColor: COLOR_PRIMARY,
          title: Text(
            getTranslatedValues("all_comment"),
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
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
              child: Icon(
                Icons.shopping_cart,
                color: COLOR_White,
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: COLOR_PRIMARY,
          onPressed: () => model.onAddCommentPressed(),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: SingleChildScrollView(
              key: PageStorageKey("DashboardWidgetList"),
              child: Stack(
                children: <Widget>[
                  AllCommentListViewModel(),
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

class AllCommentListViewModel extends ViewModelWidget<AllCommentsViewModel> {
  @override
  Widget build(Object context, AllCommentsViewModel viewModel) {
    return Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        padding: EdgeInsets.only(bottom: 80),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: viewModel.allCommentResponse != null
                ? viewModel.allCommentResponse.data.length
                : 0,
            itemBuilder: (context, index) {
              return Column(children: <Widget>[
                SingleCommentRowContainer(
                  title: "Name",
                  comment: "Comment",
                  index: index,
                )
              ]);
            }));
  }
}

class SingleCommentRowContainer extends ViewModelWidget<AllCommentsViewModel> {
  final title;
  final comment;
  final index;

  SingleCommentRowContainer({this.title, this.comment, this.index});
  @override
  Widget build(BuildContext context, AllCommentsViewModel viewModel) {
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: COLOR_GRAY_BLACK))),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
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
              SizedBox(width: 10),
              Expanded(
                flex: 8,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: viewModel.allCommentResponse != null
                              ? viewModel.allCommentResponse.data
                                  .elementAt(index)
                                  .username
                              : "",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: COLOR_GRAY,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: '\n',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: COLOR_GRAY_BLACK,
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text: viewModel.allCommentResponse != null
                            ? viewModel.allCommentResponse.data
                                .elementAt(index)
                                .review
                            : "",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: COLOR_GRAY,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            // UploadedImagesHorizontalList(
            //   index: index,
            // ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}

class UploadedImagesHorizontalList
    extends ViewModelWidget<AllCommentsViewModel> {
  final int index;
  UploadedImagesHorizontalList({this.index});
  @override
  Widget build(BuildContext context, AllCommentsViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: viewModel.allCommentResponse != null &&
                viewModel.allCommentResponse.data[index].media.length > 0
            ? viewModel.allCommentResponse.data[index].media.length
            : 0,
        itemBuilder: (context, index) {
          return Container(
            margin: index != 0
                ? EdgeInsets.only(left: 10)
                : EdgeInsets.only(left: 0),
            width: 80,
            height: 80,
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
                imageUrl: viewModel.allCommentResponse != null
                    ? "$BASE_URL${viewModel.allCommentResponse.data.elementAt(index).media.elementAt(index)}"
                    : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
          );
        },
      ),
    );
  }
}
