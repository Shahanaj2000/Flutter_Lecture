import 'package:flutter/material.dart';


class MySqare extends StatelessWidget {
  final String Child;
  const MySqare({super.key, required this.Child });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.indigo,
        child: Center(child: Text(Child)),
      ),
    );
  }
}
