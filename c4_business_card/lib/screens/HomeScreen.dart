// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:c4_business_card/widgets/CardBox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            // backgroundColor: Colors.blue,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          Text(
            "Maaz Ul Haq",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontFamily: 'Source Sans 3',
            ),
          ),
          SizedBox(height: 62, width: 100, child: Divider(color: Colors.white),),
          CardBox(boxIcon: Icons.phone, boxText: "0311-1234567"),
          CardBox(boxIcon: Icons.mail, boxText: "maazulhaq@gmail.com"),
          CardBox(boxIcon: Icons.home, boxText: "North Karachi"),

          ],
      ),
    );
  }
}
