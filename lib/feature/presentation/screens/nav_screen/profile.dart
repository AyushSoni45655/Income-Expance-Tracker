import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/assetsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_background_painter.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_profile_listtile.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * .3),
                  painter: BackgroundPaainter(),
                )),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height:
                        AHelperFunction.screenSize(context).height * .05),
                    CustomAppBar(
                      appbarName: false,
                      centerTitle: "Profile",
                      trailingIcon: Icons.notifications_none,
                      leadingIcon: Icons.arrow_back_ios,
                    ),
                    SizedBox(
                        height:
                            AHelperFunction.screenSize(context).height * .07),
                    Center(
                      child: CircleAvatar(
                        radius: DimensionHelper.dimens_100.r,
                        backgroundImage: AssetImage(AssetsHelper.person),
                      ),
                    ),
                    SizedBox(
                      height: DimensionHelper.dimens_20.h,
                    ),
                    CustomText(
                        alignment: Alignment.center,
                        title: "Ayush Soni",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .apply(letterSpacingDelta: 2)),
                    SizedBox(
                      height: DimensionHelper.dimens_10.h,
                    ),
                    CustomText(
                        alignment: Alignment.center,
                        title: "ayush.soni84080@gmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: ColorsHelper.nBlue)),
                    SizedBox(
                      height: DimensionHelper.dimens_30.h,
                    ),
                    Column(
                      children: [
                        CustomProfileListtile(image: Icons.diamond, title: "Invite Friends"),
                        CustomProfileListtile(image: Icons.person, title: "Account Information"),
                        CustomProfileListtile(image: Icons.person_add_alt_1_rounded, title: "Personal profile"),
                        CustomProfileListtile(image: Icons.mail_lock_sharp, title: "Message Center"),
                        CustomProfileListtile(image: Icons.login_outlined, title: "Login& Security"),
                        CustomProfileListtile(image: Icons.lock, title: "Data & Privacy"),
                      ]
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
