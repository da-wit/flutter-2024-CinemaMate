import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:flutter/material.dart';

var bg = AppColor();

class Genre extends StatelessWidget {
  const Genre({super.key, required this.genre});
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(141, 70, 71, 71),
        borderRadius: BorderRadius.all(
          Radius.elliptical(20, 20),
        ),
      ),
      child: Center(
        child: Text(
          genre,
          style: TextStyle(color: bg.genre),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
