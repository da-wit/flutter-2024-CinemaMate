import 'package:flutter/material.dart';

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
      this.labelColor = Colors.white,
      this.textColor = Colors.white});

  final Color? labelColor;
  final Color? textColor;
  final IconData? icons;
  final String title;
  final bool ishash;
  final TextInputType? keyboard;
  final int numberOfLines;
  final double height;
  final double width;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: length,
      maxLines: numberOfLines,
      keyboardType: TextInputType.text,
      obscuringCharacter: "*",
      obscureText: ishash,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        constraints:
            BoxConstraints(maxWidth: width, maxHeight: height, minHeight: 100),
        labelText: title,
        labelStyle: TextStyle(
          color: labelColor,
        ),
        prefixIcon: Icon(
          icons,
          color: labelColor,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.elliptical(10, 10),
          ),
          borderSide: BorderSide(width: 2, color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.elliptical(10, 10),
            ),
            borderSide: BorderSide(width: 2, color: Colors.white)),
      ),
    );
  }
}
