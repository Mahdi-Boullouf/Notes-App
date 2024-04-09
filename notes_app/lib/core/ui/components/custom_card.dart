import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/res/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
final Widget child ; 
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: AppColors.secondarySurfaceColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
        child:child));
  }
}