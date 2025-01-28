import 'package:ecom_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the HomeScreen if needed

void main() {
  runApp(const MyApp()); // Use const MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add a const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pearl & Prestige',
      theme: ThemeData(
        brightness: Brightness.light, // Light theme
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: Colors.grey[50],
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrange[800],
          unselectedItemColor: Colors.grey[600],
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Dark theme
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepOrange[800],
          unselectedItemColor: Colors.white70,
        ),
      ),
      themeMode: ThemeMode
          .system, // Automatically adjust theme based on system settings (light or dark)
      home: const LoginPage(), // Your initial page
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
