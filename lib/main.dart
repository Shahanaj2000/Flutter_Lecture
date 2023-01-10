import 'package:flutter/material.dart';
import 'package:nov/Lecture/Carousel_slider.dart';
import 'package:nov/Lecture/Grid/GridView.dart';
import 'package:nov/Lecture/Grid/Grid_View_Builder.dart';
import 'package:nov/Lecture/Grid/Grid_View_Count.dart';
import 'package:nov/Lecture/Grid/Grid_View_Custom.dart';
import 'package:nov/Lecture/Grid/Grid_View_Extend.dart';
import 'package:nov/Lecture/staharedGridView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const GRIDVIEWCUSTOM(),
    );
  }
}

