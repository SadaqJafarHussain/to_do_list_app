import 'package:flutter/cupertino.dart';
import 'package:to_do/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasksList=[
    Task(name: 'hi there'),
    Task(name: 'do your job'),
  ];
  void updateChecker(int index){
    tasksList[index].toggle();
    notifyListeners();
  }
  void addTask(String name){
    var newTask=new Task(name: name);
    tasksList.add(newTask);
    notifyListeners();
  }
  void deleteTask(Task task){
    tasksList.remove(task);
    notifyListeners();
  }
}