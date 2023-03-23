import 'package:flutter/foundation.dart';
import 'package:tp2_flutter/models/task.dart';

class TaskViewModel extends ChangeNotifier {
  late List<Task> _taskList;

  TaskViewModel() {
    _taskList = [];
  }

  List<Task> get taskList => _taskList;

  void addTask(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  void generateTasks() {
    _taskList = Task.generateTask(50);
    notifyListeners();
  }
}
