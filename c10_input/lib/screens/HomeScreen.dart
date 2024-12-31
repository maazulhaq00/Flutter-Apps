// ignore_for_file: prefer_const_constructors

import 'package:c10_input/screens/DisplayScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final stdIdController = TextEditingController();
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  String textString = '';

  void handleSubmit() {
    // setState(() {
    //   textString = "StudentId: ${stdIdController.text}\nName: ${nameController.text}\nAge: ${ageController.text} ";
    // });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DisplayScreen(
            stdId: stdIdController.text,
            name: nameController.text,
            age: ageController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: stdIdController,
            decoration: InputDecoration(
              labelText: 'Student ID',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Full Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: ageController,
            decoration: InputDecoration(
              labelText: 'Age',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        OutlinedButton(onPressed: handleSubmit, child: Text('Submit')),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(textString),
        )
      ]),
    );
  }
}
