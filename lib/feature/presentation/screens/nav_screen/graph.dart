import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/stringHelper.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_chart.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_row_text_space_between.dart';

class GrapHScreen extends StatefulWidget {
  const GrapHScreen({super.key});

  @override
  State<GrapHScreen> createState() => _GrapHScreenState();
}

class _GrapHScreenState extends State<GrapHScreen> {
  int selectedIndex = 0;
  List<String> weekName = [
    "Day",
    "Week",
    "Month",
    "Year"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Padding(padding: EdgeInsets.all(DimensionHelper.dimens_15.sp),child: Column(
         children: [
           SizedBox(height: DimensionHelper.dimens_20.h,),
           CustomAppBar(
             appbarName: false,
             leadingIcon: Icons.arrow_back_ios,
             centerTitle: "Statistics",
             trailingIcon: Icons.ios_share_rounded,
             trailingCallBack: () {
               context.go("/aExpance");
             },
           ),
           SizedBox(height: DimensionHelper.dimens_20.h,),
           Row(
             children: List.generate(weekName.length, (index) => GestureDetector(
               onTap: () {
                 setState(() {
                   selectedIndex = index;
                 });
               },
               child: Container(
                 margin: EdgeInsets.only(left: DimensionHelper.dimens_10.sp),
                 height: DimensionHelper.dimens_70.h,
                 width: DimensionHelper.dimens_130.w,
                 padding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_10.sp,vertical: DimensionHelper.dimens_12.sp),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                   color:selectedIndex == index?Colors.green:Colors.grey.shade400
                 ),
                 child: Center(child: Text(weekName[index],style: Theme.of(context).textTheme.headlineMedium,),),
               ),
             ),),
           ),
           SizedBox(height: DimensionHelper.dimens_20,),
           IndexedStack(
             index: selectedIndex,
             children: [
               Expanded(
                 child: Container(

                   //color: Colors.green,
                   child: Column(
                     children: [
                       ExpensedChart(),
                       CustomRowTextSpaceBetween(title1: StringHelper.tSpending, title2: StringHelper.seeall),
                       Column(
                         children: List.generate(6, (index) => Padding(

                           padding: const EdgeInsets.only(bottom: 20),
                           child: ListTile(
                             trailing: Text("\$${27465}.00",style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.green),),
                             title: Text("Starbucks",style: Theme.of(context).textTheme.headlineLarge,),
                             subtitle: Text(" Jan 10 2023",style: Theme.of(context).textTheme.headlineSmall,),
                             leading: CircleAvatar(
                               radius: 40,
                               child: Icon(Icons.person,size: DimensionHelper.dimens_50.sp,),),
                           ),
                         ),),
                       )
                     ],
                   )
                 ),
               ),

             ],
           )
         ],
       ),),
     ),
    );
  }
}
