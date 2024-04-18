import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';

var appColor = AppColor();

class UserSignIn extends StatelessWidget {
  const UserSignIn({super.key, required this.role});

  final String role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.bg,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'CinemaMate',
                  style: GoogleFonts.josefinSans(
                    color: appColor.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Sign in to your account',
                  style: TextStyle(fontSize: 20, color: appColor.grey),
                )
              ],
            ),
            SizedBox(
              child: Column(
                children: [
                  const Field(title: 'Email'),
                  const Field(
                    title: 'Password',
                    ishash: true,
                  ),
                  AppButton(
                    title: 'Sign in',
                    width: 200,
                    onPressed: () {},
                    textSize: 25,
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
