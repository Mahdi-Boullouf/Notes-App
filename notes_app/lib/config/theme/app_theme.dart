import 'package:flutter/material.dart';
import 'package:notes_app/core/res/app_strings.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

ThemeData appTheme() {
  return ThemeData(
      fontFamily: AppStrings.appFont,
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(20)) ,
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                
                  borderRadius: BorderRadius.circular(9))))),
      useMaterial3: true,
      textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500)));
}
