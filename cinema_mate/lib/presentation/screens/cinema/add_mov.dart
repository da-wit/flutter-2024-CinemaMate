import 'package:cinema_mate/presentation/screens/cinema/util.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/field.dart';
import '../../widgets/app_color.dart';
import '../../widgets/tab_bar.dart';
import '../../widgets/buttons.dart';
import './util.dart';
import 'dart:typed_data';


var button=AppButton(title: 'Add', width: 150, onPressed: (){});
var navBottom=CinemaBottomNavBar(selectedIndex: 0, 
onItemSelected: (index){},);
var add=Field(title: 'Title');
var newColor=AppColor();


class Add_Movie extends StatefulWidget {
  const Add_Movie({super.key});

  @override
  State<Add_Movie> createState() => _Add_MovieState();
}

class _Add_MovieState extends State<Add_Movie> {
  Uint8List? _image;

  void selectImage() async{
    Uint8List img=await pickImage(ImageSource.gallery);
    setState(() {
      _image=img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: newColor.bg,
      child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Stack(children: [
                    _image!=null?
                    CircleAvatar(
                      radius: 65, 
                      backgroundImage: MemoryImage(_image!),
                    ):
                    CircleAvatar(   
                    radius: 65,
                    backgroundImage: NetworkImage('https://th.bing.com/th?id=OIP.oiWZsE1r1LiAJGH5JOHN6AHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
                   
                  
                  ),
                  Positioned(child: IconButton(onPressed:selectImage,
                  icon: Icon(Icons.add_a_photo, color: newColor.primary,),
                  ),
                  bottom: -4,
                  left: 80,
                  )
                  ],)


                ),
          
                Container(
                  child: Field(title: 'Title',),
                ),
                Container(
                  child: Field(title: 'Genre',),
                ),
                Container(
                  child: Field(title: 'Show Time',),
                ),
                Container(
                  child: Field(title: 'Show Date',),
                ),
                Container(
                  child: Field(title: 'Number of Seats',),
                ),
                button
              ],
            ),
            
          ),
        ),
    );
    


  }
}

