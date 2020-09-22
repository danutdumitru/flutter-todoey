import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function onTaskChange;

  TasksList({@required this.tasks, @required this.onTaskChange});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TaskTile(
          value: tasks[index].done,
          title: tasks[index].title,
          onChange: (bool value) => onTaskChange(index, value),
        ),
      ),
    );
  }
}
