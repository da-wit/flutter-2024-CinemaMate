import 'package:cinema_mate/presentation/widgets/app_color.dart';
import 'package:flutter/material.dart';

import 'package:transparent_image/transparent_image.dart';

var bg = AppColor();

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
          Positioned(
            left: 4,
            right: 4,
            bottom: 8,
            child: Container(
              // height: 50,
              // margin: const EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: bg.opblack,
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(10, 10))),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: bg.grey, fontSize: 20),
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
