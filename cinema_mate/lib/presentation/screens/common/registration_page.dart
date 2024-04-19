import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/register.dart';
import 'package:flutter/material.dart';

var newColor = AppColor();

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() {
    return _RegistrationState();
  }
}

class _RegistrationState extends State<Registration> {
  String role = 'User';

  Widget _selected = const UserRegistration();
  Color userButtonColor = newColor.primary;
  Color cinemaButtonColor = newColor.grey;

  void changeForm(role) {
    setState(
      () {
        if (role == 'User') {
          _selected = const UserRegistration();
          role = 'User';
        }
        if (role == 'Cinema') {
          _selected = const CinemaRegistration();
          role = 'Cinema';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              newColor.bg,
              newColor.bg,
              newColor.gradiantColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppButton(
                      title: "User",
                      width: 180,
                      onPressed: () {
                        changeForm('User');
                        userButtonColor = newColor.primary;
                        cinemaButtonColor = newColor.grey;
                      },
                      buttonColor: userButtonColor,
                    ),
                    AppButton(
                      title: "Cinema name",
                      width: 180,
                      onPressed: () {
                        changeForm('Cinema');
                        userButtonColor = newColor.grey;
                        cinemaButtonColor = newColor.primary;
                      },
                      buttonColor: cinemaButtonColor,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _selected,
              AppButton(
                title: "Sign Up",
                width: 250,
                onPressed: () {
                  Navigator.pushNamed(context, '/signIn');
                },
                textSize: 30,
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
