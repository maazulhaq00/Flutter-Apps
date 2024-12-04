// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                "This is my search screen",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      );
  }
}