import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp()); // Use const MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add a const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Store',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeScreen(), // Use const HomeScreen()
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
