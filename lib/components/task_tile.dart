import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(color: Colors.white),
      ),
      trailing: Theme(
        data: ThemeData(
          unselectedWidgetColor: Colors.white,
        ),
        child: Checkbox(
          activeColor: Color(0xff6b0404),
          checkColor: Color(0xff1f1d1d),
          value: false,
          onChanged: (bool value) {},
        ),
      ),
    );
  }
}
