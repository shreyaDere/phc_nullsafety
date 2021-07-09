import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import 'package:hive/hive.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/hive/cart/cart_item.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/custom_snackbar/custom_snackbar.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/locator/locator.dart';
import 'app/router/router.gr.dart' as router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localizations.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/push_notification/push_notification_service.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:chopper/chopper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await PushNotificationService().initialise();
  configureDependencies();
  _initializeHive();
  configureApp();
  // setupDialogUi();
  setupSnackbarUi();
  _setupLogging();
  FirebaseMessaging().onTokenRefresh.listen((newToken) async {
    print("firebase token:- $newToken");
    StorageServiceSharedPreferences _storageServiceSharedPreferences =
        locator<StorageServiceSharedPreferences>();
    _storageServiceSharedPreferences.saveFcmToken(fcmToken: newToken);
    configureFirebaseMessaging(newToken);
  });
  runApp(MyApp());
}

void configureFirebaseMessaging(String newToken) async {
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  UserService userService = UserService.create();

  var token = await _storageServiceSharedPreferences.getToken();

  if (token != null && token.isNotEmpty) {
    FcmRequest fcmRequest = FcmRequest((r) => r..fcmToken = newToken);
    Response<FcmResponse> response =
        await userService.updateFcm(token: "Bearer $token", body: fcmRequest);
    if (response.statusCode == 200) {
      print("************${response.body}");
      // Response<FcmResponse> response =
    }
  }
}

// configure app key and bundle-id (You must get those keys from tap)
Future<void> configureApp() async {
  GoSellSdkFlutter.configureApp(
      bundleId: "com.phcpharmaecom.threeplus",
      productionSecreteKey: Platform.isAndroid
          ? "sk_live_vsDWdCXSknR5zitGPUErwmT4"
          : "sk_live_vsDWdCXSknR5zitGPUErwmT4",
      sandBoxsecretKey: Platform.isAndroid
          ? "sk_test_mf3cCorsyLhzitN7EpwX8G6k"
          : "sk_test_mf3cCorsyLhzitN7EpwX8G6k",
      lang: "en");
}

var qty;
//Api call logger
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

void _initializeHive() async {
  final appDocumentDirectoy =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectoy.path);
  // Hive.registerAdapter(HProductAdapter());
  Hive.registerAdapter(CartItemHiveModelAdapter());
  var box = await Hive.openBox('cart');
  await box.put("qty", 4);
  qty = box.get("qty");
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    Hive.close();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale, //Locale("en", "US"),
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('ar', 'SA'),
      ],
      localizationsDelegates: [
        DemoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return locale;
            // return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'Quickstart flutter ecom',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: router.Routes.splashScreenView,
      onGenerateRoute: router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      // as GlobalKey<NavigatorState>,
    );
  }
}
