import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/config/router/app_router.gr.dart';
import 'package:notes_app/core/extensions/context.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/ui/layout/scrollable_page.dart';
import 'package:notes_app/features/home/ui/widgets/note_widget.dart';
import 'package:notes_app/features/home/ui/widgets/tasks_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add),
        onPressed: (){
context.router.push(AddNotixRoute());
      }),
        body: ScrollablePage(children: [
      46.verticalSpace,

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hello ,\nTo Notix",
            style: context.textTheme.displayLarge,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                size: 45.r,
              ))
        ],
      ),
      16.verticalSpace,
      const TextField(
        decoration: InputDecoration(
            hintText: 'Search ..', prefixIcon: Icon(Icons.search)),
      ),
      14.verticalSpace,
      const NoteWidget(),
      14.verticalSpace,
      const TasksWidget(isLocked: false,)
      // FilledButton(onPressed: (){}, child: const Text("Hello")),
    ]));
  }
}


