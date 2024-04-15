import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/list_items.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';

final newColor = AppColor();

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        backgroundColor: newColor.bg,
        body: const Column(
          children: [
            ListItem(
              date: '4/15/2024',
              title: "New Movie",
              subtitle: 'New cinema',
              time: '11:25 AM',
              imagePath: 'assets/images/porsche.jpg',
            ),
            SizedBox(height: 30),
            ListItem(
              date: '4/15/2024',
              title: "New Movie",
              subtitle: 'New cinema',
              time: '11:25 AM',
              imagePath: 'assets/images/porsche.jpg',
            ),
            SizedBox(height: 30),
            ListItem(
              date: '4/15/2024',
              title: "New Movie",
              subtitle: 'New cinema',
              time: '11:25 AM',
              imagePath: 'assets/images/porsche.jpg',
            ),
          ],
        ),
      ),
    ),
  );
}
