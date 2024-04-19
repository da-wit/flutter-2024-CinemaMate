import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/genre.dart';

import 'package:carousel_slider/carousel_slider.dart';

var appColor = AppColor();

class CinemaMovieList extends StatefulWidget {
  const CinemaMovieList({super.key});

  @override
  State<CinemaMovieList> createState() => _CinemaMovieListState();
}

class _CinemaMovieListState extends State<CinemaMovieList> {
  var _currentBackground = 'assets/images/porsche.jpg';
  int currentIndex = 0;

  void _changeBackground(int index) {
    setState(() {
      if (index % 2 == 0) {
        _currentBackground = 'assets/images/img.jpg';
      } else {
        _currentBackground = 'assets/images/porsche.jpg';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CinemaMate',
          style: GoogleFonts.josefinSans(
            color: appColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        iconTheme: IconThemeData(
          color: appColor.white,
          size: 30,
        ),
        centerTitle: true,
        backgroundColor: appColor.bg,
      ),
      backgroundColor: appColor.bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Image.asset(
                    _currentBackground,
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
                  Positioned(
                    top: 100,
                    left: 1,
                    right: 1,
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 375.0,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          viewportFraction: 0.65,
                          onPageChanged: (index, _) {
                            _changeBackground(index);
                          }),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/porsche.jpg',
                                fit: BoxFit.fitHeight,
                                height: 300,
                                width: 250,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: appColor.bg,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            'Movie Title',
                            style: TextStyle(
                              fontSize: 25,
                              color: appColor.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'show Time',
                            style:
                                TextStyle(fontSize: 15, color: appColor.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1.75,
                      children: const [
                        Genre(genre: 'Action'),
                        Genre(genre: 'Action'),
                        Genre(genre: 'Action'),
                        Genre(genre: 'Action'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            AppButton(
              title: 'Book Now',
              width: 300,
              onPressed: () {},
              height: 75,
              textSize: 30,
              rightIcon: const Icon(
                Icons.book,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
