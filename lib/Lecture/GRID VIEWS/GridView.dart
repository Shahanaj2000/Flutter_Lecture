import 'package:flutter/material.dart';

class GRIDVIEW extends StatelessWidget {
  const GRIDVIEW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GIDVIEW"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [

          _buildGridItem(1),
          _buildGridItem(2),
          _buildGridItem(3),
          _buildGridItem(4),
          _buildGridItem(5),
          _buildGridItem(6),
          _buildGridItem(7),
          _buildGridItem(8),
          _buildGridItem(9),
          _buildGridItem(10),
          _buildGridItem(11),
          _buildGridItem(12),
          _buildGridItem(13),
          _buildGridItem(14),
          _buildGridItem(15),
          _buildGridItem(16),
          _buildGridItem(17),
          _buildGridItem(18),
          _buildGridItem(19)
          ,_buildGridItem(20),
        ],
      ),
    );
  }
  //! Wiggets
  Widget _buildGridItem(int index) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: Text(
        '$index',
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}