import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';

final newColor = AppColor();

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  Future _showModalSheet(
      BuildContext context, String toChange, void Function() onpressed) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 10,
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Change $toChange",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 50),
                Field(
                  title: 'Previous $toChange',
                  textColor: newColor.bg,
                ),
                Field(
                  title: 'New $toChange',
                  textColor: newColor.bg,
                ),
                const SizedBox(height: 50),
                AppButton(
                  title: 'Continue',
                  width: 200,
                  onPressed: onpressed,
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
              _showModalSheet(context, 'Email', () {});
            },
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Password',
            width: 300,
            onPressed: () {
              _showModalSheet(context, 'Password', () {});
            },
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 20),
          AppButton(
            title: 'Change Username',
            width: 300,
            onPressed: () {
              _showModalSheet(context, 'Username', () {});
            },
            height: 60,
            textSize: 20,
          ),
          const SizedBox(height: 100),
          AppButton(
            title: 'Log Out',
            width: 200,
            onPressed: () {
              Navigator.pushNamed(context, '/signIn');
            },
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
