import 'package:flutter/material.dart';
import 'package:todoey_flutter/common/styles.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool value;
  final Function onChange;

  TaskTile({this.title, this.value, this.onChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      title: Text(
        title,
        style: value ? kCheckboxTitleChecked : kCheckboxTitleUnchecked,
      ),
      trailing: Checkbox(
        value: value,
        onChanged: onChange,
      ),
    );
  }
}
