import 'package:flutter/material.dart';
import 'package:todayapp/model/task_data.dart';
import 'package:todayapp/widget/task_widgid.dart';
import 'package:provider/provider.dart';
import 'package:todayapp/model/task_data.dart';
import '../model/task_data.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return Tasktile(
                jopName: taskData.tasks[index].taskname,
                ischecked: taskData.tasks[index].ischecek,
                checkbox: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTileDelete: () {
                  taskData.deleteTesk(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
