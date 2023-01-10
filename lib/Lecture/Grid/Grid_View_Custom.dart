import 'package:flutter/material.dart';

class GRIDVIEWCUSTOM extends StatelessWidget {
  const GRIDVIEWCUSTOM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GRID VIEW CUSTOM"),
        centerTitle: true,
      ),
      body: _buildCustomGridView(),
    );
  }

  //! 
  Widget _buildCustomGridView() {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildGridItem(index); 
        },
        childCount: 30
      ),
      
    );
  }

   //! Wiggets
  Widget _buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Text(
          '$index',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}