import 'package:cinema_mate/presentation/widgets/list_items.dart';
import 'package:flutter/material.dart';

class UserWatchlist extends StatelessWidget {
  const UserWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 10, right: 30),
            child: Dismissible(
              key: Key(index.toString()),
              onDismissed: (direction) {
                // Handle item dismissal here
                return;
              },
              background: Container(
                color: newColor.error,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.highlight_remove,
                  size: 40,
                ),
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
