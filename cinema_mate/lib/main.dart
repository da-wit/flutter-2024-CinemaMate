import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/buttons.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: Center(
          child: AppButton(
            title: 'Hello',
            width: 170,
            onPressed: () {},
            leftIcon: const Icon(Icons.access_alarm_outlined),
            rightIcon: const Icon(Icons.safety_check_rounded),
          ),
        ),
      ),
    ),
  );
}
