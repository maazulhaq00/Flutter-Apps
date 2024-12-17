// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

class DiceRow extends StatefulWidget {
  const DiceRow({super.key});

  @override
  State<DiceRow> createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 3;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextButton(
            child: Image(
              image: AssetImage('images/dice$leftDiceNumber.png'),
              // width: 200,
            ),
            onPressed: () {
              changeDiceFace();
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            child: Image(
              image: AssetImage('images/dice$rightDiceNumber.png'),
              // width: 200,
            ),
            onPressed: () {
              changeDiceFace();
            },
          ),
        )
      ],
    );
  }
}
