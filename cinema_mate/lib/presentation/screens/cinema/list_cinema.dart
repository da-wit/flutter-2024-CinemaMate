
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/app_color.dart';
import 'cinema_details.dart';
import 'dart:ui';
import '../../widgets/tab_bar.dart';
import '../../widgets/card.dart'; // Import the Cinema_Detail page

var newColor = AppColor();


// var navBottom=CinemaBottomNavBar(selectedIndex: 3, 
// onItemSelected: (index){},);
var cards=AppCard(title: 'Movies Name',imgpath: 'assets/images/img.jpg');

class Cinema_list extends StatelessWidget {
  const Cinema_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: newColor.bg,
      child: Container(
          padding: EdgeInsets.all(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              
              InkWell(
                onTap: () {
                  return _dialogBuilder(context,'Movie','assets/images/img.jpg');
                },
                
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: cards,
                ),
              ),
              
              InkWell(
                onTap: () {
                  return _dialogBuilder(context,'Movie','assets/images/img.jpg');
                },
                
                child: Container(
                   margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: cards,
                ),
              ),
      
      
              InkWell(
                onTap: () {
                  return _dialogBuilder(context,'Movie','assets/images/img.jpg');
                },
                
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: cards,
                ),
              ),
             
              
              InkWell(
                onTap: () {
                  return _dialogBuilder(context,'Movie','assets/images/img.jpg');
                },
                
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: cards,
                ),
              ),
            ],
          ),
        ),
    );
    }
      }
    


 void  _dialogBuilder(BuildContext context, String title, String imagePath) {
    showDialog<void>(
      context: context,
      
      builder: (BuildContext context) {
        return AlertDialog(
          content: FractionallySizedBox(child: SingleChildScrollView(child: Cinema_Detail(title: title, imagePath: imagePath)),widthFactor: 1.1),
          
        );
      },
    );
    
  }
