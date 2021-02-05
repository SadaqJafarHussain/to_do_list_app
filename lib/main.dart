import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/task_data.dart';
import 'package:to_do/tasks_list.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TasksList(),
      ),
    );
  }
}
