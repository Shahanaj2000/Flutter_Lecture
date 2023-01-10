import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GRIDVIEWBUILDER extends StatelessWidget {
  const GRIDVIEWBUILDER({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID VIEW BUILDER"),
        centerTitle: true,
      ),
      body: GridView.builder(
        cacheExtent: 500,
        scrollDirection: Axis.horizontal,
        primary: true,
        reverse: true,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        addAutomaticKeepAlives: true,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //mainAxisSpacing: 8,
            //crossAxisSpacing: 8,
          ),
          itemBuilder: (BuildContext context, int index) {
            return _buildGridItem(index);
          },
          itemCount: 30,
        ),
    );
  }

   //! Wiggets
  Widget _buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Text(
          '$index',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

