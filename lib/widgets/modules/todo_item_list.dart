import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/controllers/todo_controller.dart';
import 'package:flutter_simple_todo/pages/todo_edit.dart';
import 'package:flutter_simple_todo/widgets/atoms/colored_circle.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TodoItemList extends StatelessWidget {
  TodoItemList({
    this.index,
    this.date,
    this.modifiedTime,
  });
  final controller = Get.find<TodoHomeController>();
  final index;
  final date;
  final modifiedTime;

  @override
  Widget build(BuildContext context) {
    final todoItmes =
        controller.todoItemGroupMap.values.elementAt(index).todoItems;

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final todoItem = todoItmes[index];
        return Row(
          children: [
            ColoredCircle(
              color: todoItem.color,
              onTab: () {
                showTodoEditor(
                  context: context,
                  date: date,
                  modifiedTime: modifiedTime,
                  todoItem: todoItem,
                );
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              DateFormat('hh시 mm분').format(
                todoItem.time,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(todoItem.text),
          ],
        );
      },
      itemCount: todoItmes.length,
    );
  }
}
