import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:cinema_mate/presentation/widgets/field.dart';
import 'package:cinema_mate/presentation/widgets/buttons.dart';

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
                  SizedBox(
                    height: 20,
                  ),
                  Text('Edit Movie', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Field(
                    title: 'Movie Title',
                    ishash: false,
                    keyboard: TextInputType.text,
                    height: 100,
                    width: 350,
                    length: 20,
                    numberOfLines: 1,
                    textColor: Colors.white,
                  ),
                  Field(
                    title: 'Genre',
                    ishash: false,
                    keyboard: TextInputType.text,
                    height: 100,
                    width: 350,
                    length: 20,
                    numberOfLines: 1,
                    textColor: Colors.white,
                  ),
                  Field(
                    title: 'Number Of Seats',
                    ishash: false,
                    keyboard: TextInputType.text,
                    height: 100,
                    width: 350,
                    length: 20,
                    numberOfLines: 1,
                    textColor: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Column(children: [
                          Text('Pick a date',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text('DD/MM/YY',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ]),
                        Container(
                          width: 70,
                          height: 70,
                          color: Colors.black,
                          child: IconButton(
                            icon: Icon(Icons.calendar_month,
                                size: 30, color: Colors.red),
                            onPressed: _presentDatePicker,
                          ),
                        )
                      ]),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text('Pick a time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AppButton(
                    onPressed: () {},
                    title: 'Update',
                    width: 200,
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
