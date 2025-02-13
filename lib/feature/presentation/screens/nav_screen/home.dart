import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/assetsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/stringHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_debit_card.dart';

import '../../widgets/custom_background_painter.dart';
import '../../widgets/custom_row_text_space_between.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    DimensionHelper.dimens_300.h),
                painter: BackgroundPaainter(),
              )),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: DimensionHelper.dimens_30,
                    ),
                    CustomAppBar(
                      appbarName: true,
                      trailingIcon: Icons.notifications_none,
                    ),
                    // Custom debit card
                    CustomDebitCard(),
                    SizedBox(
                      height: DimensionHelper.dimens_20.h,
                    ),
                    CustomRowTextSpaceBetween(
                      title1: StringHelper.tHistory,
                      title2: StringHelper.seeall,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 500,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: StringHelper.tDates.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  leading: Container(
                                    height: 60,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                AssetsHelper.tImages[index]))),
                                  ),
                                  title: Text(StringHelper.tName[index],style: Theme.of(context).textTheme.headlineMedium,),
                                  subtitle: Text(StringHelper.tDates[index],style: Theme.of(context).textTheme.headlineSmall,),
                                  trailing: Text("\$${72624}.00",style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorsHelper.greenColor),)
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: DimensionHelper.dimens_10.h,),
                    CustomRowTextSpaceBetween(
                      title1: StringHelper.sAgain,
                      title2: StringHelper.seeall,
                    ),
                    SizedBox(height: 150,child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: DimensionHelper.dimens_10.w,),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Colors.green,
                          backgroundImage: AssetImage(AssetsHelper.girl),
                        );
                    },),)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
