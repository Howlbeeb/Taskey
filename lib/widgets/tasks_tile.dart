import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is my first task'),
      trailing: Taskcheckbox(),
    );
  }
}

class Taskcheckbox extends StatefulWidget {
  @override
  State<Taskcheckbox> createState() => _TaskcheckboxState();
}

class _TaskcheckboxState extends State<Taskcheckbox> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Checkbox(
    activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (bool?newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}

