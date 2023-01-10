import 'package:flutter/material.dart';
import 'package:nov/Lecture/List/MyListBuilders.dart';
import 'package:nov/Lecture/List/my_insta_circles.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewSeperator(),
  ));
}

class ListViewSeperator extends StatelessWidget {
  //const ListViewSeperator({super.key});

  final List posts = [
    "POST 1",
    "POST 2",
    "POST 3",
  ];

  final List stories = [
    "Stories 1",
    "Stories 2",
    "Stories 3",
    "Stories 4",
    "Stories 5",
    "Stories 6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //! instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCircle(child: stories[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return MySqare(Child: posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
