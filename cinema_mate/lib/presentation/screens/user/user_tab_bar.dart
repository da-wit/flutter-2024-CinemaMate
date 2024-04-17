import 'package:cinema_mate/presentation/screens/user/user_watchlistpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cinema_mate/presentation/screens/user/user_homepage.dart';
import 'package:cinema_mate/presentation/screens/user/user_profile.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/tab_bar.dart';

final newColor = AppColor();

class UserTabBar extends StatefulWidget {
  const UserTabBar({super.key});

  @override
  State<StatefulWidget> createState() => _UserTabBarState();
}

class _UserTabBarState extends State<UserTabBar> {
  int _selectedPageIndex = 0;
  Widget _selectedScreen = const UserHomepage();

  void _selectPage(index) {
    setState(() {
      _selectedPageIndex = index;
    });
    _changeScreen(index);
  }

  void _changeScreen(index) {
    setState(() {
      if (index == 0) {
        _selectedScreen = const UserHomepage();
      } else if (index == 1) {
        _selectedScreen = const UserWatchlist();
      } else if (index == 2) {
        _selectedScreen = const UserProfile();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'CinemaMate',
          style: GoogleFonts.josefinSans(
            color: newColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: newColor.bg,
      ),
      backgroundColor: newColor.bg,
      body: _selectedScreen,
      bottomNavigationBar: UserBottomNavBar(
        selectedIndex: _selectedPageIndex,
        onTap: (index) {
          _selectPage(index);
        },
      ),
    );
  }
}
