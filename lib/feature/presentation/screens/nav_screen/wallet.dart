import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_wallet_button.dart';

import '../../../../core/constant/assetsHelper.dart';
import '../../../../core/constant/stringHelper.dart';
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int selectIndex = 0;
  List<String>billsName = [
    "Transactions",
    "Upcoming Bills"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background white रखना जरूरी है
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: DimensionHelper.dimens_40,),
              CustomAppBar(
                appbarName: false,
                centerTitle: "Wallet",
                trailingIcon: Icons.notifications_none,
                leadingIcon: Icons.arrow_back_ios,
              ),
              SizedBox(height: DimensionHelper.dimens_20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomWalletButton(
                    iconData: Icons.add,
                    title: "Add",
                  ),
                  CustomWalletButton(
                    iconData: Icons.share,
                    title: "Payment",
                  ),
                  CustomWalletButton(
                    iconData: Icons.send,
                    title: "Send",
                  )
                ],
              ),
              SizedBox(height: DimensionHelper.dimens_30.h,),
              Container(
                height: DimensionHelper.dimens_60.h,
                width: AHelperFunction.screenSize(context).width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: ColorsHelper.primaryDark,
                      blurRadius: 2,
                      spreadRadius: 3,
                      offset: Offset(1,1)
                    )
                  ]
                ),
                child: Row(children: List.generate(billsName.length, (index) => GestureDetector(
                  onTap: () {
                    selectIndex = index;
                    setState(() {

                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(DimensionHelper.dimens_6),
                    height: 55,
                    width: AHelperFunction.screenSize(context).width * .42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                      color:selectIndex == index?Colors.grey.shade400:Colors.transparent
                    ),
                    child: Center(child: Text(billsName[index].toString(),style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: FontHelper.font_24
                    ),),),
                  ),
                ),),),
              ),
              SizedBox(height: DimensionHelper.dimens_20.h,),
              IndexedStack(
                index: selectIndex,
                children: [
                                                                                      // Transaction
                  Expanded(
                    child: Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 800,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: StringHelper.tDates.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: DimensionHelper.dimens_100,
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
                    ),
                  ),
                                                                                     //Upcoming bills
                  Expanded(child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: StringHelper.tDates.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: DimensionHelper.dimens_100,
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
                                    trailing: GestureDetector(
                                      onTap: (){
                                        context.go("/cWallet");
                                      },
                                      child: Container(height: DimensionHelper.dimens_50.h,width: DimensionHelper.dimens_100.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                                        color: Color(0xffECF9F8)
                                      ),
                                        child: Center(child: Text("Pay",style: TextStyle(
                                          color: ColorsHelper.primaryLight,
                                          fontSize: FontHelper.font_24,
                                          fontWeight: FontWeight.bold
                                        ),),),
                                      ),
                                    )
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              )

            ],
          ),
        ),
      )
    );
  }
}