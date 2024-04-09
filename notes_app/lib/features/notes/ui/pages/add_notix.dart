import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/config/router/app_router.gr.dart';
import 'package:notes_app/core/extensions/context.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/ui/components/custom_card.dart';
import 'package:notes_app/core/ui/layout/scrollable_page.dart';
import 'package:notes_app/core/utils/values.dart';

@RoutePage()
class AddNotixScreen extends StatelessWidget {
  const AddNotixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: marginPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("What Notes Do you Want ??",style: context.textTheme.displayMedium,),
          32.verticalSpace,
           CustomCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [const ElementTypeWidget(icon: Icons.camera_alt_outlined,text: "Camera",),
              16.verticalSpace,
              const ElementTypeWidget(icon: Icons.attach_file_sharp,text: "Attach File",),
                         16.verticalSpace,
              const ElementTypeWidget(icon: Icons.draw_outlined,text: "Draw Sketch",),
              16.verticalSpace,

              const ElementTypeWidget(icon: Icons.audio_file_outlined,text: "Audio File",),
        16.verticalSpace,

              const ElementTypeWidget(icon: Icons.lock_outline,text: "Private Note",),
        16.verticalSpace,
      


              const Divider(),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Expanded(child: FilledButton.icon(icon: const Icon(Icons.notes), onPressed: (){
                  context.router.push(NoteRoute());
                },label: const Text("Notes"),)),
                12.horizontalSpace,
                Expanded(child: FilledButton.icon(icon: const Icon(Icons.task_alt), onPressed: (){},label: const Text("Tasks"),)),

              ],)
              ],
            ),
          ),
        ],
      ),
    )));
  }
}

class ElementTypeWidget extends StatelessWidget {
  const ElementTypeWidget({super.key, required this.icon, required this.text});
  final IconData icon ;
  final String text ; 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: Icon(
        icon,
        color: AppColors.primarycolor,
      ),
      title: Text(text, style: context.textTheme.bodyLarge),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
