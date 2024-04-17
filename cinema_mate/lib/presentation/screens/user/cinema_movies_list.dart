import 'dart:ui';

import 'package:cinema_mate/presentation/screens/user/user_profile.dart';
import 'package:cinema_mate/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CinemaMovieList extends StatefulWidget {
  const CinemaMovieList({super.key});

  @override
  State<CinemaMovieList> createState() => _CinemaMovieListState();
}

class _CinemaMovieListState extends State<CinemaMovieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: newColor.bg,
        iconTheme: IconThemeData(
          color: newColor.white,
        ),
      ),
      backgroundColor: newColor.bg,
      body: Container(
        child: Stack(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/porsche.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY:
                          5), // Adjust the sigma values for desired blur effect
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.transparent, // Transparent color
                  ),
                ),
                // const Center(
                //   child: AppCard(
                //     title: 'Movie',
                //     imgpath: 'assets/images/porsche.jpg',
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
