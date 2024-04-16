import 'package:cinema_mate/presentation/screens/user/user_homepage.dart';
import 'package:flutter/material.dart';

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
  Widget _selectedScreen = Container();

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
      } else if (index == 2) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CinemaMate',
          style: TextStyle(
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
