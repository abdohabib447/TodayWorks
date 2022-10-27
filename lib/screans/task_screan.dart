import 'package:flutter/material.dart';
import 'package:todayapp/model/task_data.dart';
import 'package:todayapp/screans/add_task_screan.dart';
import 'package:todayapp/widget/tasks_widget.dart';
import 'package:provider/provider.dart';
import '../model/task.dart';

class taskSkreen extends StatelessWidget {
  const taskSkreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddScrean((newTextTitle) {
                          // setState(() {
                          //   tasks.add(Task(taskname: newTextTitle));
                          //   Navigator.pop(context);
                          // });
                        }))));
          },
          backgroundColor: Colors.black38,
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "TodayDo",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "${Provider.of<TaskData>(context).tasks.length} Tasks",
                style: TextStyle(color: Colors.black38, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Tasklist(),
                ),
              ),
            ],
          ),
        ));
  }
}
