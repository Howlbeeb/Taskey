import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(padding: EdgeInsets.all(30 ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,

            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),

            ),
          ],
        ),
      ),
    );
  }
}
