import 'package:flutter/material.dart';
import 'package:todayapp/model/task_data.dart';
import 'package:todayapp/screans/task_screan.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: taskSkreen(),
      ),
    );
  }
}
