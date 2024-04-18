import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:numberpicker/numberpicker.dart';

final appColor = AppColor();

class ShowTimePicker extends StatefulWidget {
  const ShowTimePicker({super.key});

  @override
  State<StatefulWidget> createState() => _showTimePickerState();
}

class _showTimePickerState extends State<ShowTimePicker> {
  var hour = 0;
  var minute = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: appColor.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberPicker(
                minValue: 0,
                maxValue: 12,
                value: hour,
                onChanged: (value) {
                  setState(() {
                    hour = value;
                  });
                },
                itemWidth: 80,
                itemHeight: 60,
                zeroPad: true,
                infiniteLoop: true,
                textStyle: TextStyle(
                  color: appColor.grey,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                ),
                selectedTextStyle: TextStyle(
                  color: appColor.bg,
                  fontSize: 25,
                  decoration: TextDecoration.none,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                  ),
                ),
              ),
              NumberPicker(
                minValue: 0,
                maxValue: 60,
                value: minute,
                onChanged: (value) {
                  setState(() {
                    minute = value;
                  });
                },
                itemWidth: 80,
                itemHeight: 60,
                zeroPad: true,
                infiniteLoop: true,
                textStyle: TextStyle(
                  color: appColor.grey,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                ),
                selectedTextStyle: TextStyle(
                  color: appColor.bg,
                  fontSize: 25,
                  decoration: TextDecoration.none,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
