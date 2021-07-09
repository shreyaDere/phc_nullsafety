import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/search_bar/search_bar_view_model.dart';
import 'package:stacked/stacked.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchBarViewModel>.reactive(
      viewModelBuilder: () => SearchBarViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            getTranslatedValues("search_your_medicine"),
            textAlign: TextAlign.left,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
              color: COLOR_White,
              fontSize: 16,
            )),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () => model.navigateWishlist(),
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                width: 20,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
                onTap: () => model.navigateCart(),
                child: Badge(
                  position: BadgePosition(top: 5.0, end: 4.0),
                  padding: EdgeInsets.all(3.0),
                  badgeColor: Colors.white,
                  badgeContent: Text(model.quantity.toString(),
                      style: TextStyle(fontSize: 10)),
                  child: SvgPicture.asset(
                    'assets/icons/cart.svg',
                    width: 14,
                  ),
                )),
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: COLOR_PRIMARY,
              ),
              SearchList(),
              Search(),
              model.isBusy ? LoaderCircle() : Container()
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyView extends ViewModelWidget<SearchBarViewModel> {
  @override
  Widget build(BuildContext context, SearchBarViewModel viewModel) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 100, left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Text(getTranslatedValues("no_result"),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 8,
          ),
          Text(getTranslatedValues("sub_no_result"),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}

class LoaderCircle extends ViewModelWidget<SearchBarViewModel> {
  @override
  Widget build(BuildContext context, SearchBarViewModel viewModel) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white54,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
          strokeWidth: 5,
        ),
      ),
    );
  }
}

class Search extends ViewModelWidget<SearchBarViewModel> {
  @override
  Widget build(BuildContext context, SearchBarViewModel viewModel) {
    return GestureDetector(
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
        margin: EdgeInsets.only(left: 25, right: 25, top: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: viewModel.controller,
                textInputAction: TextInputAction.search,
                onSubmitted: (value) =>
                    viewModel.getSearchResponse(search: value),
                onChanged: (value) => viewModel.changeSearchValue(value),
                onTap: () => viewModel.clearList(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search ',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  viewModel.getSearchResponse(search: viewModel.searchString),
              child: SvgPicture.asset(
                'assets/icons/search2.svg',
                width: 51,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchList extends ViewModelWidget<SearchBarViewModel> {
  @override
  Widget build(BuildContext context, SearchBarViewModel viewModel) {
    return viewModel.searchString != null &&
            viewModel.brandList.isEmpty &&
            viewModel.productList.isEmpty
        ? viewModel.flag > 1
            ? EmptyView()
            : Container()
        : Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 100, left: 20, right: 20),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  viewModel.brandList.length != 0
                      ? Text(
                          "Brand",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  Container(
                    height: 40.0 * viewModel.brandList.length,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: viewModel.brandList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => viewModel.navigateToBrandPage(
                              viewModel.brandList[index].name),
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 4),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: Text(
                              viewModel.brandList[index].name,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  viewModel.productList.length != 0
                      ? Text(
                          "Products",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: viewModel.productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => viewModel.navigateProductDetailView(
                              viewModel.productList[index].sId),
                          child: Container(
                            padding: EdgeInsets.only(top: 16, bottom: 6),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: Text(
                              viewModel.productList[index].name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
  }
}

/*
TypeAheadField(
                  textFieldConfiguration: TextFieldConfiguration(
                      autofocus: true,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: "Cormorant",
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 25, right: 25),
                        hintStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Cormorant",
                          fontSize: 16,
                        ),
                        hintText: "Search Product",
                      )),
                  suggestionsCallback: (pattern) => pattern.isEmpty
                      ? viewModel.getClearSuggestions(pattern)
                      : viewModel.getSuggestions(pattern),
                  itemBuilder: (context, suggestion) {
                    var suggestionPhotos = suggestion as ProductList;
                    var index =
                        viewModel.suggesstedProducts.indexOf(suggestionPhotos);
                    return ListTile(
                      title: Text(viewModel.suggesstedProducts[index].name,
                          maxLines: 1,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    );
                  },
                  onSuggestionSelected: (suggestion) =>
                      viewModel.navigateProductDetailView(suggestion.sId)),
           
*/
/*
class SearchBar extends ViewModelWidget<SearchBarViewModel> {
  @override
  Widget build(BuildContext context, SearchBarViewModel viewModel) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
          left: BorderSide(width: 1.0, color: Colors.grey),
          right: BorderSide(width: 1.0, color: Colors.grey),
        ),
        color: Colors.white,
      ),
      child: TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
              autofocus: false,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 25, right: 25),
                hintStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "Cormorant",
                  fontSize: 16,
                ),
                hintText: "Search Product",
              )),
          suggestionsCallback: (pattern) => viewModel.getSuggestions(pattern),
          itemBuilder: (context, suggestion) {
            var suggestionPhotos = suggestion as ProductList;
            var index = viewModel.suggesstedProducts.indexOf(suggestionPhotos);
            return ListTile(
                leading: Icon(Icons.search),
                title: Text(
                  viewModel.suggesstedProducts[index].name,
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: "Cormorant",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "",
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: "Cormorant",
                    fontSize: 16,
                  ),
                ));
          },
          onSuggestionSelected: (suggestion) => {}),
    );
  }
}
*/
