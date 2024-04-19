import 'package:flutter/material.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';

var newcolor = AppColor();

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Background image with transparency
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
          ),
        ),
      ),

      Positioned(
          top: 320,
          left: 0,
          right: 0,
          child: Center(
              child: Text(
            'Cinema Mate',
            style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
              color: newcolor.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            )),
            selectionColor: Colors.transparent,
          ))),
      Positioned(
          top: 400,
          left: 20,
          right: 0,
          child: Center(
              child: Container(
                  child: Text(
            'Discover your next \ncinematic obsession',
            style: GoogleFonts.josefinSans(
                textStyle: TextStyle(
              color: Colors.amber,
              fontSize: 28,
              decoration: TextDecoration.none,
            )),
            selectionColor: Colors.transparent,
            softWrap: true,
          )))),

      Positioned(
        bottom: 50,
        left: 0,
        right: 0,
        child: Center(
            child: AppButton(
          onPressed: () {},
          title: 'Explore Now',
          width: 200,
          height: 50,
        )),
      ),
    ]);
  }
}
