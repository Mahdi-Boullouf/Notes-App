import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/features/common/cubit/theme_cubit.dart';

class Di extends StatelessWidget {
  const Di({super.key, required this.app});
  final Widget app;
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers: [
      BlocProvider(create: (context) => ThemeCubit(),)
    ],child: app,);
  }
}