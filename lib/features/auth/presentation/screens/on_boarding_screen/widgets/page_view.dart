import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/core/database/cache.dart';
import 'package:to_do_app/core/services/service_locator.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/core/widgets/custom_contener_app.dart';
import 'package:to_do_app/features/auth/data/model/on_boarding_model.dart';
import 'package:to_do_app/features/auth/presentation/screens/on_boarding_screen/widgets/on_boarding_detuils.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen.dart';

class CstomPageView extends StatelessWidget {
  const CstomPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        itemCount: OnBoardingModel.onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: index != 2,
                child: GestureDetector(
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        textAlign: TextAlign.left,
                        AppStrings.skip,
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                ),
              ),
              OnBoardingDetuils(
                controller: pageController,
                onBoardingModel: OnBoardingModel.onBoardingList[index],
              ),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  Visibility(
                    visible: index != 0,
                    child: GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: Text(AppStrings.back,
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                  ),
                  const Spacer(),
                  index != 2
                      ? CustomContenerApp(
                          width: 90,
                          text: AppStrings.next,
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                        )
                      : CustomContenerApp(
                          width: 151,
                          text: AppStrings.getStarted,
                          onTap: () {
                            log(getIt<CacheHelper>()
                                .getData(key: onBoardingKey)
                                .toString());
                            getIt<CacheHelper>()
                                .saveData(key: onBoardingKey, value: true)
                                .then((value) {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.routeName);
                            });
                          },
                        ),
                ],
              ),
            ],
          );
        });
  }
}
