import 'package:flutter/material.dart';
import 'package:todayapp/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskname: "shopping"),
    Task(taskname: "playing football"),
    Task(taskname: "fishing"),
    Task(taskname: "cocking"),
    Task(taskname: "watching tv"),
    Task(taskname: "practice math"),
  ];
  void addNewTask(String newTaskTitle) {
    tasks.add(Task(taskname: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTesk(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
