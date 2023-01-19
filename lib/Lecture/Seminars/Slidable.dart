import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  MySlide(),
  ));
}

// final List details = [
//   { "name": "Muhammed Shahanaj", ""}
// ];

class MySlide extends StatefulWidget {
  const MySlide({super.key});

  

  @override
  State<MySlide> createState() => _MySlideState();
}

class _MySlideState extends State<MySlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              color: Colors.grey[200],
              child:  Slidable(
                startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context) {
                      
                      print("Calling");
                      //Call No.
                    }),
                    flex: 2,
                    icon: Icons.phone,
                    backgroundColor: Colors.green,
                    ),

                    SlidableAction(onPressed: ((context) {
                      print("Messaging");
                      //Call No.
                    }),
                    flex: 1,
                    icon: Icons.chat,
                    backgroundColor: Colors.blue,
                    ),
                  ],
                ),

                //! End Action Pane
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(onPressed: ((context) {
                      print("Deleting");
                      //Call No.
                    }),
                    flex: 4,
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                    ),

                    
                  ],
                ),
                child:  const ListTile(
                  leading:  Icon(Icons.person),
                  title: Text("Muhammed Shahanaj"),
                  subtitle: Text("9061252930")
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}