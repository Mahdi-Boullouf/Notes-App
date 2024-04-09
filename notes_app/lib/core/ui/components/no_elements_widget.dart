import 'package:flutter/material.dart';


class NoElementsWidget extends StatelessWidget {
  const NoElementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child:  Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      Icon(Icons.info_outline),

    ],));
  }
}