import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class Todolist extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? delete;
  Todolist(
      {super.key,
      required this.taskname,
      required this.taskcompleted,
      required this.onChanged,
      required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: delete,
            icon: Icons.delete,
            backgroundColor: Colors.white,
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Text(
                taskname,
                style: TextStyle(color: Colors.white),
              ),
              Checkbox(value: taskcompleted, onChanged: onChanged)
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
