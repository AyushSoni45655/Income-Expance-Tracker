import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/core/constant/stringHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_background_painter.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/cutom_button.dart';

class BillPaymentScreen extends StatelessWidget {
  const BillPaymentScreen({super.key});

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
                  size: Size(AHelperFunction.screenSize(context).width,
                      AHelperFunction.screenSize(context).height * .2),
                  painter: BackgroundPaainter(),
                )),
                Column(
                  children: [
                    SizedBox(
                      height: DimensionHelper.dimens_70.h,
                    ),
                    CustomAppBar(
                      appbarName: false,
                      leadingIcon: Icons.arrow_back_ios,
                      centerTitle: "Bill Payment",
                      trailingIcon: Icons.more_horiz,
                    ),
                    SizedBox(
                      height: DimensionHelper.dimens_70.h,
                    ),
                    Container(
                      height: DimensionHelper.dimens_60.h,
                      width: DimensionHelper.dimens_80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(
                            DimensionHelper.dimens_40.r),
                        color: ColorsHelper.primaryDark,
                      ),
                      child: Icon(
                        Icons.check,
                        size: DimensionHelper.dimens_60,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: DimensionHelper.dimens_40,
                    ),
                    CustomText(
                        alignment: Alignment.center,
                        title: StringHelper.pSuccess,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .apply(color: ColorsHelper.primaryDark)),
                    SizedBox(
                      height: DimensionHelper.dimens_20,
                    ),
                    CustomText(
                        alignment: Alignment.center,
                        title: StringHelper.yPremium,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: ColorsHelper.primaryDark)),
                    SizedBox(height: DimensionHelper.dimens_50.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // key
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              CustomText(alignment: Alignment.centerLeft, title: StringHelper.tDetails, style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.black)),
                              SizedBox(height: DimensionHelper.dimens_30,),
                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.pMethod, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.status, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.time, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.date, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.tId, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                               SizedBox(height: DimensionHelper.dimens_20,),

                               CustomText(alignment: Alignment.centerLeft, title: StringHelper.price, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_20,),
                              CustomText(alignment: Alignment.centerLeft, title: StringHelper.fee, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_30,),
                              CustomText(alignment: Alignment.centerLeft, title: StringHelper.total, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                            ],
                          ),
                          //value
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Icon(Icons.arrow_drop_down,size: DimensionHelper.dimens_50,),
                              SizedBox(height: DimensionHelper.dimens_30,),
                              CustomText(alignment: Alignment.centerLeft, title: "Debit Card", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                              CustomText(alignment: Alignment.centerLeft, title: "Completed", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                              CustomText(alignment: Alignment.centerLeft, title: "08 : 15", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                              CustomText(alignment: Alignment.centerLeft, title: "Feb 28 2022", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_12,),
                              CustomText(alignment: Alignment.centerLeft, title: "9579338499958", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_20,),

                              CustomText(alignment: Alignment.centerLeft, title: "\$ ${"11.99"}", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_20,),
                              CustomText(alignment: Alignment.centerLeft, title: "-\$ ${"1.09"}", style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.grey)),
                              SizedBox(height: DimensionHelper.dimens_30,),
                              CustomText(alignment: Alignment.centerLeft, title: "\$ ${"13.98"}", style: Theme.of(context).textTheme.headlineLarge!.apply(color: ColorsHelper.blackColor)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: DimensionHelper.dimens_80.h,),
                    CustomButton(title: "Share Receipt", callback: (){}, text: "share")
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
