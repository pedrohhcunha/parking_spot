import 'package:flutter/material.dart';
import 'package:parking_spot/screens/Create.dart';
import 'package:parking_spot/screens/Details.dart';
import 'package:parking_spot/screens/Edit.dart';
import '../screens/Home.dart';
// Pages: Home, Edit, Details, Create

// Create a menu header with profile infos

Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pedro Cunha"),
              accountEmail: Text("pedrohhcunha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "PC",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              title: Text("Edit"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Edit()),
                );
              },
            ),
            ListTile(
              title: Text("Details"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details()),
                );
              },
            ),
            ListTile(
              title: Text("Create"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Create()),
                );
              },
            ),
          ]
      )
  );
}
