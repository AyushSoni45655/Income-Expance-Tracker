import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text_field.dart';

import '../../../core/constant/assetsHelper.dart';
import '../../../core/constant/colorsHelper.dart';
import '../../../core/constant/dimensionHelper.dart';
import '../../../core/constant/fontsHelper.dart';
import '../../../core/constant/helper_funcction.dart';
import '../../../core/constant/stringHelper.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_wallet_button.dart';

class ConnectWalletScreen extends StatefulWidget {
  const ConnectWalletScreen({super.key});

  @override
  State<ConnectWalletScreen> createState() => _ConnectWalletScreenState();
}

class _ConnectWalletScreenState extends State<ConnectWalletScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController cvv = TextEditingController();
  final TextEditingController expiry = TextEditingController();
  final TextEditingController zip = TextEditingController();
  final TextEditingController number = TextEditingController();
  int selectIndex = 0;
  List<String>billsName = [
    "Cards",
    "Accounts"
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white, // Background white रखना जरूरी है
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: DimensionHelper.dimens_40,),
                CustomAppBar(
                  appbarName: false,
                  centerTitle: " Connect Wallet",
                  trailingIcon: Icons.notifications_none,
                  leadingIcon: Icons.arrow_back_ios,
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
                    // Cards
                    Expanded(
                      child: Container(
                        width: DimensionHelper.dimens_all,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: DimensionHelper.dimens_20.h,),
                            Container(
                              height: DimensionHelper.dimens_250.h,
                              width: AHelperFunction.screenSize(context).width * .8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                                  color: ColorsHelper.primaryLight,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                    image: AssetImage(AssetsHelper.card))
                              ),
                            ),
                            SizedBox(height: DimensionHelper.dimens_40,),
                            CustomText(alignment: Alignment.centerLeft, title: StringHelper.adCard, style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.black)),
                            SizedBox(height: DimensionHelper.dimens_20,),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(StringHelper.adCardT,style:  TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: FontHelper.font_24
                              ),),
                            ),
                            SizedBox(height: DimensionHelper.dimens_20.h,),
                            CutsomTextfield(controller: name, inputType: TextInputType.name,hintText: "Enter Your Name",isReadOnly: true,),
                            SizedBox(height: DimensionHelper.dimens_20.h,),
                            Row(
                              children: [
                                Expanded(
                                  flex:7,
                                    child: CutsomTextfield(controller: number, inputType: TextInputType.number,hintText: "Enter Card Number",isReadOnly: true,)),
                                SizedBox(width: DimensionHelper.dimens_20,),
                                Expanded(
                                  flex: 3,
                                    child: CutsomTextfield(controller: cvv, inputType: TextInputType.name,hintText: "CVV",isReadOnly: true,))
                              ],
                            ),
                            SizedBox(height: DimensionHelper.dimens_20.h,),
                            Row(
                              children: [
                                Expanded(
                                  flex:7,
                                    child: CutsomTextfield(controller: expiry, inputType: TextInputType.number,hintText: "Expiry Date",isReadOnly: true,)),
                                SizedBox(width: DimensionHelper.dimens_20,),
                                Expanded(
                                  flex: 3,
                                    child: CutsomTextfield(controller: zip, inputType: TextInputType.name,hintText: "Zip",isReadOnly: true,))
                              ],
                            )

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
                                      trailing: Container(height: DimensionHelper.dimens_50.h,width: DimensionHelper.dimens_100.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r),
                                            color: Color(0xffECF9F8)
                                        ),
                                        child: Center(child: Text("Pay",style: TextStyle(
                                            color: ColorsHelper.primaryLight,
                                            fontSize: FontHelper.font_24,
                                            fontWeight: FontWeight.bold
                                        ),),),
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


