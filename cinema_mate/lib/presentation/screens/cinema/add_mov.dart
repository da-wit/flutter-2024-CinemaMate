import 'package:cinema_mate/presentation/screens/cinema/util.dart';
import 'package:cinema_mate/presentation/widgets/genre_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cinema_mate/presentation/widgets/time_selector.dart';
import '../../widgets/field.dart';
import '../../widgets/app_color.dart';
import '../../widgets/tab_bar.dart';
import '../../widgets/buttons.dart';
import 'dart:typed_data';
import 'package:google_fonts/google_fonts.dart';

var button = AppButton(title: 'Add', width: 150, onPressed: () {});
var navBottom = CinemaBottomNavBar(
  selectedIndex: 0,
  onItemSelected: (index) {},
);
var add = const Field(title: 'Title');
var newColor = AppColor();

class AddMovie extends StatefulWidget {
  const AddMovie({super.key});

  @override
  State<AddMovie> createState() => _AddMovieState();
}

class _AddMovieState extends State<AddMovie> {
  Uint8List? _image;
  void _presentDatePicker() async {
    final now = DateTime.now();
    final lastDate = DateTime(now.year, now.month + 1, now.day);

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: lastDate,
    );

    setState(() {});
  }

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newColor.bg,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 65,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : const CircleAvatar(
                              radius: 65,
                              backgroundImage: NetworkImage(
                                  'https://th.bing.com/th?id=OIP.oiWZsE1r1LiAJGH5JOHN6AHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
                            ),
                      Positioned(
                        bottom: -4,
                        left: 80,
                        child: IconButton(
                          onPressed: selectImage,
                          icon: Icon(
                            Icons.add_a_photo,
                            color: newColor.primary,
                          ),
                        ),
                      )
                    ],
                  )),
              const Field(
                title: 'Title',
              ),
              const Field(
                title: 'Number of Seats',
                keyboard: TextInputType.number,
              ),
              const SizedBox(width: 350, height: 70, child: GenrePicker()),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Column(
                        children: [
                          Text('Pick a date',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text(
                            'DD/MM/YY',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.black,
                        child: IconButton(
                          icon: const Icon(Icons.calendar_month,
                              size: 30, color: Colors.red),
                          onPressed: _presentDatePicker,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: [
                      const Text('Pick a time',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text('00:00', style: TextStyle(color: newColor.white))
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.black,
                    child: IconButton(
                      icon: const Icon(Icons.watch_later,
                          size: 30, color: Colors.red),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: ShowTimePicker(onTimeSelected: (c) {}),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
