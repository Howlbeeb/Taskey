import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is my first task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Taskcheckbox(
          checkBoxState: isChecked,
          toggleCheckBoxState: (bool? checkboxState) {
          }),
    );
  }
}

class Taskcheckbox extends StatelessWidget {
  final bool? checkBoxState;
  final toggleCheckBoxState;

  Taskcheckbox({this.checkBoxState, this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
