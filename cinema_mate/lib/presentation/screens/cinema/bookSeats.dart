import 'package:cinema_mate/presentation/screens/cinema/cinemaProfile.dart';
import 'package:cinema_mate/presentation/screens/cinema/editMovie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/list_items.dart';

var newColor = AppColor();

class BookSeats extends StatefulWidget {
  const BookSeats({super.key});
  @override
  State<StatefulWidget> createState() => _BookSeatsState();
}

class _BookSeatsState extends State<BookSeats> {
  int _selectedPageIndex = 0;
  Widget _selectedScreen = const BookSeats();

  void _selectPage(index) {
    setState(() {
      _selectedPageIndex = index;
    });
    _changeScreen(index);
  }

  void _changeScreen(index) {
    setState(() {
      if (index == 0) {
        _selectedScreen = const BookSeats();
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
    var scaffold = Scaffold(
      backgroundColor: newColor.bg,
      appBar: AppBar(
        backgroundColor: newColor.bg,
        title: Text(
          'CinemaMate',
          style: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                  color: newColor.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Booked Seats',
                style: TextStyle(color: newColor.white, fontSize: 20)),
            const SizedBox(height: 20),
            const ListItem(
                title: 'Movie Name',
                subtitle: 'User name',
                date: '21/21/24',
                time: '03:00',
                imagePath: 'assets/images/img.jpg'),
            const SizedBox(height: 20),
            const ListItem(
                title: 'Movie Name',
                subtitle: 'User name',
                date: '21/21/24',
                time: '03:00',
                imagePath: 'assets/images/img.jpg'),
            const SizedBox(height: 20),
            const ListItem(
                title: 'Movie Name',
                subtitle: 'User name',
                date: '21/21/24',
                time: '03:00',
                imagePath: 'assets/images/img.jpg')
          ],
        ),
      ),

      // bottomNavigationBar: CinemaBottomNavBar(
      //   selectedIndex: _selectedPageIndex,
      //   onItemSelected: _selectPage,
      // ),
    );
    return scaffold;
  }
}
