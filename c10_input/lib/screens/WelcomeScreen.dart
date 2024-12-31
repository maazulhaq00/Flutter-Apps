import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final String email;
  const WelcomeScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome $email")),
    );
  }
}