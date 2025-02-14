import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';

class CustomConnectWalletAccount extends StatelessWidget {
  final IconData? iconData;
  final String ?title;
  final String ?subTitle;
  final IconData ?leading;
  const CustomConnectWalletAccount({super.key, this.iconData, this.title, this.subTitle, this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .14,
      width: MediaQuery.of(context).size.width * .8.w,
      padding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_20.h,vertical: DimensionHelper.dimens_20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DimensionHelper.dimens_30.r),
        color: Color(0xffECF9F8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           CircleAvatar(
             radius: DimensionHelper.dimens_60.r,
             backgroundColor: Colors.white,
             child: Icon(iconData,size: DimensionHelper.dimens_40,color: ColorsHelper.primaryLight,),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(title??"",style: TextStyle(
                 color: ColorsHelper.primaryDark,
                 fontSize: FontHelper.font_28,
                 fontWeight: FontWeight.bold
               ),textAlign: TextAlign.start,),
               Text(subTitle??"",style: TextStyle(
                   color: ColorsHelper.primaryDark,
                   fontSize: FontHelper.font_20,
                   fontWeight: FontWeight.bold
               ),textAlign: TextAlign.start,)
             ],
           ),
           
           Container(
             //padding: EdgeInsets.all(DimensionHelper.dimens_8),
             height: 40,
             width: 50,
             decoration: BoxDecoration(
               color: ColorsHelper.primaryDark,
               borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
             ),
             child: Icon(Icons.check,size: DimensionHelper.dimens_30,color: ColorsHelper.whiteColor,),
           )
         ],
      ),

    );
  }
}
