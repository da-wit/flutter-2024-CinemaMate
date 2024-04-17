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
  var formNumber = 1;
  // var pass = 1;

  Widget _selected = const UserRegistration();

  void ChangeForm(i) {
    setState(
      () {
        if (i == 1) {
          _selected = const UserRegistration();
          formNumber = i;
          // pass = 1;
        }
        if (i == 2) {
          _selected = const CinemaRegistration();
          formNumber = i;
          // pass = 2;
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
                          ChangeForm(1);
                        }),
                    AppButton(
                        title: "Cinema name",
                        width: 180,
                        onPressed: () {
                          ChangeForm(2);
                        })
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              _selected,
              AppButton(
                title: "Sign Up",
                width: 250,
                onPressed: () {
                  //use the formnumber to pass values to the login page
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
