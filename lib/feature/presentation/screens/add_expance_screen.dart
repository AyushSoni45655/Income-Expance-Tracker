import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:income_expance_tracker_app/core/constant/dimensionHelper.dart';
import 'package:income_expance_tracker_app/core/constant/fontsHelper.dart';
import 'package:income_expance_tracker_app/core/constant/helper_funcction.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_app_bar.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_background_painter.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_container.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/custom_text_field.dart';
import 'package:income_expance_tracker_app/feature/presentation/widgets/cutom_button.dart';

import '../../../core/constant/colorsHelper.dart';
import '../../../core/constant/stringHelper.dart';
class AddExpanceScreen extends StatefulWidget {
  const AddExpanceScreen({super.key});

  @override
  State<AddExpanceScreen> createState() => _AddExpanceScreenState();
}

class _AddExpanceScreenState extends State<AddExpanceScreen> {
  final TextEditingController dateCon = TextEditingController();
  final TextEditingController amountCon = TextEditingController();
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    print(selectedValue);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: CustomPaint(
                  size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * .3),
                  painter: BackgroundPaainter(),
                )),
                Column(
                  children: [
                    SizedBox(height: DimensionHelper.dimens_80,),
                    CustomAppBar(
                      leadingCallBack: () {
                        context.go("/bottom");
                      },
                      appbarName: false,
                      leadingIcon: Icons.arrow_back_ios,
                      centerTitle: "Add Expense",
                      trailingIcon: Icons.more_horiz,
                    ),
                    SizedBox(height: DimensionHelper.dimens_30.h,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_20.w,vertical: DimensionHelper.dimens_50.h),
                      height: AHelperFunction.screenSize(context).height * .6,
                      width: AHelperFunction.screenSize(context).width * .9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 1),
                            color: Colors.green,
                            blurRadius: 2,
                            spreadRadius: 3
                          )
                        ],
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(DimensionHelper.dimens_30.r)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(alignment: Alignment.centerLeft, title: "Name", style: Theme.of(context).textTheme.headlineLarge),
                          SizedBox(height: DimensionHelper.dimens_20.h,),
                          CustomContainer(
                            child: DropdownButton<String>(
                              elevation: 4,
                              hint: Text("Select An Option"),
                              padding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_20.sp),
                              iconSize: DimensionHelper.dimens_60,
                              style: TextStyle(
                                fontWeight: FontHelper.bold,
                                fontSize: FontHelper.font_22,
                                color: Colors.black
                              ),
                              underline: SizedBox(),
                              value: (selectedValue != null &&
                                  StringHelper.tName.contains(selectedValue))
                                  ? selectedValue
                                  : null,
                              isExpanded: true,
                              items: StringHelper.tName.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(), onChanged: (value) {
                                if(value != selectedValue){
                                  setState(() {
                                    selectedValue = value;
                                  });
                                }
                            },
                            ),
                          ),
                          SizedBox(height: DimensionHelper.dimens_20,),
                          CustomText(alignment: Alignment.centerLeft, title: "Amount", style: Theme.of(context).textTheme.headlineLarge),
                          SizedBox(height: DimensionHelper.dimens_10.h,),
                          CutsomTextfield(controller: amountCon, inputType: TextInputType.number,prefixIcon: Icons.monetization_on,
                          hintText: "Enter Amount",
                            isReadOnly: true,
                          ),
                          SizedBox(height: DimensionHelper.dimens_10.h,),
                          CustomText(alignment: Alignment.centerLeft, title: "Date", style: Theme.of(context).textTheme.headlineLarge),
                          SizedBox(height: DimensionHelper.dimens_10.h,),
                          CutsomTextfield(controller: dateCon, inputType: TextInputType.datetime,
                          callback: () async{
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String formattedDate = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                              setState(() {
                                dateCon.text = formattedDate; // चुनी हुई तारीख TextField में सेट करें
                              });
                            }
                          },
                          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.date_range)),
                          ),
                          SizedBox(height: DimensionHelper.dimens_10.h,),
                          CustomText(alignment: Alignment.centerLeft, title: "Invoice", style: Theme.of(context).textTheme.headlineLarge),
                          SizedBox(height: DimensionHelper.dimens_10.h,),
                          CustomContainer(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: (){}, icon: Icon(Icons.add,size: 40,color: ColorsHelper.nBlue,)),
                              CustomText(alignment: Alignment.centerLeft, title: "Add Invoice", style: Theme.of(context).textTheme.headlineSmall)
                            ],
                          )),
                          SizedBox(height: DimensionHelper.dimens_30.h,),
                          CustomButton(title: StringHelper.submit, callback: (){}, text: StringHelper.submit)
                        ],
                      ),
                    ),

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
