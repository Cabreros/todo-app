import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void add(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}
