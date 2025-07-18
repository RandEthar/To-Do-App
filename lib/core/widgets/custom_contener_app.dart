import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';


class CustomContenerApp extends StatelessWidget {
  const CustomContenerApp({super.key, required this.text, required this.width,required this.onTap});
    final String text;
    final double width;
    final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 48,width: width,
        decoration: const ShapeDecoration(
            color: AppColor.violet,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            )),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
           text,style:Theme.of(context).textTheme.displaySmall),
        ),
      ),
    );
  }
}
