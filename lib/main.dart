import 'package:flutter/material.dart';
import 'screens/top_screen.dart';



void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "airbnb",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: TopScreen(),
    );
  }
}