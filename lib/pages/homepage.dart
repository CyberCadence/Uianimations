import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
    double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = 1.0;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: SafeArea(
        child: Center(
            child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 1),
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
        )),
      ),
    );
  }
}
