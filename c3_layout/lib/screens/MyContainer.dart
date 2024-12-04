import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 100,
        // margin: EdgeInsets.all(10),
        // margin: EdgeInsets.fromLTRB(20, 40, 80, 70),
        // margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        margin: EdgeInsets.only(left: 30),
        padding: EdgeInsets.fromLTRB(20, 40, 10, 10),
        color: Colors.deepPurple.shade400,
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
