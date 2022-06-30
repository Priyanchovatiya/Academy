import 'package:academy/Screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'Screens/Coaches.dart';
import 'Screens/Notifications.dart';
import 'Screens/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Page1(),
    );
  }
}


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  var currentIndex = 0;
  final Screen = [
    HomePage(),
    Coaches(),
    Noti(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),


        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined),
            label: 'Dashboard',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sports),
            label: 'Coaching Staff',
            backgroundColor: Colors.black,

          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? const Icon(
              Icons.notifications,
              color: Colors.black,
            )
                : const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
            label: 'Notification',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? const Icon(Icons.person_rounded)
                : const Icon(Icons.person_outline_rounded),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Screen[currentIndex],
    );
  }
}

