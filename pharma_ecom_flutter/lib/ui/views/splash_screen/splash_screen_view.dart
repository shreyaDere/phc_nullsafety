import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/constants/networking/base_url.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view.dart';
import 'package:stacked/stacked.dart';

import 'splash_screen_view_model.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      viewModelBuilder: () => SplashScreenViewModel(),
      onModelReady: (model) => model.loadData(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          top: true,
          child: NetworkSensitive(
            currentWidget: Center(
              child: model.isBusy
                  ? Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 2,
                      child: SvgPicture.asset(
                        'assets/icons/logo.svg',
                      ))
                  : CachedNetworkImage(
                      imageUrl: "$BASE_URL${model.splashImage}",
                      errorWidget: (context, url, error) => Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        child: SvgPicture.asset(
                          'assets/icons/logo.svg',
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        child: SvgPicture.asset(
                          'assets/icons/logo.svg',
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
