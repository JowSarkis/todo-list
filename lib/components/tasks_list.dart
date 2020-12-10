import 'package:flutter/material.dart';
import 'package:todo_list/components/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      children: [
        TaskTile(),
      ],
    );
  }
}