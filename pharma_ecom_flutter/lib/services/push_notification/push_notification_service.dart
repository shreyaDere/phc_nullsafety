import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/push_register_service/push_register_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:stacked_services/stacked_services.dart';

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging();
  // final NavigationService _navigationService = locator<NavigationService>();
  // NotificationService _notificationService = GetIt.instance<NotificationService>();
  final PushRegisterService _pushRegisterService = PushRegisterService();
  Map<String, dynamic> _notificationData;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future initialise() async {
    if (Platform.isIOS) {
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }

    _fcm.configure(
      //Message is data passed in body from cloud messageing console.
      //Called when app is in foreground
      onMessage: (Map<String, dynamic> message) async {
        // _notificationData = message;
        _pushRegisterService.message = message;
        _demoNotification(
            message["notification"]["title"], message["notification"]["body"]);
        print('onMessage: $message');
        foregroundSerializeAndNavigate(message);
      },
      //Called when app has been completey closed and its opened from notification in notification drawer
      onLaunch: (Map<String, dynamic> message) async {
        // GetIt.instance<NotificationService>().callFunction(message: message, fromNotification: true, isForeground: true);
        // _notificationData = message;
        _pushRegisterService.fromNotification = true;
        _pushRegisterService.message = message;
        print('onLauch: $message');
        serializeAndNavigate(message);
      },
      //Called when app is in background its opened from notification in notification drawer
      onResume: (Map<String, dynamic> message) async {
        // GetIt.instance<NotificationService>().callFunction(message: message, fromNotification: false, isForeground: true);
        _pushRegisterService.message = message;
        print('onResume: $message');
        serializeAndNavigate(message);
      },
    );
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('@mipmap/logo');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  Future<void> _demoNotification(String title, String body) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'my_unique_fcm_id', 'channel_NAME', 'channel_DESCRPTION',
        importance: Importance.max,
        playSound: true,
        showProgress: true,
        priority: Priority.high,
        ticker: 'test ticker');

    var iOSChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iOSChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, title, body, platformChannelSpecifics,
        payload: 'test Notification ');
  }

  Future<Map<String, dynamic>> getMessage() async {
    return _notificationData;
  }

  void foregroundSerializeAndNavigate(Map<String, dynamic> message) {
    print("on foreground");
    Map<String, dynamic> data;
    if (Platform.isIOS) {
      data = message;
    } else {
      // Sample data parsing
      // print(message['data']['type']);
      // if(message['data']['type'] == "payment") {
      //   if(null != message['data']['ePaymentId']) {
      //     print(message['data']['ePaymentId']);
      //
      //     var actualDescription = message['data']['body'];
      //     var breakString = actualDescription.split("has paid");
      //     print(breakString.elementAt(1));
      //     var amountString =  breakString.elementAt(1).toString().split("BHD");
      //   }
      // }
    }
  }

  void serializeAndNavigate(Map<String, dynamic> message) {
    print("in serailize and navigate");
    Map<String, dynamic> data;
    if (Platform.isIOS) {
      // data = PushRegisterService().message;
    } else {
      print("${message["data"]}"); //["action"]

      if (message["data"]["action"] == "PRESCRIPTION_STATUS_UPDATE") {
        GetIt.instance<NavigationService>().navigateTo(Routes.homeView,
            arguments: HomeViewArguments(index: 1));
      } else if (message["data"]["action"] == "ORDER_STATUS_UPDATE") {
        // GetIt.instance<NavigationService>().navigateTo();
      } else if (message["data"]["action"] == "SERVICE_ADDED") {
        // GetIt.instance<NavigationService>().navigateTo(Routes.dashboardView);
      } else {
        // GetIt.instance<NavigationService>().navigateTo(Routes.notificationView);
      }
    }
  }
}
