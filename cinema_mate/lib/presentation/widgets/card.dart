import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.title,
    required this.imgpath,
    this.height = 300,
  });
  final String title;
  final String imgpath;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          SizedBox(
            height: height,
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage(imgpath),
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 40,
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(139, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
