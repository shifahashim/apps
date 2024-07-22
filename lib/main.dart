import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pages(),
      theme: ThemeData(primaryColor: Color.fromARGB(255, 114, 76, 249)),
    );
  }
}
