import 'package:flutter/material.dart';
import 'package:internship/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship_Project',
      theme: ThemeData(
        primaryColor: Colors.teal[700],
      ),
      home: const HomePage(),
    );
  }
}
