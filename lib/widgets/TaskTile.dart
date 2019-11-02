import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/store.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function handleCheck;

  TaskTile({this.isChecked, this.taskTitle, this.handleCheck});

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(builder: (context, store, child) {
      return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: handleCheck,
        ),
      );
    });
  }
}
