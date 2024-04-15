import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/components.dart';

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
            width: 50,
            onPressed: () {},
          ),
        ),
      ),
    ),
  );
}
