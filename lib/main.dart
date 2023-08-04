import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print("Got out");
  }

  void increment() {
    print("Got in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Can go in!", style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700
          ),),
          const Text("0", style: TextStyle(
            fontSize: 100,
            color: Colors.white
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement, child: const Text("Got out", style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),)),
              TextButton(onPressed: increment, child: const Text("Got in", style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),))
            ],
          )
        ],
      ),
    );
  }
}
