// ignore_for_file: prefer_const_constructors

import 'package:c9_quizzler/screens/HomeScreen.dart';
import 'package:c9_quizzler/screens/ScoreScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}