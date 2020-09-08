import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Finish presentation'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  String getTaskName(int i) {
    return _tasks[i].name;
  }

  bool getTaskIsDone(int i) {
    return _tasks[i].isDone;
  }

  void updateTask(int i) {
    _tasks[i].toggleDone();
    notifyListeners();
  }

  void deleteTask(int i) {
    _tasks.removeAt(i);
    notifyListeners();
  }
}
