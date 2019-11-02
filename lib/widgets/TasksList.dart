import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/store.dart';
import 'TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: store.tasks[index].name,
                isChecked: store.tasks[index].isDone,
                handleCheck: (checkState) => store.handleCheck(index));
          },
          itemCount: store.tasks.length,
        );
      },
    );
  }
}
