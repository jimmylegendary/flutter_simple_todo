import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/pages/todo_edit.dart';

class TodoAppBar extends StatelessWidget implements PreferredSizeWidget {
  TodoAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            showTodoEditor(
              context: context,
              date: DateTime.now(),
            );
          },
          icon: Icon(
            Icons.add,
            color: Colors.black,
            size: preferredSize.height * 0.7,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}
