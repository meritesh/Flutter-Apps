import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:provider/provider.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen({this.addTaskCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35),
            ),
            TextField(
              cursorColor: Colors.lightBlueAccent,
              autofocus: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
