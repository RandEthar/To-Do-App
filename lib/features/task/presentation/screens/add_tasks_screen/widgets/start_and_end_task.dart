import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/add_task_component.dart';

class StartAndEndTask extends StatefulWidget {
  const StartAndEndTask({
    super.key,
    required this.titleController,
  });

  final TextEditingController titleController;

  @override
  State<StartAndEndTask> createState() => _StartAndEndTaskState();
}

class _StartAndEndTaskState extends State<StartAndEndTask> {
  TimeOfDay startTimeTask = TimeOfDay.fromDateTime(DateTime.now());
  TimeOfDay endTimeTask = TimeOfDay.fromDateTime(DateTime.now());

  String formatTimeOfDay(TimeOfDay tod) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    return DateFormat("hh:mm a").format(dt);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AddTaskComponent(
            readOnly: true,
            controller: widget.titleController,
            text: "Start Time",
            hintText: formatTimeOfDay(startTimeTask),
            suffixIcon: GestureDetector(
              onTap: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: startTimeTask,
                );
                if (selectedTime != null) {
                  setState(() {
                    startTimeTask = selectedTime;
                  });
                }
              },
              child: SvgPicture.asset(
                Assets.assetsImagesTimer,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        const SizedBox(width: 27),
        Expanded(
          child: AddTaskComponent(
            readOnly: true,
            controller: widget.titleController,
            text: "End Time",
            hintText: formatTimeOfDay(endTimeTask),
            suffixIcon: GestureDetector(
              onTap: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: endTimeTask,
                );
                if (selectedTime != null) {
                  setState(() {
                    endTimeTask = selectedTime;
                  });
                }
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
