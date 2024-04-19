import 'package:cinema_mate/presentation/screens/user/cinema_description_Screen.dart';
import 'package:flutter/material.dart';

import 'package:cinema_mate/presentation/widgets/card.dart';

class UserHomepage extends StatelessWidget {
  const UserHomepage({super.key});

  void _toCinemaPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) {
        return const CinemaDescriptionScreen(
          cinemaName: 'Cinema Name',
          description: 'Description',
          imagePath: 'assets/images/cinema.jpg',
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      childAspectRatio: 0.75,
      children: [
        InkWell(
          child: const AppCard(
            title: 'Cinema Name',
            imgpath: 'assets/images/porsche.jpg',
          ),
          onTap: () {
            _toCinemaPage(context);
          },
        ),
        InkWell(
          child: const AppCard(
            title: 'Cinema Name',
            imgpath: 'assets/images/porsche.jpg',
          ),
          onTap: () {
            _toCinemaPage(context);
          },
        ),
        InkWell(
          child: const AppCard(
            title: 'Cinema Name',
            imgpath: 'assets/images/porsche.jpg',
          ),
          onTap: () {
            _toCinemaPage(context);
          },
        ),
        InkWell(
          child: const AppCard(
            title: 'Cinema Name',
            imgpath: 'assets/images/porsche.jpg',
          ),
          onTap: () {
            _toCinemaPage(context);
          },
        ),
      ],
    );
  }
}
