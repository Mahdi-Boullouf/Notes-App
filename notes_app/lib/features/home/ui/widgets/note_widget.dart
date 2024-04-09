import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/extensions/context.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/ui/components/custom_card.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "28 May",
                  style: context.textTheme.bodySmall!
                      .copyWith(color: Colors.white54),
                ),
                Icon(Icons.ios_share_outlined)
              ],
            ),
            16.verticalSpace,
            Text(
              "Tasks Managemnt App Ui Design",
              style: context.textTheme.titleLarge,
            ),
            8.verticalSpace,
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: context.textTheme.bodySmall!
                  .copyWith(color: AppColors.darkSubtitleText.withOpacity(.3)),
            ),
            16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Icon(Icons.access_time_sharp,color: Colors.greenAccent,size: 20.r,),
            8.horizontalSpace
            ,Text("Just now",
            
                       style: context.textTheme.bodySmall!
                      .copyWith(color: Colors.white54),
            )
          ],)
          ],
        ),
      );
  }
}