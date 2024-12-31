import 'package:c10_bmi_calculator_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0D22)),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
