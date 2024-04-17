import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

var newColor = AppColor();

class CinemaDescriptionScreen extends StatelessWidget {
  const CinemaDescriptionScreen(
      {super.key,
      required this.cinemaName,
      required this.description,
      required this.imagePath});

  final String cinemaName;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: newColor.bg,
        appBar: AppBar(
          backgroundColor: newColor.bg,
          title: Text(
            'CinemaMate',
            style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
                    color: newColor.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(35),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: newColor.opblack,
                      borderRadius:
                          const BorderRadius.all(Radius.elliptical(10, 10))),
                  child: Center(
                    child: Text(
                      cinemaName,
                      style: TextStyle(color: newColor.white, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 1, color: newColor.white),
                  right: BorderSide(width: 1, color: newColor.white),
                  top: BorderSide(width: 1, color: newColor.white),
                  bottom: BorderSide(width: 1, color: newColor.white),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Description",
                    style: TextStyle(color: newColor.white, fontSize: 30),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(description,
                          style:
                              TextStyle(color: newColor.white, fontSize: 20)),
                    ),
                  )
                ],
              ),
            ),
            AppButton(
              title: "Checkout Movies",
              width: 300,
              height: 70,
              onPressed: () {},
              rightIcon: const Icon(
                Icons.arrow_forward,
                size: 30,
              ),
              textSize: 25,
            )
          ],
        ));
  }
}
