import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  final bool appbarName;
  final IconData ?leadingIcon;
  final String ?centerTitle;
  final IconData ?trailingIcon;
  final VoidCallback ?trailingCallBack;
  final VoidCallback ?leadingCallBack;
  const CustomAppBar({super.key,  this.appbarName = false, this.leadingIcon, this.centerTitle, this.trailingIcon, this.trailingCallBack, this.leadingCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_20,vertical: DimensionHelper.dimens_20),
      height: DimensionHelper.dimens_100.h,
      width: DimensionHelper.dimens_all.w,
      decoration: BoxDecoration(
        //Scolor: Colors.red
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
         appbarName? Column(
            children: [
              CustomText(alignment: Alignment.centerLeft, title: "Good Morning", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white)),
              SizedBox(height: DimensionHelper.dimens_2,),
              CustomText(alignment: Alignment.centerLeft, title: "Ayush Soni", style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white,letterSpacingDelta: 3))
            ],
          ):IconButton(onPressed: leadingCallBack, icon: Icon(leadingIcon,size: DimensionHelper.dimens_40,color: Colors.black,)),
          appbarName?SizedBox():CustomText(alignment: Alignment.center, title: centerTitle??"", style: Theme.of(context).textTheme.headlineLarge),
          IconButton(onPressed: trailingCallBack, icon: Icon(trailingIcon,size: DimensionHelper.dimens_40,color: ColorsHelper.blackColor,))
        ],
      ),
    );
  }
}
