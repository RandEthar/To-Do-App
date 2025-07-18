import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

class NoTaskWidget extends StatelessWidget {
  const NoTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(Assets.assetsImagesNoNote),
        const SizedBox(height: 11),
        Text(
          AppStrings.noTaskTitle,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 20, color: Colors.white.withOpacity(0.87)),
        ),
        const SizedBox(height: 10),
        Text(AppStrings.noTaskSubTitle,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.white.withOpacity(0.87))),
      ],
    );
  }
}
