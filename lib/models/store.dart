import 'dart:async';

import 'package:flutter/foundation.dart';
import 'task.dart';

class Store extends ChangeNotifier {
  List<Task> tasks = [];

  int get tasksCount {
    return tasks.length;
  }

  void addTask(name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void handleCheck(index) {
    tasks[index].toggleDone();
    notifyListeners();
    deleteAfterChecked(index);
  }

  void deleteAfterChecked(index) {
    Timer(Duration(seconds: 1), () {
      tasks.removeAt(index);
      notifyListeners();
    });
  }
}
