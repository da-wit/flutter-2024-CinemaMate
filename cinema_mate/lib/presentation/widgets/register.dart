import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';
import 'package:flutter/material.dart';

class UserRegistration extends StatelessWidget {
  const UserRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Field(title: "User name"),
              Field(title: "Email"),
              Field(
                title: "Password",
                ishash: true,
              ),
              Field(
                title: "Confirm password",
                ishash: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CinemaRegistration extends StatelessWidget {
  const CinemaRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Field(title: "Cinema name"),
                  Field(title: "Email"),
                  Field(
                    title: "Password",
                    ishash: true,
                  ),
                  Field(
                    title: "Confirm password",
                    ishash: true,
                  ),
                  Field(
                    title: "Description",
                    length: 800,
                    height: 150,
                    numberOfLines: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
