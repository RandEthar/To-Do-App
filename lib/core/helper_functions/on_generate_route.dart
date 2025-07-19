import 'package:flutter/material.dart';
import 'package:to_do_app/features/auth/presentation/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:to_do_app/features/auth/presentation/screens/splash_screen/splash_screen.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/add_tasks_screen.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen/home_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
         case AddTasksScreen.routeName:
      return MaterialPageRoute(builder: (context) => const AddTasksScreen());
   case OnBoardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
         case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    default:
      return MaterialPageRoute(
          builder: (context) =>const Scaffold(
                body: Column(
                  children: [],
                ),
              ));
  }
}
