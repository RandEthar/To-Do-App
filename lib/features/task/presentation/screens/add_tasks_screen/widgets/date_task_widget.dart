import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/add_task_component.dart';

class DateTaskWidget extends StatefulWidget {
  const DateTaskWidget({super.key});

  @override
  State<DateTaskWidget> createState() => _DateTaskWidgetState();
}

class _DateTaskWidgetState extends State<DateTaskWidget> {
    DateTime? dateTask;
  @override
  Widget build(BuildContext context) {
    return 
              AddTaskComponent(
                readOnly: true,
                text: "Date",
                hintText: DateFormat.yMd().format(dateTask ?? DateTime.now()),
                suffixIcon: GestureDetector(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2026),
                    );

                    if (selectedDate != null) {
                      setState(() {
                        dateTask = selectedDate;
                      });
                    }
                  },
                  child: SvgPicture.asset(
                    Assets.assetsImagesCalendar,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              );
  }
}