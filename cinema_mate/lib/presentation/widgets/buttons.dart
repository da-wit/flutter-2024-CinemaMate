import 'package:flutter/material.dart';

import './app_color.dart';

var newColor = AppColor();

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.width,
    required this.onPressed,
    this.height = 50,
    this.leftIcon,
    this.rightIcon,
    this.textSize,
    this.buttonColor = const Color.fromARGB(255, 255, 67, 67),
  });

  final String title;
  final Icon? leftIcon;
  final Icon? rightIcon;
  final void Function() onPressed;
  final double height;
  final double width;
  final double? textSize;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    bool isLeft = false;
    bool isRight = false;
    double textsSize = 17;

    if (leftIcon != null) {
      isLeft = true;
    }

    if (rightIcon != null) {
      isRight = true;
    }

    if (textSize != null) {
      textsSize = textSize!;
    }

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: newColor.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLeft ? leftIcon! : Container(),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: textsSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            isRight ? rightIcon! : Container(),
          ],
        ),
      ),
    );
  }
}
