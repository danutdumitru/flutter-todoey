import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/common/colors.dart';

class AddTaskScreen extends StatelessWidget {
  static const String ID = 'ADD_TASK_SCREEN';

  String taskName;
  final Function onAdd;

  AddTaskScreen({@required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 117, 117, 117),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, color: kPrimaryColor),
              ),
              TextField(
                onChanged: (value) => taskName = value,
                autofocus: true,
              ),
              SizedBox(
                height: 16.0,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  onAdd(taskName);
                  Navigator.pop(context);
                },
                color: kPrimaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
