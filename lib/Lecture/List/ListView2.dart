import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nov/Lecture/List/myList.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  ListPage(),
  ));
}

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          MySqare(),
          MySqare(),
          MySqare(),
          MySqare(),
        ],
      ),
    );
  }

  
}