import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_spot/screens/Home.dart';

import 'components/Header.dart';
import 'components/Menu.dart';
import 'screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking Spot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
