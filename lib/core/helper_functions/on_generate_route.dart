import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/screens/splash_screen/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());

    default:
      return MaterialPageRoute(
          builder: (context) =>const Scaffold(
                body: Column(
                  children: [],
                ),
              ));
  }
}
