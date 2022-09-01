import 'palette.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

abstract class AppStyles {
  static const poppinsRegularFontFamily = "Poppins";
  static const notoSansFontFamily = "Noto Sans";

  static final mainHeadlineColorw70020spPoppins = TextStyle(
    color: AppPalette.mainHeadlineBlackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    fontFamily: poppinsRegularFontFamily,
  );

  static final mainHeadlineColorw50012spPoppinsLineHeight = TextStyle(
    color: AppPalette.mainHeadlineBlackColor,
    fontSize: 12.sp,
    height: 1.5,
    fontWeight: FontWeight.w500,
    fontFamily: poppinsRegularFontFamily,
  );

  static final whiteColor15spw700NotoSans = TextStyle(
      color: AppPalette.whiteColor,
      fontFamily: notoSansFontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 15.sp);

  static final mainBlueColorBoxDecorationStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: AppPalette.mainBlueColor,
  );
}
