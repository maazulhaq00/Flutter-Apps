// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:c3_layout/widgets/Box.dart';
import 'package:flutter/material.dart';

class RainbowScreen extends StatelessWidget {
  const RainbowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Box(bgColor: Colors.purple, text: "V",),
        // SizedBox(height: 10,),
        Box(bgColor: Colors.indigo, text: "I"),
        Box(bgColor: Colors.blue, text: "B"),
        Box(bgColor: Colors.green, text: "G"),
        Box(bgColor: Colors.yellow, text: "Y"),
        Box(bgColor: Colors.orange, text: "O"),
        Box(bgColor: Colors.red, text: "R")
        
      ]),
    );
  }
}
