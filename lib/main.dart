

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_mgmt/page/homepage.dart';
import 'package:sub_mgmt/page/members_page.dart';
import 'package:sub_mgmt/page/notifs_page.dart';
import 'package:sub_mgmt/page/profile_page.dart';
import 'package:sub_mgmt/splashScreen.dart';
import 'package:sub_mgmt/widget/navigation_drawer.dart';
// This is main.dart file
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),//splash screen page
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
  ));
}


class myApp extends StatefulWidget {
  myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => MainPage();
}

class MainPage extends State<myApp> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    MembersPage(),
    NotifsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: NavigationDrawerWidget(),
        body: screens[currentIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          // showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Members',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
          ],
        ),

    );
  }
}
