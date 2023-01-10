import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LISTVIEW(),
    )
  );
}

class LISTVIEW extends StatelessWidget {
  const LISTVIEW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST VIEW"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        cacheExtent: 300,
        addAutomaticKeepAlives: false,
        //itemExtent: 100,
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        prototypeItem: _getPrototypeItem(),
        primary: true,

        children: [
          _buildChildList(1),
          _buildChildList(2),
          _buildChildList(3),
          _buildChildList(4),
          _buildChildList(5),
          _buildChildList(6),
          _buildChildList(7),
          _buildChildList(8),
          _buildChildList(9),
          _buildChildList(10),


        ],
      ),
    );
  }

  //! 
  Widget _buildChildList (int item) {
    return Container(
      color: Colors.red,
      height: 150.6,
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text('items $item'),
      ),
    );
  }

  Widget _getPrototypeItem() {
    return const Text(
      "Hello", 
      style: TextStyle(
        fontSize: 50,
      ),
    );
  }
}