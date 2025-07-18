
import 'package:flutter/material.dart';
import 'package:to_do_app/core/helper_functions/on_generate_route.dart';
import 'package:to_do_app/core/theme/theme.dart';

import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/features/auth/presentation/screens/splash_screen/splash_screen.dart';
class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      title:AppStrings.appName,
      theme: getAppTheme(),
      darkTheme:  getAppDarkTheme(),
      themeMode: ThemeMode.light,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}