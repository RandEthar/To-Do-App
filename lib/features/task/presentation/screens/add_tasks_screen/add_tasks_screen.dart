import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/add_task_component.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/date_task_widget.dart';
import 'package:to_do_app/features/task/presentation/screens/add_tasks_screen/widgets/start_and_end_task.dart';

class AddTasksScreen extends StatefulWidget {
  const AddTasksScreen({super.key});
  static const String routeName = "AddTasksScreen";

  @override
  State<AddTasksScreen> createState() => _AddTasksScreenState();
}

class _AddTasksScreenState extends State<AddTasksScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          Assets.assetsImagesArrowLeft,
          height: 24,
          width: 24,
          fit: BoxFit.scaleDown,
        ),
        title: const Text("Add Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 55,
              ),
              // orange Title
              AddTaskComponent(
                controller: titleController,
                text: "Title",
                hintText: "Enter title here",
              ),
              const SizedBox(
                height: 24,
              ),
              // orange Note
              AddTaskComponent(
                controller: noteController,
                text: "Note",
                hintText: "Enter note here",
              ),

              const SizedBox(
                height: 24,
              ),
              // orange date
               const   DateTaskWidget(),

              const SizedBox(
                height: 24,
              ),

              //orange start-end date
              StartAndEndTask(titleController: titleController)
            ],
          ),
        ),
      ),
    );
  }
}

