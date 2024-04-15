import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      required this.title,
      required this.imgpath,
      this.width = 175});
  final String title;
  final String imgpath;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          SizedBox(
            width: width,
            height: 240,
            // height: double.infinity,
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(imgpath),
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 170,
            bottom: 10,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(139, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
