import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String stdId;
  final String name;
  final String age;

  const DisplayScreen(
      {super.key, required this.stdId, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
        Card(
          child: Center(child: Text("Std Id: $stdId")),
        ),
        SizedBox(height: 10,),
        Card(
          child: Center(child: Text("Name: $name")),
        ),
        SizedBox(height: 10,),
        Card(
          child: Center(child: Text("Age: $age")),
        ),
      ]),
    );
  }
}
