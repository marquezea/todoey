import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          color: isChecked ? Colors.black38 : Colors.black,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.amber,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
