import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Expanded buildKey(int noteNumber, Color color){

    return Expanded(
      child: TextButton(
              child: Text(""),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note$noteNumber.wav'));
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
            ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.purple),
          buildKey(2, Colors.indigo),
          buildKey(3, Colors.blue),
          buildKey(4, Colors.green),
          buildKey(5, Colors.yellow),
          buildKey(6, Colors.orange),
          buildKey(7, Colors.red),
        ],
      ),
    );
  }
}
