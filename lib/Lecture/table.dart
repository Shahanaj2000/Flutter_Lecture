import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  MyTable(),
  ));
}

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        decoration: const BoxDecoration(
          border: Border()
        ),
        columns: const [
          DataColumn(label: Text("ID"),),
          DataColumn(label: Text("Name"),),
          DataColumn(label: Text("Age"),),
        ],
        rows: const [
          DataRow(
          cells: [
            DataCell(Text("001")),
            DataCell(Text("Shahanaj")),
            DataCell(Text("22")),
          ],

        
          

          
        ) ,
        ]
      ),
    );
  }
}