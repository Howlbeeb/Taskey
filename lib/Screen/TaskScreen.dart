import 'package:flutter/material.dart';
import 'package:taskey/widgets/tasks_list.dart';

import 'add_task_screen.dart';
class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context)=>AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Taskey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}


