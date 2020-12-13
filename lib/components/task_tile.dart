import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.white,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Theme(
        data: ThemeData(
          unselectedWidgetColor: Colors.white,
        ),
        child: Checkbox(
          activeColor: Color(0xff6b0404),
          checkColor: Color(0xff1f1d1d),
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
