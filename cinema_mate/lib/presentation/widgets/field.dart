import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:flutter/material.dart';

var newColor = AppColor();

class Field extends StatelessWidget {
  const Field(
      {super.key,
      this.ishash = false,
      required this.title,
      this.icons,
      this.keyboard = TextInputType.text,
      this.height = 100,
      this.width = 350,
      this.length = 20,
      this.numberOfLines = 1,
      this.textColor = Colors.white,
      this.value});

  final Color? textColor;
  final IconData? icons;
  final String title;
  final bool ishash;
  final TextInputType? keyboard;
  final int numberOfLines;
  final double height;
  final double width;
  final int length;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      maxLength: length,
      maxLines: numberOfLines,
      keyboardType: keyboard,
      obscuringCharacter: "*",
      obscureText: ishash,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        constraints:
            BoxConstraints(maxWidth: width, maxHeight: height, minHeight: 100),
        labelText: title,
        labelStyle: TextStyle(
          color: newColor.grey,
        ),
        prefixIcon: Icon(
          icons,
          color: newColor.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.elliptical(10, 10),
          ),
          borderSide: BorderSide(width: 2, color: textColor!),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.elliptical(10, 10),
            ),
            borderSide: BorderSide(width: 2, color: textColor!)),
      ),
    );
  }
}
