import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/productgridlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/loading_indicator/loading_progress_indicator.dart';
import 'package:stacked/stacked.dart';

import 'filters_view_model.dart';

class FiltersView extends StatelessWidget {
  final ProductGridListResponse productGridListResponse;
  FiltersView({Key key, this.productGridListResponse}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FiltersViewModel>.reactive(
        viewModelBuilder: () => FiltersViewModel(),
        onModelReady: (model) => model.loadData(productGridListResponse),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                bottomOpacity: 0.0,
                centerTitle: false,
                iconTheme: new IconThemeData(color: COLOR_White),
                backgroundColor: COLOR_PRIMARY,
                title: Text(
                  getTranslatedValues("filter"),
                  textAlign: TextAlign.left,
                  style: TextStyle(color: COLOR_White),
                ),
                actions: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: COLOR_White,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.shopping_cart,
                    color: COLOR_White,
                  ),
                  SizedBox(width: 10),
                ],
              ),
              body: SafeArea(
                top: true,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      BottomBtnCloseApply(),
                      TopOptionsContainerClearAll(),
                      Container(
                          margin: EdgeInsets.only(top: 50, left: 5, right: 5),
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: Color(0xFFEDEDED)),
                      FiltersDynamicListView(),
                      model.isBusy ? showLoader(context: context) : Container()
                    ],
                  ),
                ),
              ),
            ));
  }
}

class EmptyList extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          "assets/images/nofilter.svg",
          height: 150,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          getTranslatedValues("no_filter_ava"),
          textAlign: TextAlign.center,
          maxLines: 2,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: COLOR_PRIMARY,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class BottomBtnCloseApply extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return Positioned(
      bottom: 1,
      left: 0,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => viewModel.popView(),
                child: Text(
                  getTranslatedValues("close"),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 10),
                color: COLOR_GRAY_BLACK,
                height: 30,
                width: 1),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => viewModel.applyFilters(),
                child: Text(
                  getTranslatedValues("apply"),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: COLOR_PRIMARY),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FiltersDynamicListView extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return Container(
      margin: EdgeInsets.only(top: 51, bottom: 51),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: <Widget>[
          Expanded(flex: 2, child: SelectCategoryListView()),
          Expanded(flex: 3, child: SubSelectionListView())
        ],
      ),
    );
  }
}

class SelectCategoryListView extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height,
      color: Color(0XFFEDEDED),
      child: viewModel.productGridListResponse != null
          ? ListView.builder(
              itemCount: viewModel
                      .productGridListResponse.data.filters.attributes.length +
                  1,
              itemBuilder: (BuildContext ctxt, int index) {
                if (index == 0) {
                  return GestureDetector(
                    onTap: () => viewModel.updateSelectedIndex(index),
                    child: Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 25, right: 20),
                        child: Text(
                          "Sub categories",
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight:
                                    index == viewModel.mainFilterIndexSelection
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                          ),
                        )),
                  );
                }
                //else {
                // return GestureDetector(
                //   onTap: () => viewModel.updateSelectedIndex(index),
                //   child: Container(
                //       margin: EdgeInsets.only(top: 10, bottom: 10, left: 25),
                //       child: Text(
                //         viewModel.productGridListResponse.data.filters
                //             .attributes[index - 1].name,
                //         style: GoogleFonts.nunitoSans(
                //           textStyle: TextStyle(
                //               fontSize: 18,
                //               fontWeight:
                //                   index == viewModel.mainFilterIndexSelection
                //                       ? FontWeight.bold
                //                       : FontWeight.normal),
                //         ),
                //       )),
                // );
                // }
              })
          : Container(),
    );
  }
}

class SubSelectionListView extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return viewModel.productGridListResponse != null
        ? Container(
            padding: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: viewModel.geSubFilterListCount() > 0
                ? ListView.builder(
                    itemCount: viewModel.geSubFilterListCount(),
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                          margin:
                              EdgeInsets.only(top: 10, bottom: 10, left: 25),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    viewModel.mainFilterIndexSelection == 0
                                        ? viewModel.selectItemForFilterSub(
                                            index: index,
                                          )
                                        : viewModel.selectItemForFilterAtt(
                                            index: index,
                                            type: viewModel
                                                .productGridListResponse
                                                .data
                                                .filters
                                                .attributes[viewModel
                                                        .mainFilterIndexSelection -
                                                    1]
                                                .name,
                                            term: viewModel
                                                .productGridListResponse
                                                .data
                                                .filters
                                                .attributes[viewModel
                                                        .mainFilterIndexSelection -
                                                    1]
                                                .terms[index]
                                                .name);
                                  },
                                  child: Text(
                                    viewModel.mainFilterIndexSelection == 0
                                        ? viewModel.productGridListResponse.data
                                            .filters.subcategories[index].name
                                        : viewModel
                                            .productGridListResponse
                                            .data
                                            .filters
                                            .attributes[viewModel
                                                    .mainFilterIndexSelection -
                                                1]
                                            .terms[index]
                                            .name,
                                    style: GoogleFonts.nunitoSans(
                                        textStyle: TextStyle(
                                      fontSize: 18,
                                    )),
                                  ),
                                ),
                              ),
                              viewModel.mainFilterIndexSelection == 0
                                  ? Expanded(
                                      //SUBCATEGORY tick
                                      flex: 1,
                                      child: viewModel.selectedCatId.contains(
                                              viewModel
                                                  .productGridListResponse
                                                  .data
                                                  .filters
                                                  .subcategories[index]
                                                  .catId)
                                          ? Icon(
                                              Icons.check,
                                              size: 15,
                                            )
                                          : Container(),
                                    )
                                  : Container(),
                              SizedBox(
                                width: 25,
                              )
                            ],
                          ));
                    })
                : Center(child: EmptyList()),
          )
        : Container();
  }
}

class TopOptionsContainerClearAll extends ViewModelWidget<FiltersViewModel> {
  @override
  Widget build(BuildContext context, FiltersViewModel viewModel) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 25, right: 25),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => viewModel.clearAll(),
                child: Text(
                  getTranslatedValues("clear_all"),
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 14, color: COLOR_PRIMARY),
                ),
              ))
        ],
      ),
    );
  }
}
