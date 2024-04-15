import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:flutter/material.dart';

var newColor = AppColor();

class CinemaBottomNavBar extends StatelessWidget {
  const CinemaBottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});

  final int selectedIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 40,
                ),
                label: 'Add Movie'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  size: 40,
                ),
                label: 'Bookings'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie_creation_outlined,
                  size: 40,
                ),
                label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: onItemSelected,
          backgroundColor: newColor.primary,
          selectedItemColor: newColor.white,
        ),
      ),
    );
  }
}

class UserBottomNavBar extends StatelessWidget {
  const UserBottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});

  final int selectedIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                  size: 40,
                ),
                label: 'Watch List'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 40,
                ),
                label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: onItemSelected,
          backgroundColor: newColor.primary,
          selectedItemColor: newColor.white,
        ),
      ),
    );
  }
}
