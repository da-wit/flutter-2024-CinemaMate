import 'package:cinema_mate/presentation/screens/cinema/bookSeats.dart';
import 'package:cinema_mate/presentation/screens/cinema/cinemaProfile.dart';
import 'package:cinema_mate/presentation/screens/cinema/editMovie.dart';
import 'package:flutter/material.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/tab_bar.dart';

final newColor = AppColor();

class CinemaTabBar extends StatefulWidget {
  const CinemaTabBar({super.key});

  @override
  State<StatefulWidget> createState() => _CinemaTabBarState();
}

class _CinemaTabBarState extends State<CinemaTabBar> {
  int _selectedPageIndex = 0;
  Widget _selectedScreen = const CinemaProfile();

  void _selectPage(index) {
    setState(() {
      _selectedPageIndex = index;
    });
    _changeScreen(index);
  }

  void _changeScreen(index) {
    setState(() {
      if (index == 0) {
        _selectedScreen = const CinemaProfile();
      } else if (index == 1) {
        _selectedScreen = const EditMovie();
      } else if (index == 2) {
        _selectedScreen = const BookSeats();
      } else if (index == 3) {
        _selectedScreen = const CinemaProfile();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // appBar: AppBar(
      //   title: Text(
      //     'CinemaMate',
      //     style: GoogleFonts.josefinSans(
      //       color: newColor.white,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 30,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: newColor.bg,
      // ),
      backgroundColor: newColor.bg,
      body: _selectedScreen,
      bottomNavigationBar: CinemaBottomNavBar(
        selectedIndex: _selectedPageIndex,
        onItemSelected: (index) {
          _selectPage(index);
        },
      ),
    );
  }
}
