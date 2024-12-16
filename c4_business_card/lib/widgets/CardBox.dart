import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final IconData boxIcon;
  final String boxText;
  
  const CardBox({super.key, required this.boxIcon, required this.boxText});

  @override
  Widget build(BuildContext context) {
    return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListTile(
                leading: Icon(
                  this.boxIcon,
                  color: Colors.black,
                ),
                title: Text(
                  this.boxText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Source Sans 3',
                  ),
                ),
                // subtitle: Text("This is sub title"),
                // trailing: Icon(Icons.more_vert),
              )
            ),
          );
  }
}

// Row(children: [
//                 Icon(
//                   this.boxIcon,
//                   color: Colors.black,
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   this.boxText,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontFamily: 'Source Sans 3',
//                   ),
//                 )
//               ]),