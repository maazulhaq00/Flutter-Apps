// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text(
//           "Hello World",
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text("Hello 2302F1"),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: Center(
          child: Text("We Are Learning Flutter"),
        ),
      ),
    ),
  );
}
