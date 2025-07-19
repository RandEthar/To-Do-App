import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/add_tasks_screen.dart';

import 'package:to_do_app/features/task/presentation/screens/home_screen/widgets/build_bottom_sheet.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen/widgets/custom_date_picker.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen/widgets/tasks_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 64,
        height: 64,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: AppColor.accentPurple,
          onPressed: () {

            Navigator.pushNamed(context,AddTasksScreen.routeName);
          },
          child: const Icon(
            Icons.add,
            color: AppColor.white,
            size: 32,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24),
              ),
              const SizedBox(height: 24),
              Text(
                "Today",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 24),
              ),
              const SizedBox(height: 10),
              const CustomDatePicker(),
              //  const SizedBox(height: 11),
              // Center(child: const NoTaskWidget())
              const SizedBox(height: 24),
              GestureDetector(
                  onTap: () {
                    buildBottomSheet(context);
                  },
                  child: const TasksItemWidget())
            ],
          ),
        ),
      ),
    );
  }


}
