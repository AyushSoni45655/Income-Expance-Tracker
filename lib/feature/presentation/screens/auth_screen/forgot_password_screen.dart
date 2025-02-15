import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constant/dimensionHelper.dart';
import '../../../../core/constant/fontsHelper.dart';
import '../../../../core/constant/stringHelper.dart';
import '../../../../core/constant/validation.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/cutom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController emailCon;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailCon = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailCon.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              context.go("/login");
            },
            icon: Icon(
              Icons.arrow_back,
              size: 50,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimensionHelper.dimens_15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * .2
              ),
              CustomText(
                  alignment: Alignment.center,
                  title: StringHelper.fPasswordT,
                  style: TextStyle(
                      fontSize: FontHelper.font_40.sp,
                      fontWeight: FontHelper.bold)),
              SizedBox(
                height: DimensionHelper.dimens_12.h,
              ),
              Text(
                StringHelper.fPasswordSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(letterSpacingDelta: 2, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *.1,
              ),
              CutsomTextfield(controller: emailCon, inputType: TextInputType.emailAddress,obscure: false, validatre: (value) {
                return AValidator.validateEmail(value);
              },
                levelText: StringHelper.eLevel,
                hintText: StringHelper.eHint,
                prefixIcon: Icons.mail,
              ),
              SizedBox(height: DimensionHelper.dimens_40.h,),
              CustomButton(title: StringHelper.submit, callback: (){
              }, text: StringHelper.submit)
            ],
          )
        ),
      ),
    );
  }
}
