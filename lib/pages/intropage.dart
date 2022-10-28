import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4695B6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Hello!',
              style: TextStyle(
                fontSize: 60,
                color: Color(0xffFCFAE3),
              ),
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 60,
                color: Color(0xffFCFAE3),
              ),
            ),
            Text(
              'FRIENDLY',
              style: TextStyle(
                fontSize: 60,
                color: Color(0xffFCFAE3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
