import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';

class CustomWalletButton extends StatelessWidget {
  final String ?title;
  final IconData ?iconData;
  final VoidCallback ?callback;
  const CustomWalletButton({super.key, this.title,  this.iconData,  this.callback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: DimensionHelper.dimens_100,
          width: DimensionHelper.dimens_100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DimensionHelper.dimens_50.r),
            border: Border.all(width: 1.2,color: ColorsHelper.primaryDark)
          ),
          child: Icon(iconData,size: DimensionHelper.dimens_60,color: ColorsHelper.primaryDark,)
      ),
        SizedBox(height: DimensionHelper.dimens_10.h,),
        CustomText(alignment: Alignment.center, title: title??"", style: Theme.of(context).textTheme.headlineMedium)
      ],
    );
  }
}
