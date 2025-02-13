import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/assetsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_background_painter.dart';
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
                SizedBox(
                  height: DimensionHelper.dimens_20.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height:
                            AHelperFunction.screenSize(context).height * .2),
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
                      children: List.generate(
                        5,
                        (index) {
                          return ListTile(
                            contentPadding: EdgeInsets.only(
                                top: DimensionHelper.dimens_20.h,left: DimensionHelper.dimens_20),
                            leading: CircleAvatar(
                              backgroundColor: Colors.green,
                              backgroundImage: AssetImage(AssetsHelper.person),
                              radius: 40,
                            ),
                          );
                        },
                      ),
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
