import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy bread'),
  ];
  void addTask(String newTask) {
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }
}
