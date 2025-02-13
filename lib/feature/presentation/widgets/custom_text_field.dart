import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:income_expance_tracker_app/core/constant/colorsHelper.dart';

import '../../../core/constant/dimensionHelper.dart';
import '../../../core/constant/fontsHelper.dart';

class CutsomTextfield extends StatelessWidget {
  final bool isReadOnly;
  final String? Function(String?)?validatre;
  final TextEditingController controller;
  final String ?levelText;
  final String ?hintText;
  final IconData ?prefixIcon;
  final VoidCallback? callback;
  final Widget ?suffixIcon;
  final TextInputType inputType;
  bool obscure;
  CutsomTextfield({super.key, required this.controller, this.levelText, this.hintText, this.prefixIcon, this.suffixIcon, required this.inputType,this.obscure = false, this.validatre, this.callback,  this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: ColorsHelper.blackColor),
        borderRadius: BorderRadius.circular(DimensionHelper.dimens_20.r)
      ),
      child: TextFormField(
        onTap: callback,
        readOnly:isReadOnly? false:true,
        //expands: false,
        //maxLines: null,
       // minLines: null,
        style: TextStyle(
            fontWeight: FontHelper.regular,
            fontSize: FontHelper.font_26
        ),
        validator: validatre,
        controller: controller,
        keyboardType: inputType,
        obscureText: obscure,
        decoration: InputDecoration(
            //focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(DimensionHelper.dimens_40.r)),
            //border: OutlineInputBorder(borderRadius: BorderRadius.circular(DimensionHelper.dimens_14.r)),
            hintText: hintText,
            prefixIcon: Icon(prefixIcon,size: DimensionHelper.dimens_30.sp,),
            //contentPadding: EdgeInsets.symmetric(horizontal: DimensionHelper.dimens_20.w),
            suffixIcon: suffixIcon,
            labelText: levelText,
            hintStyle: Theme.of(context).textTheme.headlineMedium,
            labelStyle: Theme.of(context).textTheme.labelLarge
        ),
      ),
    );
  }
}
