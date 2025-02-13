import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colorsHelper.dart';
import '../../../core/constant/dimensionHelper.dart';
import '../../../core/constant/stringHelper.dart';
import 'custom_text.dart';
class CustomDebitCard extends StatelessWidget {
  const CustomDebitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensionHelper.dimens_20.sp),
      height: DimensionHelper.dimens_220.h,
      width: DimensionHelper.dimens_all,
      decoration: BoxDecoration(
          color: ColorsHelper.primaryDark,
          borderRadius: BorderRadius.circular(DimensionHelper.dimens_30.r)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(alignment: Alignment.centerLeft, title: StringHelper.tBalance, style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorsHelper.whiteColor)),
                      SizedBox(width: DimensionHelper.dimens_4.w,),
                      Icon(Icons.arrow_drop_down_outlined,size: DimensionHelper.dimens_40,color: ColorsHelper.whiteColor,)
                    ],
                  ),
                  CustomText(alignment: Alignment.centerLeft, title: "\$ ${2548}.00", style: Theme.of(context).textTheme.headlineLarge!.apply(color: ColorsHelper.whiteColor,fontSizeDelta: DimensionHelper.dimens_10))
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: ColorsHelper.whiteColor,size: DimensionHelper.dimens_50,))
            ],
          ),
          SizedBox(height: DimensionHelper.dimens_20.h,),
          //second design
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius:  BorderRadius.circular(DimensionHelper.dimens_50),
                              color: Colors.grey.shade400
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward_sharp,color: ColorsHelper.whiteColor,size: DimensionHelper.dimens_30,))
                      ),
                      SizedBox(width: DimensionHelper.dimens_8,),
                      CustomText(alignment: Alignment.centerLeft, title: StringHelper.income, style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorsHelper.whiteColor))
                    ],
                  ),
                  CustomText(alignment: Alignment.centerLeft, title: "\$ ${1897440}.00", style: Theme.of(context).textTheme.headlineLarge!.apply(color: ColorsHelper.whiteColor))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius:  BorderRadius.circular(DimensionHelper.dimens_50),
                              color: Colors.grey.shade400
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_upward_sharp,color: ColorsHelper.whiteColor,size: DimensionHelper.dimens_30,))
                      ),
                      SizedBox(width: DimensionHelper.dimens_8,),
                      CustomText(alignment: Alignment.centerLeft, title: StringHelper.expance, style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorsHelper.whiteColor))
                    ],
                  ),
                  CustomText(alignment: Alignment.centerLeft, title: "\$ ${46340}.00", style: Theme.of(context).textTheme.headlineLarge!.apply(color: ColorsHelper.whiteColor))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
