import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

class OnBoardingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBoardingModel(
      {required this.title, required this.subTitle, required this.image});

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: Assets.assetsImagesOnboardingOne,
        title: AppStrings.onBoardingTitleOne,
        subTitle: AppStrings.onBoardingSubTitleOne),
            OnBoardingModel(
        image: Assets.assetsImagesOnboardingTwo,
        title: AppStrings.onBoardingTitleTwo,
        subTitle: AppStrings.onBoardingSubTitleTwo),
            OnBoardingModel(
        image: Assets.assetsImagesOnboardingThree,
        title: AppStrings.onBoardingTitleThree,
        subTitle: AppStrings.onBoardingSubTitleThree),
  ];
}
