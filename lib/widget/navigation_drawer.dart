import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_mgmt/page/homepage.dart';
import 'package:sub_mgmt/page/members_page.dart';
import 'package:sub_mgmt/page/notifs_page.dart';
import 'package:sub_mgmt/page/profile_page.dart';

// Drawer to see profile

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 0);

  @override
  Widget build(BuildContext context) {
    final name = "Yes Sir";
    final email = "yessir@mess.com";
    final urlImage =
        "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80";

    return Drawer(
      child: Material(
        color: Colors.black12,
        child: ListView(padding: padding, children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,
            onClicked: () => {}
          ),
          SizedBox(height: 48),
          Builder(builder: (context) {
            return buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            );
          }),
          Builder(builder: (context) {
            return buildMenuItem(
              text: 'Member List',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 1),
            );
          }),
          Builder(builder: (context) {
            return buildMenuItem(
              text: 'Notifications',
              icon: Icons.add,
              onClicked: () => selectedItem(context, 2),
            );
          }),
          Builder(builder: (context) {
            return buildMenuItem(
              text: 'Profile',
              icon: Icons.person,
              onClicked: () => selectedItem(context, 3),
            );
          }),
        ]),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
          onTap: onClicked,
          child: Container(
              padding: padding.add(EdgeInsets.symmetric(vertical: 80, horizontal: 20)),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 52,
                      backgroundImage: NetworkImage(urlImage),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        email,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
          ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.black87;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color, fontSize: 20)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MembersPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotifsPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
        break;
    }
  }
}
