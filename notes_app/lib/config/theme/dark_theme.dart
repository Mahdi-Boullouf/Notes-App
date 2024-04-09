import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/res/app_strings.dart';

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    fontFamily: AppStrings.appFont,
    cardTheme: CardTheme(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide.none,
        ),
        color: AppColors.secondarySurfaceColor),
    inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.secondarySurfaceColor),
    iconTheme: const IconThemeData(color: AppColors.onDarkSurface),
    textTheme: TextTheme(
        displayLarge: const TextStyle(color: AppColors.onDarkSurface),
        titleLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onDarkSurface),
        bodyLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.onDarkSurface),bodySmall: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500)),
    filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.all(16)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9))))),
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  );
}
// }colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarycolor)