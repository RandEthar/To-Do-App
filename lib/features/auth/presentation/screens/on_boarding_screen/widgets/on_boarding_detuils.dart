import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';

import 'package:to_do_app/core/utils/text_styles.dart';
import 'package:to_do_app/features/auth/data/model/on_boarding_model.dart';

import 'package:to_do_app/features/auth/presentation/screens/on_boarding_screen/widgets/smooth_page_indicator_widget.dart';
class OnBoardingDetuils extends StatelessWidget {
  const OnBoardingDetuils({super.key, required this.onBoardingModel, required this.controller});
  final OnBoardingModel onBoardingModel;
    final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
                 const SizedBox(height: 15),
          Image.asset(onBoardingModel.image),
            const SizedBox(
            height: 16,
          ),
        SmoothPageIndicatorWidget(controller: controller,),
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardingModel.title,
                style: Theme.of(context).textTheme.displayLarge
           
          ),
          const SizedBox(
            height: 42,
          ),
          Text(
            textAlign: TextAlign.center,
         onBoardingModel.subTitle,
               style: Theme.of(context).textTheme.displayMedium
          ),
    ],);
  }
}