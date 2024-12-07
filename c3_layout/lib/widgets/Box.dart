import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color bgColor;
  final String text;

  const Box({super.key, required this.bgColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height / 7,
          width: MediaQuery.of(context).size.width,
          color: this.bgColor,
          child: Center(
            child: Text(
              this.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        );
  }
}