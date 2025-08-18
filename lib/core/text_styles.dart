import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String fontFamily = 'SuisseIntl';
double titleFontSize = 20.sp;

class TextStyles {
  static TextStyle titleRegular = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.w200,
    fontFamily: fontFamily,
  );
  static TextStyle titleMedium = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
  );
  static TextStyle titleSemiBold = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.w700,
    fontFamily: fontFamily,
  );
  static TextStyle titleBold = TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.w900,
    fontFamily: fontFamily,
  );
}
