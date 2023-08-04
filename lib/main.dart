import 'package:flutter/material.dart';
import 'pages/getstartedpage.dart';
import 'pages/home.dart';
import 'pages/registration.dart';
import 'pages/number.dart';
import 'pages/createnew.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Circular Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CreateNew(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
