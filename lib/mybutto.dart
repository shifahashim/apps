import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  // VoidCallback oncancel;
  Mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        color: Colors.white,
        child: Text(
          text,
          selectionColor: Colors.indigo,
        ));
  }
}
