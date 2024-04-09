import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/config/router/app_router.dart';
import 'package:notes_app/config/theme/app_theme.dart';
import 'package:notes_app/config/theme/dark_theme.dart';
import 'package:notes_app/config/theme/light_theme.dart';
import 'package:notes_app/core/app/di.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return Di(
      app: ScreenUtilInit(
        designSize: Size(428, 926),
        builder:(context, child) =>  MaterialApp.router(
          theme: appTheme(),
          themeMode: ThemeMode.dark,
          darkTheme: darkTheme(context),
          
          routerConfig: appRouter.config(),
          
        ),
      ),
    );
  }
}