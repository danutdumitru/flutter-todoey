import 'package:flutter/material.dart';
import 'package:todoey_flutter/common/colors.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TasksScreen.ID,
      routes: {
        AddTaskScreen.ID: (context) => AddTaskScreen(),
        TasksScreen.ID: (context) => TasksScreen(),
      },
      theme: ThemeData.light().copyWith(primaryColor: kPrimaryColor),
    );
  }
}
