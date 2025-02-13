import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AHelperFunction.screenSize(context).height * .06,
      width: AHelperFunction.screenSize(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
        border: Border.all(color: ColorsHelper.blackColor,width: 2),
      ),
       child: child,
    );
  }
}
