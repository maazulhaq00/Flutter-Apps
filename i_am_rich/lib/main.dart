// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           title: Center(
//             child: Text("I Am Rich"),
//           ),
//           backgroundColor: Colors.blueGrey.shade900,
//         ),
//         body: Center(
//           child: Image(
//             // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s"),
//             image: AssetImage("images/diamond.png"),
//           ),
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout"),
          backgroundColor: Colors.black,
        ),

        body: Container(
          color: Colors.amber,
        ),
      ),
    ),
  );
}
