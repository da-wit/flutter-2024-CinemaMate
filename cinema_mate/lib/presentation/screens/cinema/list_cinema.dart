import 'package:cinema_mate/presentation/screens/cinema/cinema_details.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_color.dart';
import '../../widgets/card.dart';

var newColor = AppColor();

// var navBottom=CinemaBottomNavBar(selectedIndex: 3,
// onItemSelected: (index){},);
var cards =
    const AppCard(title: 'Movies Name', imgpath: 'assets/images/img.jpg');

class CinemaList extends StatelessWidget {
  const CinemaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newColor.bg,
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        childAspectRatio: 0.75,
        children: [
          InkWell(
            onTap: () {
              return _dialogBuilder(context, 'Movie', 'assets/images/img.jpg');
            },
            child: const AppCard(
                title: "Iron man", imgpath: 'assets/images/img.jpg'),
          ),
          InkWell(
            onTap: () {
              return _dialogBuilder(context, 'Movie', 'assets/images/img.jpg');
            },
            child: const AppCard(
                title: "Iron man", imgpath: 'assets/images/img.jpg'),
          ),
          InkWell(
            onTap: () {
              return _dialogBuilder(context, 'Movie', 'assets/images/img.jpg');
            },
            child: const AppCard(
                title: "Iron man", imgpath: 'assets/images/img.jpg'),
          ),
          InkWell(
            onTap: () {
              return _dialogBuilder(context, 'Movie', 'assets/images/img.jpg');
            },
            child: const AppCard(
                title: "Iron man", imgpath: 'assets/images/img.jpg'),
          ),
        ],
      ),
    );
  }
}

void _dialogBuilder(BuildContext context, String title, String imagePath) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: FractionallySizedBox(
          widthFactor: 1.1,
          child: SingleChildScrollView(
            child: CinemaDetail(title: title, imagePath: imagePath),
          ),
        ),
      );
    },
  );
}
