import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';

class ButtomApp extends StatelessWidget {
  const ButtomApp({super.key, required this.color, required this.text, this.onTap});
   final Color color;
   final String text;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: ShapeDecoration(
            color:color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColor.white),
          ),
        ),
      ),
    );
  }
}
