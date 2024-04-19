import 'package:cinema_mate/presentation/screens/cinema/add_mov.dart';
import 'package:cinema_mate/presentation/screens/cinema/bookSeats.dart';
import 'package:cinema_mate/presentation/screens/cinema/cinemaProfile.dart';
import 'package:cinema_mate/presentation/screens/cinema/cinema_details.dart';
import 'package:cinema_mate/presentation/screens/cinema/editMovie.dart';
import 'package:cinema_mate/presentation/screens/cinema/list_cinema.dart';
import 'package:cinema_mate/presentation/screens/common/landingPage.dart';
import 'package:cinema_mate/presentation/screens/common/registration_page.dart';
import 'package:cinema_mate/presentation/screens/common/sign_in.dart';
import 'package:cinema_mate/presentation/screens/user/cinema_description_Screen.dart';
import 'package:cinema_mate/presentation/screens/user/cinema_movies_list.dart';
import 'package:cinema_mate/presentation/screens/user/user_homepage.dart';
import 'package:cinema_mate/presentation/screens/user/user_profile.dart';
import 'package:cinema_mate/presentation/screens/user/user_watchlistpage.dart';
import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/screens/user/user_tab_bar.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/userhome': (context) => const UserHomepage(),
        '/cinemahome': (context) => const CinemaList(),
        '/userprofile': (context) => const UserProfile(),
        '/cinemaprofile': (context) => const CinemaProfile(),
        '/user': (context) => const UserTabBar(),
        '/watchlist': (context) => const UserWatchlist(),
        '/cinemsMoviesList': (context) => const CinemaMovieList(),
        '/cinemaDescription': (context) => const CinemaDescriptionScreen(
              cinemaName: 'Cinema Name',
              description: 'Description',
              imagePath: 'assets/images/cinema.jpg',
            ),
        '/bookings': (context) => const BookSeats(),
        '/addMovie': (context) => const AddMovie(),
        '/editMovie': (context) => const EditMovie(),
        '/cinemaDetail': (context) => const CinemaDetail(
            title: 'Cinema', imagePath: 'assets/images/img.jpg'),
        '/landing': (context) => const Landing(),
        '/register': (context) => const Registration(),
        '/signin': (context) => const SignIn(role: 'User'),
      },
      home: const Center(
        child: UserTabBar(),
      ),
    ),
  );
}
