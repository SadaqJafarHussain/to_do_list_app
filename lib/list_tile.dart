import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/task_data.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Consumer<TaskData>(
        builder: (context,taskData,child){
          return ListView.builder(
            itemCount: taskData.tasksList.length,
            itemBuilder: (context,index){
              return ListTile(
                onLongPress: (){
                  taskData.deleteTask(taskData.tasksList[index]);
                },
                title: Text(taskData.tasksList[index].name,
                  style: TextStyle(
                  decoration: taskData.tasksList[index].isDone?TextDecoration.lineThrough:null,
                  fontSize: 20.0,
                ),),
                trailing: Checkbox(
                  activeColor: Colors.lightBlueAccent,
                  value: taskData.tasksList[index].isDone,
                  onChanged: (value){
                   taskData.updateChecker(index);
                  },
                ),
              );
            },
          );
        }
      ),
    );
  }
}
