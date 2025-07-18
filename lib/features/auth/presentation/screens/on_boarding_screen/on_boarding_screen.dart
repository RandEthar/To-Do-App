import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';

import 'package:to_do_app/features/auth/presentation/screens/on_boarding_screen/widgets/page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = "OnBoardingScreen";

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
late  PageController     pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:const  EdgeInsets.all(24),
        child: SafeArea(
          child:CstomPageView (pageController: pageController)
        ),
      ),
    );
  }
}
