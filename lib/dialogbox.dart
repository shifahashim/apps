import 'package:flutter/material.dart';
import 'package:todo/mybutto.dart';

// ignore: must_be_immutable
class Dialogbox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onsaved;
  VoidCallback oncanceled;
  Dialogbox(
      {super.key,
      required this.controller,
      required this.oncanceled,
      required this.onsaved});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.indigo,
        content: Container(
            height: 150,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Mybutton(text: "save", onPressed: onsaved),
                      SizedBox(width: 8),
                      Mybutton(text: "cancel", onPressed: oncanceled)
                    ],
                  )
                ])));
  }
}
