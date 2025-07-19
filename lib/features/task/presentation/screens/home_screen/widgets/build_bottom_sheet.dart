


  import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/core/widgets/buttom_app.dart';

Future<dynamic> buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return IntrinsicHeight(
                          child: Container(
                            padding:const EdgeInsets.all(24),
                            decoration: const BoxDecoration(
                                color: AppColor.mediumDarkGray),
                            child: const Column(
                              children: [
                                ButtomApp(
                                   color: AppColor.violet,
                                     text: "TASK COMPLETED",

                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                ButtomApp(   color: AppColor.softRed,
                                     text: "DELETE TASK",),
                                SizedBox(
                                  height: 24,
                                ),
                                ButtomApp(   color: AppColor.violet,
                                     text: "CANCEL",)
                              ],
                            ),
                          ),
                        );
                      });
  }