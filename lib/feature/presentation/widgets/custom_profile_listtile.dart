import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';

class CustomProfileListtile extends StatelessWidget {
  final IconData image;
  final String title;
  final VoidCallback ?callback;
  const CustomProfileListtile({super.key, required this.image, required this.title, this.callback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: DimensionHelper.dimens_20.h,),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: DimensionHelper.dimens_20,right: DimensionHelper.dimens_30),
            child: Container(
              height: DimensionHelper.dimens_80,
              width: DimensionHelper.dimens_80,
              //padding: EdgeInsets.all(DimensionHelper.dimens_20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(DimensionHelper.dimens_100.r),
                border: Border.all(width: 2,color: Colors.grey),
              ),
              child: Icon(image,size: 50,),
            ),
          ),
          onTap: callback,
          title: Text(title,style: TextStyle(
            color: Colors.black,
            fontSize: DimensionHelper.dimens_26,
            fontWeight: FontHelper.bold,
          ),),
        ),
        SizedBox(height: DimensionHelper.dimens_20,),
        Container(
          height: 2,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(DimensionHelper.dimens_30.r)
          ),
          width: DimensionHelper.dimens_all,margin: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_30.sp),)
      ],
    );
  }
}
