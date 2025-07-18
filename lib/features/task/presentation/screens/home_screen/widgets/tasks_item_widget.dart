import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/core/utils/app_color.dart';
import 'package:to_do_app/core/utils/app_images.dart';

class TasksItemWidget extends StatelessWidget {
  const TasksItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
      
       
        width: double.infinity,
        decoration: const ShapeDecoration(
                color: AppColor.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task 1",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 24),
            ),
        
            Row(
              children: [
                SvgPicture.asset(Assets.assetsImagesTimer,height: 24,width: 24,),
                const SizedBox(
                  width: 8,
                ),
                Text("09:33 PM - 09:48 PM",  style: Theme.of(context)
                  .textTheme
                  .displayMedium!.copyWith(
                    color: AppColor.white
                  ))
                ,const  Spacer(),
                Container(
                  height: 60,
                  width:1.5 ,
                  decoration:const BoxDecoration(
                     color: AppColor.gray200
                  ),
                ),
                       const SizedBox(
                  width: 10,
                ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text("TODO",  style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!.copyWith(
                      color: AppColor.white.withOpacity(0.87),
                
                                        )),
                    )
      
              ],
            ),
        
               Text("Learn Dart",  style: Theme.of(context)
                  .textTheme
                  .displayMedium!.copyWith(
                    color: AppColor.white.withOpacity(0.87),
      
                    fontSize: 24
                  ))
          ],
        ),
      ),
    );
  }
}
