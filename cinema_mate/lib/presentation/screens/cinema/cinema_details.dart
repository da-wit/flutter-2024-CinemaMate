import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../widgets/app_color.dart';

var newColor=AppColor();

class Cinema_Detail extends StatelessWidget {
  final String title;
  final String imagePath;
  const Cinema_Detail({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
          // margin: EdgeInsets.all(60),
          color: newColor.white,
          child: Center(
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(30),
                width: 1000,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    imagePath,
                    width: 300,
                    height: 270,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                          
                Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 20),

                Container(
                  height: 300,
                  width: 300,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                          Container(
                    decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                    height: 40,
                    width: 100,
                    child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                  ),
                   Container(
                    decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                    height: 40,
                    width: 100,
                    child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                  ),
                   Container(
                    decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                    height: 40,
                    width: 100,
                    child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                  ),
                   Container(
                    decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                    height: 40,
                    width: 100,
                    child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                  ),
                    ],
                  )
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //   Container(
                //     decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                //     height: 40,
                //     width: 100,
                //     child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                //   ),
                //    SizedBox(height: 10),
                //                   Container(
                //     decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
      
                //     height: 40,
                //     width: 100,
                //     child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                //   ),
                //    SizedBox(height: 10),
                //                   Container(
                //     decoration: BoxDecoration( color: newColor.grey,borderRadius: BorderRadius.all(Radius.circular(10))),
                //     height: 40,
                //     width: 100,
                //     child: Center(child: Text('Genre',style: TextStyle(color: Colors.white),)),
                //   ),
                  
                // ],),
              SizedBox(height: 10),
                Text('April 22,2024', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w700),),
                SizedBox(height: 10),
                Text('3:00 pm',textAlign: TextAlign.center,),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text('10/100'),
                  SizedBox(width: 30),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit_square))
                ],)
      
      
            ],),)
      ),
    );
  }
}