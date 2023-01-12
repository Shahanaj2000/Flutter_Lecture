import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov/Lecture/NavDrawer/Events.dart';
import 'package:nov/Lecture/NavDrawer/HomePage.dart';
import 'package:nov/Lecture/NavDrawer/Notification.dart';
import 'package:nov/Lecture/NavDrawer/ProfilePage.dart';
import 'package:nov/Lecture/NavDrawer/Supports.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    home: const NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DRAWER")
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: ListView(
            children:  [
              UserAccountsDrawerHeader(
                accountName:  const Text("Shahanajshanu"),
                accountEmail: const Text("shahanajmt@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print('Current Profile');
                  },
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/04/23/59/74/1000_F_423597477_AKCjGMtevfCi9XJG0M8jter97kG466y7.jpg"),
                  ),
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/04/91/76/46/1000_F_491764612_fXhBdvCCWCI8iMZH3dAsE261z3K9T0zn.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/01/95/49/08/1000_F_195490836_R5K1szbYg2iLIZhyKp9zXGFhYfqrcWJu.jpg"),
                  )
                ],
                decoration: const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/2/22/London_Eye_-_tunliweb.no.JPG"))
                ),
              ),
              //! Lists
               ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  //Navigator.popAndPushNamed(context, MaterialPageRoute(builder: builder))
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UhomePage()));
                  //Get.to(const UhomePage());
                },
              ),
      
               ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
              ),
      
               ListTile(
                leading: Icon(Icons.date_range_outlined),
                title: Text("Events"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EventsPage()));
                },
              ),
              const Divider(
                thickness: 2,
              ),
              
      
               ListTile(
                leading: Icon(Icons.support),
                title: Text("Support"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportPage()));
                },
                
              ),
      
               ListTile(
                leading: Icon(Icons.notification_add_outlined),
                title: Text("Notification"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage()));
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}