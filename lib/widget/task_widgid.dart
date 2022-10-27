import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String jopName;
  final void Function(bool?) checkbox;
  final void Function() listTileDelete;

  Tasktile(
      {required this.ischecked,
      required this.jopName,
      required this.checkbox,
      required this.listTileDelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        jopName,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.black38,
        value: ischecked,
        onChanged: checkbox,
      ),
      onLongPress: listTileDelete,
    );
  }
}
