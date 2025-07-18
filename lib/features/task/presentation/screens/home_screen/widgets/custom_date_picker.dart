import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

import 'package:to_do_app/core/utils/app_color.dart';


class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: DatePicker(
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        selectionColor: AppColor.purpleNavy,
        selectedTextColor: Colors.white, 
          
     
        dateTextStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
          color: Colors.white,
        ),
        monthTextStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
          color: Colors.white,
        ),
        dayTextStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
          color: Colors.white,
        ),
    
        onDateChange: (date) {
          // handle date change
        },
      ),
    );
  }
}
