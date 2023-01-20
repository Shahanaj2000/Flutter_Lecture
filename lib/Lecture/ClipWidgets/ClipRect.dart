import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CLIPRECT(),
  ));
}

class CLIPRECT extends StatelessWidget {
  const CLIPRECT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CLIPRECT"),
      ),
      body: Center(
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: Container(
            child:  Align(
              alignment: Alignment.center,
              widthFactor: 150,
              heightFactor: 100,
              child: Image.network( 'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'),
            ),
          ),
        ),
      ),
    );
  }
}