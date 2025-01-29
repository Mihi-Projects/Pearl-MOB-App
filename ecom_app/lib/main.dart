import 'package:flutter/material.dart';
import 'package:ecom_app/screens/login_page.dart'; // Adjust the import based on your project structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pearl & Prestige',
      theme: ThemeData(
        fontFamily: 'Roboto', // Apply Roboto globally
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto', // Explicitly set for app bar title
          ),
        ),
        scaffoldBackgroundColor: Colors.grey[50],
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrange[800],
          unselectedItemColor: Colors.grey[600],
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
          // Customize other text styles as needed
        ),
      ),
      darkTheme: ThemeData(
        fontFamily: 'Roboto', // Ensure Roboto is applied in dark mode too
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto', // Explicitly set for app bar title
          ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.deepOrange[800],
          unselectedItemColor: Colors.white70,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
          // Customize other text styles as needed
        ),
      ),
      themeMode:
          ThemeMode.system, // Automatically switch based on system settings
      home: const LoginPage(), // Set initial screen
      debugShowCheckedModeBanner: false, // Hide debug banner
    );
  }
}
