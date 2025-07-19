import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/add_task_component.dart';

class StartAndEndTask extends StatelessWidget {
  const StartAndEndTask({
    super.key,
    required this.titleController,
  });

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AddTaskComponent(
            readOnly: true,
            controller: titleController,
            text: "Start Time",
            hintText: DateFormat("hh:mm a").format(DateTime.now()),
            suffixIcon: GestureDetector(
              onTap:() {
                showTimePicker(context: context, initialTime:TimeOfDay.fromDateTime(DateTime.now()));
              },
              child: SvgPicture.asset(
                Assets.assetsImagesTimer,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 27,
        ),
        Expanded(
          child: AddTaskComponent(
             readOnly: true,
            controller: titleController,
            text: "End Time",
            hintText: DateFormat("hh:mm a").format(DateTime.now()),
            suffixIcon: GestureDetector(
                  onTap:() {
           showTimePicker(context: context, initialTime:TimeOfDay.fromDateTime(DateTime.now()));
              },
              child: SvgPicture.asset(
                Assets.assetsImagesTimer,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
