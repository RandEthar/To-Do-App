import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/core/database/cache.dart';
import 'package:to_do_app/core/services/service_locator.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/features/auth/presentation/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    navigate();
  }

  void navigate() {
    bool isOnBoardingScreenSeen =
        getIt<CacheHelper>().getData(key: onBoardingKey)??false;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
          context,
          isOnBoardingScreenSeen 
             
              ?HomeScreen.routeName: OnBoardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.assetsImagesLogoApp),
            const SizedBox(
              height: 19,
            ),
            Text(
              "UpTodo",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
