import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(
      {required this.onPressed, required this.name, required this.color});

  final GestureTapCallback onPressed;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(fontSize: 30),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
