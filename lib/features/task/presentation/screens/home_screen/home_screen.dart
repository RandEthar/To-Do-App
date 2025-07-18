import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen/widgets/custom_date_picker.dart';
import 'package:to_do_app/features/task/presentation/screens/home_screen/widgets/no_task_widget.dart';

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
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: AppColor.white,
            size: 32,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 32),
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
          const  CustomDatePicker(),
           const SizedBox(height: 11),
          Center(child: const NoTaskWidget())

            ],
          ),
        ),
      ),
    );
  }
}
