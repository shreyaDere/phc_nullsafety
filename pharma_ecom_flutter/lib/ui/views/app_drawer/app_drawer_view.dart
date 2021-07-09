import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/color/colors.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:stacked/stacked.dart';

import 'app_drawer_view_model.dart';

class AppDrawerView extends StatelessWidget {
  // bool isEnglish;
  AppDrawerView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppDrawerViewModel>.reactive(
        onModelReady: (model) => model.loadData(),
        builder: (context, viewModel, child) => SafeArea(
              top: true,
              bottom: false,
              child: Drawer(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: <Widget>[
                      viewModel.token != null && viewModel.token.isNotEmpty
                          ? ProfileContainer()
                          : Container(
                              height: 100,
                              child: Center(
                                child: FlatButton(
                                  height: 50,
                                  minWidth: 150,
                                  color: COLOR_PRIMARY,
                                  textColor: Colors.white,
                                  onPressed: () => viewModel.onLoginPressed(),
                                  child: Text(getTranslatedValues("login")),
                                ),
                              ),
                            ),
                      OptionListContainer(),
                      SocialLinkContainer()
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => AppDrawerViewModel());
  }
}

class SocialLinkContainer extends ViewModelWidget<AppDrawerViewModel> {
  @override
  Widget build(BuildContext context, AppDrawerViewModel viewModel) {
    return Positioned(
      bottom: 20,
      child: Container(
        height: 90,
        margin: EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              getTranslatedValues("follow_us"),
              maxLines: 2,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
              ),
            ),
            SizedBox(height: 10),
            Row(children: <Widget>[
              SvgPicture.asset(
                'assets/icons/facebook.svg',
                width: 30,
              ),
              SizedBox(width: 20),
              SvgPicture.asset(
                'assets/icons/twitter.svg',
                width: 30,
              ),
              SizedBox(width: 20),
              SvgPicture.asset(
                'assets/icons/google-plus.svg',
                width: 30,
              ),
              SizedBox(width: 20),
              SvgPicture.asset(
                'assets/icons/instagram.svg',
                width: 30,
              ),
              SizedBox(width: 20),
            ]),
          ],
        ),
      ),
    );
  }
}

class OptionListContainer extends ViewModelWidget<AppDrawerViewModel> {
  @override
  Widget build(BuildContext context, AppDrawerViewModel viewModel) {
    return Container(
      margin: viewModel.token != null && viewModel.token.isNotEmpty
          ? EdgeInsets.only(top: 180)
          : EdgeInsets.only(top: 100),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      color: COLOR_White,
      child: Column(
        children: <Widget>[
          // SizedBox(height: 20),
          // Row(children: <Widget>[
          //   SvgPicture.asset(
          //     'assets/icons/promotion_icon.svg',
          //     width: 22,
          //   ),
          //   SizedBox(
          //     width: 25,
          //   ),
          //   Text(
          //     getTranslatedValues("promotions_and_offers"),
          //     maxLines: 2,
          //     style: GoogleFonts.nunitoSans(
          //       textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
          //     ),
          //   ),
          // ]),
          Visibility(
              visible: viewModel.token != null && viewModel.token.isNotEmpty,
              child: SizedBox(height: 20)),
          Visibility(
            visible: viewModel.token != null && viewModel.token.isNotEmpty,
            child: Row(children: <Widget>[
              SvgPicture.asset(
                'assets/icons/notification.svg',
                width: 22,
              ),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: () => viewModel.onNotificationClicked(),
                child: Text(
                  getTranslatedValues("notifications"),
                  maxLines: 2,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
                  ),
                ),
              ),
            ]),
          ),
          // Visibility(
          //     visible: viewModel.token != null && viewModel.token.isNotEmpty,
          //     child: SizedBox(height: 20)),
          // Visibility(
          //   visible: viewModel.token != null && viewModel.token.isNotEmpty,
          //   child: GestureDetector(
          //     onTap: () => viewModel.navigateMyOrders(),
          //                 child: Row(children: <Widget>[
          //       SvgPicture.asset(
          //         'assets/icons/history.svg',
          //         width: 22,
          //       ),
          //       SizedBox(
          //         width: 25,
          //       ),
          //       Text(
          //         getTranslatedValues("my_orders"),
          //         maxLines: 2,
          //         style: GoogleFonts.nunitoSans(
          //           textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
          //         ),
          //       ),
          //     ]),
          //   ),
          // ),
          Visibility(
              visible: viewModel.token != null && viewModel.token.isNotEmpty,
              child: SizedBox(height: 20)),
          Visibility(
            visible: viewModel.token != null && viewModel.token.isNotEmpty,
            child: Row(children: <Widget>[
              SvgPicture.asset(
                'assets/icons/location.svg',
                width: 22,
              ),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: () => viewModel.onManageAddressPress(),
                child: Text(
                  getTranslatedValues("manage_address"),
                  maxLines: 2,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
                  ),
                ),
              ),
            ]),
          ),
          // SizedBox(height: 20),
          // Row(children: <Widget>[
          //   SvgPicture.asset(
          //     'assets/icons/contact.svg',
          //     width: 22,
          //   ),
          //   SizedBox(
          //     width: 25,
          //   ),
          //   Text(
          //     getTranslatedValues("contact_us"),
          //     maxLines: 2,
          //     style: GoogleFonts.nunitoSans(
          //       textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
          //     ),
          //   ),
          // ]),
          SizedBox(height: 20),
          Row(children: <Widget>[
            SvgPicture.asset(
              'assets/icons/about.svg',
              width: 22,
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              getTranslatedValues("about"),
              maxLines: 2,
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
              ),
            ),
          ]),
          SizedBox(height: 20),
          Row(children: <Widget>[
            Container(
              child: SvgPicture.asset(
                'assets/icons/settings.svg',
                color: COLOR_PRIMARY,
                width: 22,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () => viewModel.onSettingsClicked(),
              child: Text(
                getTranslatedValues("settings"),
                maxLines: 2,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
                ),
              ),
            ),
          ]),
          SizedBox(height: 20),
          viewModel.token != null && viewModel.token.isNotEmpty
              ? InkWell(
                  onTap: () => viewModel.logoutUser(),
                  child: Row(children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/logout.svg',
                      width: 22,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      getTranslatedValues("logout"),
                      maxLines: 2,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(color: COLOR_GRAY, fontSize: 16),
                      ),
                    ),
                  ]),
                )
              : Container()
        ],
      ),
    );
  }
}

class ProfileContainer extends ViewModelWidget<AppDrawerViewModel> {
  @override
  Widget build(BuildContext context, AppDrawerViewModel viewModel) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      height: 180,
      color: Color(0XFFFBFBFB),
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15),
        Container(
          height: 140,
          width: 110,
          color: COLOR_White,
          child: CachedNetworkImage(
              errorWidget: (context, url, error) => Container(
                    child: SvgPicture.asset(
                      'assets/icons/profile2.svg',
                    ),
                  ),
              placeholder: (context, url) => Container(
                    child: SvgPicture.asset(
                      'assets/icons/profile2.svg',
                    ),
                  ),
              fadeInCurve: Curves.fastOutSlowIn,
              fit: BoxFit.fill,
              imageUrl: viewModel.profilePic != null &&
                      viewModel.profilePic.isNotEmpty
                  ? "$BASE_URL/profile_pictures/${viewModel.profilePic}"
                  : "https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60"),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewModel.userName != null && viewModel.userName.isNotEmpty
                      ? viewModel.userName
                      : "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                        color: COLOR_PRIMARY,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                viewModel.contactNumber != null &&
                        viewModel.contactNumber.isNotEmpty
                    ? Text(
                        viewModel.contactNumber,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
                        ),
                      )
                    : Container(),
                viewModel.contactNumber != null &&
                        viewModel.contactNumber.isNotEmpty
                    ? Text(
                        viewModel.email,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(color: COLOR_GRAY, fontSize: 14),
                        ),
                      )
                    : Container(),
                Text(
                  viewModel.rewardPoint != null
                      ? viewModel.rewardPoint.toStringAsFixed(2)
                      : "",
                  maxLines: 1,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: COLOR_PRIMARY,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      getTranslatedValues("reward"),
                      maxLines: 1,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                            color: COLOR_GRAY,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        viewModel.onEditPressed();
                      },
                      child: SvgPicture.asset(
                        'assets/icons/edit.svg',
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 4),
                    viewModel.changeLanguage
                        ? GestureDetector(
                            onTap: () {
                              viewModel.onEnglishPressed(isChangeToEr: false);
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[900],
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: Center(
                                child: Text(
                                  "En",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ))
                        : GestureDetector(
                            onTap: () {
                              viewModel.onArebicPressed(isChangeToEr: true);
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.indigo[900],
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: Center(
                                child: Text(
                                  "Ar",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            )),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
      ]),
    );
  }
}
