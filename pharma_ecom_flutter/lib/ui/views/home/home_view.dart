import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/app_drawer/app_drawer_view.dart';
import 'package:stacked/stacked.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  final int index;
  HomeView({Key key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.loadData(index),
      builder: (context, model, child) => Scaffold(
        drawer: AppDrawerView(),
        appBar: AppBar(
          centerTitle: false,
          iconTheme: new IconThemeData(color: COLOR_White),
          elevation: 0,
          bottomOpacity: 0.0,
          backgroundColor: COLOR_PRIMARY,
          titleSpacing: 1,
          title: Text(
            model.titleAppbar,
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
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: COLOR_PRIMARY,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(children: <Widget>[
            BottomNavIcon(0, "home"),
            BottomNavIcon(1, "prescription"),
            BottomNavIcon(2, "category"),
            BottomNavIcon(3, "myorder"),
          ]),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: Stack(
            children: <Widget>[
              model.returnSelectedView(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavIcon extends ViewModelWidget<HomeViewModel> {
  final int currentIndex;
  final String iconName;

  const BottomNavIcon(
    this.currentIndex,
    this.iconName, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    BoxDecoration boxDecorationReturn(int index) {
      return BoxDecoration(color: COLOR_White);
    }

    return Expanded(
      flex: 1,
      child: GestureDetector(
          onTap: () {
            model.updateIndex(index: currentIndex);
          },
          child: Container(
              height: 60,
              decoration: boxDecorationReturn(currentIndex),
              child: Center(
                child: currentIndex == model.selectedIndex
                    ? SvgPicture.asset(
                        'assets/icons/${iconName}enable.svg',
                        width: 28,
                        height: 28,
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/${iconName}disable.svg',
                            width: 20,
                            height: 21,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            getTranslatedValues("$iconName"),
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
              ))),
    );
  }
}
