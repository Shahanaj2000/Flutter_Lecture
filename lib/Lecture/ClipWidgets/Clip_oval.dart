import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CLIPOVAL(),
  ));
}

class CLIPOVAL extends StatelessWidget {
  const CLIPOVAL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CLIPRECT"),
      ),
      body: Center(
        child: ClipOval(
          //borderRadius: BorderRadius.circular(300),
          child: Image.network(
              'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'),
        ),
      ),
    );
  }
}
