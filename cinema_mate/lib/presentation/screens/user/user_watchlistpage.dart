import 'package:cinema_mate/presentation/widgets/list_items.dart';
import 'package:flutter/material.dart';

class UserWatchlist extends StatelessWidget {
  const UserWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(20),
            child: Dismissible(
              key: Key(index.toString()),
              onDismissed: (direction) {
                // Handle item dismissal here
                return;
              },
              background: Container(
                color: const Color.fromARGB(179, 255, 21, 4),
                alignment: Alignment.centerRight,
                child: const Icon(Icons.delete_forever),
              ),
              child: const ListItem(
                  title: "iron man",
                  subtitle: "subtitle",
                  date: "22/22/22",
                  time: "09:45",
                  imagePath: "assets/images/img.jpg"),
            ),
          );
        });
  }
}
