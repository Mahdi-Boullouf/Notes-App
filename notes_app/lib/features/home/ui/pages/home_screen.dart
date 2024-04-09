import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/ui/layout/scrollable_page.dart';
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ScrollablePage(children:  [
        Row(children: [
          
        ],),
        FilledButton(onPressed: (){}, child: Text("Hello")),
      ])
    );
  }
}