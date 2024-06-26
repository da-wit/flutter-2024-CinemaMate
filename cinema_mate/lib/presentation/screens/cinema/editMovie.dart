import 'package:cinema_mate/presentation/widgets/genre_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';
import 'package:cinema_mate/presentation/widgets/time_selector.dart';

var newColor = AppColor();

class EditMovie extends StatefulWidget {
  const EditMovie({super.key});

  @override
  State<EditMovie> createState() => _EditMovieState();
}

class _EditMovieState extends State<EditMovie> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        iconTheme: IconThemeData(color: newColor.white),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text('Edit Movie', style: TextStyle(color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                const Field(
                  title: 'Movie Title',
                  ishash: false,
                  keyboard: TextInputType.text,
                  height: 100,
                  width: 350,
                  length: 20,
                  numberOfLines: 1,
                  textColor: Colors.white,
                ),
                const Field(
                  title: 'Number Of Seats',
                  ishash: false,
                  keyboard: TextInputType.number,
                  height: 100,
                  width: 350,
                  length: 20,
                  numberOfLines: 1,
                  textColor: Colors.white,
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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
                                  content:
                                      ShowTimePicker(onTimeSelected: (c) {}),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                AppButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  title: 'Update',
                  width: 200,
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
