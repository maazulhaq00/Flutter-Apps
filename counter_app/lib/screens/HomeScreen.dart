import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  void inc() {
    setState(() {
      count++;
    });
  }

  void dec() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Count: $count"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  inc();
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  dec();
                },
                icon: Icon(Icons.remove))
          ],
        )
      ]),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              inc();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              dec();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
