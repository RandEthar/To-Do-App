import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/app_color.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
          

        controller:controller,
        count: 3,
     effect: const JumpingDotEffect(
  dotHeight: 4,
  dotWidth: 27,
  jumpScale: 1.5,
  verticalOffset: 10,
  dotColor: Colors.grey,
  activeDotColor: Colors.white,
), // your preferred effect
        onDotClicked: (index) {});
  }
}
