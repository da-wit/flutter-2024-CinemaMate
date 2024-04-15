import 'package:cinema_mate/presentation/widgets/tab_bar.dart';
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
          children: [],
        ),
        bottomNavigationBar: UserBottomNavBar(
          selectedIndex: 0,
          onItemSelected: (ma) {},
        ),
      ),
    ),
  );
}
