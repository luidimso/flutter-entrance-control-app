import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/wallpaper.webp"),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Can go in!",
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                count.toString(),
                style: const TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      )
                  ),
                  child: const Text(
                    "Got out",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),),
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)
                        )
                    ),
                    child: const Text(
                      "Got in",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
