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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Can go in!", style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700
          ),),
          Text("0", style: TextStyle(
            fontSize: 100,
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}
