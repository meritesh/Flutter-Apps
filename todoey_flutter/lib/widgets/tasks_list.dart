import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
//  can also be used            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallBack: (checkBoxState) {
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggle();
//            });
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
