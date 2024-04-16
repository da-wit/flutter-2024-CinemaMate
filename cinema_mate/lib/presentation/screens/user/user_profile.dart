import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';

final newColor = AppColor();

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'User Name',
            style: TextStyle(color: newColor.white, fontSize: 25),
          ),
          const SizedBox(height: 20),
          Text(
            'Email',
            style: TextStyle(color: newColor.grey, fontSize: 20),
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Email',
            width: 300,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                constraints: const BoxConstraints(minHeight: 700),
                builder: (context) {
                  return SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              'Change Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(height: 50),
                            const Field(title: 'Previous Email'),
                            const Field(title: 'New Email'),
                            const SizedBox(height: 50),
                            AppButton(
                              title: 'Continue',
                              width: 200,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Password',
            width: 300,
            onPressed: () {},
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Username',
            width: 300,
            onPressed: () {},
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 100),
          AppButton(
            title: 'Log Out',
            width: 200,
            onPressed: () {},
            leftIcon: const Icon(Icons.logout),
          ),
          const SizedBox(height: 30),
          AppButton(
            title: 'Delete Account',
            width: 250,
            onPressed: () {},
            leftIcon: const Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
