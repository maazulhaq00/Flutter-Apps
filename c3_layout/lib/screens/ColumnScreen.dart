// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Text(
            'Container 01',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blueAccent.shade200,
        ),
        Container(
          width: 100,
          height: 100,
          child: Text(
            'Container 02',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.purple.shade200,
        ),
        Container(
          width: 100,
          height: 100,
          child: Text(
            'Container 03',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.orange.shade200,
        )
      ],
    ));
  }
}
