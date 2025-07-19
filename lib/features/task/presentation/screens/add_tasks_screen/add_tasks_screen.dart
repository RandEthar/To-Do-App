import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/core/utils/app_images.dart';

class AddTasksScreen extends StatelessWidget {
  const AddTasksScreen({super.key});
  static const String routeName = "AddTasksScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(Assets.assetsImagesArrowLeft,
        height: 24,width: 24,fit: BoxFit.scaleDown,),
        title: Text("Add Task"),
      ),
    );
  }
}