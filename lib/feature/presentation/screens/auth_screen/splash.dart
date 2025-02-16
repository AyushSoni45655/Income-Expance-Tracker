import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/error/notifications_services.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/core/constant/stringHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      context.go("/login");
    },);
    notificationService.requestNotificationPermissionHandler();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunction.isDarkMode(context);
    return Scaffold(
      backgroundColor: ColorsHelper.primaryDark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(StringHelper.splashTitle,textAlign: TextAlign.center,style: TextStyle(
            color: dark ?ColorsHelper.whiteColor:Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: FontHelper.font_40
          ),),)
        ],
      ),
    );
  }
}
