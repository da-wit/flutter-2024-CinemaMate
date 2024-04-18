import 'package:cinema_mate/presentation/screens/common/registration_page.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:flutter/material.dart';

var bg = AppColor();

class Genre extends StatelessWidget {
  const Genre({super.key, required this.genre});
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Chip(
        label: Text(genre),
        backgroundColor: newColor.opblack,
        labelStyle: TextStyle(color: newColor.grey),
      ),
    );
  }
}
