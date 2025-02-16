import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService{
   FirebaseMessaging messaging = FirebaseMessaging.instance;
  void requestNotificationPermissionHandler()async{
    NotificationSettings permission = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true
    );
    switch (permission.authorizationStatus) {
      case AuthorizationStatus.authorized:
        log('User granted permissions');
        break;
      case AuthorizationStatus.provisional:
        log('User granted provisional permissions');
        break;
      case AuthorizationStatus.denied:
        log('User denied permissions');
        break;
      default:
        log('Permission status: ${permission.authorizationStatus}');
        break;
    }
  }
}