// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiceRow extends StatefulWidget {
  const DiceRow({super.key});

  @override
  State<DiceRow> createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextButton(
            child: Image(
              image: AssetImage('images/dice1.png'),
              // width: 200,
            ),
            onPressed: () {
              print("dice 1 pressed");
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            child: Image(
              image: AssetImage('images/dice5.png'),
              // width: 200,
            ),
            onPressed: () {
              print("dice 2 pressed");
            },
          ),
        )
      ],
    );
  }
}
