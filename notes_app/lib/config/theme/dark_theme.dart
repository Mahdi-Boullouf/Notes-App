import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/res/app_colors.dart';

ThemeData darkTheme(BuildContext context){
  return ThemeData(
          textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500)),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(16)) ,
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                
                  borderRadius: BorderRadius.circular(9))))),
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarycolor));

}