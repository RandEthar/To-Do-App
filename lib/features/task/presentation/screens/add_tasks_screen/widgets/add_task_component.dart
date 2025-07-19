import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/core/widgets/text_form_field_app.dart';

class AddTaskComponent extends StatelessWidget {
  const AddTaskComponent(
      {super.key,
      required this.text,
      required this.hintText,
      this.suffixIcon,
      this.controller, this.readOnly});
  final String text;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColor.white.withOpacity(0.87)),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormFieldApp(
          readOnly: readOnly ,
          hintText: hintText,
          controller: controller,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
