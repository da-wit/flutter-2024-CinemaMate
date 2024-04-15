import 'package:cinema_mate/main.dart';
import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/app_color.dart';

final newColor = AppColor();

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.time,
      required this.imagePath});

  final String title;
  final String subtitle;
  final String date;
  final String time;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 65,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: newColor.white),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(fontSize: 15, color: newColor.grey),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                date,
                style: TextStyle(fontSize: 12, color: newColor.grey),
              ),
              Text(
                time,
                style: TextStyle(fontSize: 12, color: newColor.grey),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Icon(
            Icons.remove_circle_rounded,
            size: 35,
            color: newColor.primary,
          ),
        ],
      ),
    );
  }
}
