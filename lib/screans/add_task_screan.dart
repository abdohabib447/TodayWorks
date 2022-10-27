import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayapp/model/task_data.dart';

class AddScrean extends StatelessWidget {
  final Function addTaskCallback;
  AddScrean(this.addTaskCallback);
  String? newTextTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black38),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTextTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addNewTask(newTextTitle!);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.black38, primary: Colors.black54),
          ),
        ],
      ),
    );
  }
}
