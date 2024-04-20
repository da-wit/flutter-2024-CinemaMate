import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';

var newColor = AppColor();

class CinemaProfile extends StatelessWidget {
  const CinemaProfile({super.key});
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
    return Scaffold(
      backgroundColor: newColor.bg,
      body: Center(
        child: Column(
          children: [
            Text('Cinema Name',
                style: TextStyle(color: newColor.white, fontSize: 20)),
            Text(
              'Email',
              style: TextStyle(color: newColor.white),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppButton(
              onPressed: () {
                _showModalSheet(context, 'Email', () {});
              },
              title: 'Change Email',
              width: 300,
              height: 50,
              leftIcon: const Icon(Icons.email),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppButton(
              onPressed: () {
                _showModalSheet(context, 'Password', () {});
              },
              title: 'Change password',
              width: 300,
              height: 50,
              leftIcon: const Icon(Icons.password),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppButton(
              onPressed: () {
                _showModalSheet(context, 'Description', () {});
              },
              title: 'Change Description',
              width: 300,
              height: 50,
              leftIcon: const Icon(Icons.description),
            ),
            const SizedBox(
              height: 50.0,
            ),
            AppButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signIn');
              },
              title: 'Logout',
              width: 200,
              height: 50,
              leftIcon: const Icon(Icons.logout),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppButton(
              onPressed: () {},
              title: 'delete',
              width: 200,
              height: 50,
              leftIcon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
