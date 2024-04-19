import 'package:flutter/material.dart';
import '../../widgets/app_color.dart';

var newColor = AppColor();

class CinemaDetail extends StatelessWidget {
  final String title;
  final String imagePath;
  const CinemaDetail({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        // margin: EdgeInsets.all(60),
        color: newColor.white,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
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
              Text(
                title,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 300,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: newColor.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 100,
                      child: const Center(
                        child: Text(
                          'Genre',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: newColor.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 100,
                      child: const Center(
                        child: Text(
                          'Genre',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: newColor.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 100,
                      child: const Center(
                        child: Text(
                          'Genre',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: newColor.grey,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 100,
                      child: const Center(
                        child: Text(
                          'Genre',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'April 22,2024',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              const Text(
                '3:00 pm',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('10/100'),
                  const SizedBox(width: 30),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit_square))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
