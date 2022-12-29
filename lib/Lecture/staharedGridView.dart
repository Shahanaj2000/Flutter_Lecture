import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StageredGrid extends StatelessWidget {
  const StageredGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,

        staggeredTiles: const [
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 2),

        ],

        children: [
         Customchild(iconData: Icons.add, bgcolor: Colors.green,),
         Customchild(iconData: Icons.access_alarm, bgcolor: Colors.cyan,),
         Customchild(iconData: Icons.delete, bgcolor: Colors.red,),
         Customchild(iconData: Icons.abc_sharp, bgcolor: Colors.amber,),
         Customchild(iconData: Icons.accessibility_new_rounded, bgcolor: Colors.black,),
         Customchild(iconData: Icons.access_time_filled, bgcolor: Colors.blue,),
         Customchild(iconData: Icons.abc_rounded, bgcolor: Colors.purple,),
         Customchild(iconData: Icons.add_circle, bgcolor: Colors.yellow,),

        ],
      ),
    );
  }
}

//! Custom Widget
class Customchild extends StatelessWidget {
  //
  final Color? bgcolor;
  final IconData iconData;

  Customchild({
    this.bgcolor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(iconData,color: Colors.white,),
    );
  }
}