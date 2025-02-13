import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/core/constant/assetsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/stringHelper.dart';

class HomeOnboarding extends StatefulWidget {
  const HomeOnboarding({super.key});

  @override
  State<HomeOnboarding> createState() => _HomeOnboardingState();
}

class _HomeOnboardingState extends State<HomeOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(DimensionHelper.dimens_20.sp),child: Column(
        children: [
          SizedBox(height: DimensionHelper.dimens_100.h,),
          Stack(
            children:[ Container(
              height: MediaQuery.of(context).size.height * .7,
              width: DimensionHelper.dimens_all,
              decoration: BoxDecoration(
                //color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage(AssetsHelper.bHomeOBoard))
              ),
            ),
              Positioned(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsHelper.coin),height: DimensionHelper.dimens_200,width: DimensionHelper.dimens_220,)),
              Positioned(
                left: MediaQuery.of(context).size.width * .59,
                  top: MediaQuery.of(context).size.height * .08,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetsHelper.donut),height: DimensionHelper.dimens_150,width: DimensionHelper.dimens_200,))
            ]
          ),
          SizedBox(height: DimensionHelper.dimens_10.h,),
          Text(StringHelper.onBoard,style: TextStyle(
            fontSize: FontHelper.font_40,
            fontWeight: FontHelper.bold,
            letterSpacing: 3,
            color: ColorsHelper.primaryLight
          ),textAlign: TextAlign.center,),
          SizedBox(height: DimensionHelper.dimens_20.h,),
          InkWell(
            onTap: (){
              context.go("/bottom");
            },
            child: Container(
              height: DimensionHelper.dimens_60.h,
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(DimensionHelper.dimens_30.r),
                color: ColorsHelper.primaryLight
              ),
              child: Center(child: Text(StringHelper.getS,style: Theme.of(context).textTheme.headlineLarge,),),
            ),
          )
        ],
      ),),
    );
  }
}
