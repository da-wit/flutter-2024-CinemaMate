import 'package:flutter/material.dart';

import './app_color.dart';

var newColor = AppColor();

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.title,
    required this.width,
    required this.onPressed,
    this.height = 30,
    this.leftIcon,
    this.rightIcon,
  });

  final String title;
  final Icon? leftIcon;
  final Icon? rightIcon;
  void Function() onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: newColor.primary,
      ),
      child: Text(title),
    );
  }
}
