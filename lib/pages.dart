import 'package:flutter/material.dart';
import 'package:todo/dialogbox.dart';
import 'todolist.dart';

class pages extends StatefulWidget {
  const pages({super.key});

  @override
  State<pages> createState() => pagesState();
}

class pagesState extends State<pages> {
  final mycontroller = TextEditingController();
  List todocontent = [
    ["make tutorial", false],
    ["do exersice", false]
  ];
  void savedtask() {
    setState(() {
      todocontent.add([mycontroller.text, false]);
      mycontroller.clear();
    });
    Navigator.of(context).pop();
  }

  void newtask() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialogbox(
              controller: mycontroller,
              onsaved: savedtask,
              oncanceled: () => Navigator.of(context).pop());
        });
  }

  void checkboxchanged(bool? value, int index) {
    setState(() {
      todocontent[index][1] = !todocontent[index][1];
    });
  }

  void deletetask(int index) {
    setState(() {
      todocontent.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 169, 178, 229),
        appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Center(child: Text("TO DO")),
            leading: Icon(Icons.menu)),
        floatingActionButton: FloatingActionButton(
          onPressed: newtask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todocontent.length,
          itemBuilder: (context, index) {
            return Todolist(
                taskname: todocontent[index][0],
                taskcompleted: todocontent[index][1],
                onChanged: (value) => checkboxchanged(value, index),
                delete: (context) => deletetask(index));
          },
        ));
  }
}
