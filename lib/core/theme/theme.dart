import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/core/utils/text_styles.dart';

ThemeData getAppTheme() => ThemeData(
      scaffoldBackgroundColor: AppColor.background,
      textTheme: TextTheme(
        displayLarge: TextStyles.bold32.copyWith(color:  AppColor.white.withOpacity(0.82)),
        displayMedium: TextStyles.regular16.copyWith(color: AppColor.white.withOpacity(0.44)),
        displaySmall: TextStyles.regular16.copyWith(color: AppColor.white.withOpacity(0.44)),
      ),
    );
ThemeData getAppDarkTheme() => ThemeData(
      scaffoldBackgroundColor:AppColor.white 
    ,  textTheme: TextTheme(
        displayLarge: TextStyles.bold32.copyWith(color:AppColor.background.withOpacity(0.82),),
        displayMedium: TextStyles.regular16.copyWith(color: AppColor.background.withOpacity(0.44),),
        displaySmall: TextStyles.regular16.copyWith(color: AppColor.background.withOpacity(0.44),),
      ),
    );
