import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/core/res/app_colors.dart';
import 'package:notes_app/core/ui/layout/scrollable_page.dart';import 'package:intl/intl.dart';

@RoutePage()
class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  DateTime noteDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        backgroundColor: AppColors.darkBackgroundColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.lock_outline_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
        ],
      ),
      body:  ScrollablePage(
        children: [
          Row(
            children: [
              Text(DateFormat(DateFormat.YEAR_MONTH_DAY).format(noteDate)),6.horizontalSpace,const Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          32.verticalSpace,
          TextFormField(decoration: InputDecoration(filled:false,hintText: "Note Title"),maxLines: 1,),
          TextFormField(decoration: InputDecoration(filled:false,hintText: "Note body",alignLabelWithHint: true),maxLines: null,)

        ],
      ),
    );
  }
}
