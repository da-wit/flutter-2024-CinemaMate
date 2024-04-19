import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:numberpicker/numberpicker.dart';

final appColor = AppColor();

class ShowTimePicker extends StatefulWidget {
  const ShowTimePicker({super.key, required this.onTimeSelected});

  final Function(String) onTimeSelected;

  @override
  State<StatefulWidget> createState() => _ShowTimePickerState();
}

class _ShowTimePickerState extends State<ShowTimePicker> {
  var hour = 0;
  var minute = 0;

  var selectedTime = 'AM';
  Color amColor = appColor.opblack;
  Color pmColor = appColor.grey;

  void _handleOkButtonPressed(context) {
    String output =
        hour.toString() + " : " + minute.toString() + " " + selectedTime;
    widget.onTimeSelected(output); // Call callback with selected time
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  setState(
                    () {
                      minute = value;
                    },
                  );
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTime = 'AM';
                        amColor = appColor.opblack;
                        pmColor = appColor.grey;
                      });
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: amColor,
                        border: Border.all(color: appColor.bg),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'AM',
                        style: TextStyle(
                          color: appColor.white,
                          decoration: TextDecoration.none,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTime = 'PM';
                        amColor = appColor.grey;
                        pmColor = appColor.opblack;
                      });
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: pmColor,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'PM',
                        style: TextStyle(
                          color: appColor.white,
                          decoration: TextDecoration.none,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    child: Text('Set',
                        style:
                            TextStyle(color: newColor.primary, fontSize: 30)),
                    onPressed: () {
                      _handleOkButtonPressed(context);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
