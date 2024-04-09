import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/extensions/context.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/ui/components/custom_card.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({
    super.key, this.isLocked,
  });
  final  bool? isLocked ;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child: Stack(
        children: [
          ImageFiltered(
            enabled: isLocked!,
            imageFilter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
            child: CustomCard(child:  Column(
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
                        const Icon(Icons.ios_share_outlined)
                      ],
                    ),
                    16.verticalSpace,
                    Text(
                      "Shopping List",
                      style: context.textTheme.titleLarge,
                    ),
                    8.verticalSpace,
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return Directionality(
                          textDirection: TextDirection.rtl,
                          child: CheckboxListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            checkColor: Colors.greenAccent,
                            checkboxShape:
                                const OvalBorder(side: BorderSide(color: Colors.white)),
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.secondarySurfaceColor),
                            value: false,
                            title: Text(
                              "Go to the gym",
                              style: context.textTheme.bodySmall,
                              textAlign: TextAlign.left,
                            ),
                            onChanged: (value) {},
                          ),
                        );
                      },
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                    16.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.access_time_sharp,
                          color: Colors.greenAccent,
                          size: 20.r,
                        ),
                        8.horizontalSpace,
                        Text(
                          "1h ago",
                          style: context.textTheme.bodySmall!
                              .copyWith(color: Colors.white54),
                        )
                      ],
                    )
                  ],
                ),
              ),
          ),
       
  isLocked! ?     Align(alignment: Alignment.bottomCenter, child: Column(children: [
       22.verticalSpace,
        
        const Icon(Icons.lock_open_outlined),
       const Text("This note is locked")],)):const SizedBox(),
        ],
      ),
    );
  }
}
