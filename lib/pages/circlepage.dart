import 'package:flutter/material.dart';

class CirclePage extends StatefulWidget {
  const CirclePage({super.key});

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lodione Circle'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue.shade400,
      ),
    );
  }
}
