import 'package:flutter/material.dart';
import 'package:portfolio_app/src/pages/home_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // Helles Thema
      darkTheme: ThemeData.dark(), // Dunkles Thema
      themeMode: _themeMode, // Setzt das aktuelle Theme
      home: HomeScreen(
        isDarkMode: _themeMode == ThemeMode.dark,
        toggleTheme: _toggleTheme,
      ),
    );
  }
}
