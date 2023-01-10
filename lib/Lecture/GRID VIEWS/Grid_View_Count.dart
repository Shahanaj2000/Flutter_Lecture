import 'package:flutter/material.dart';

class GRIDVIEWCOUNT extends StatelessWidget {
  const GRIDVIEWCOUNT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID VIEW COUNT"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
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
          _buildGridItem(19),
          _buildGridItem(20),
        ],
      ),
    );
  }

  //! Wiggets
  Widget _buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(10)),
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
