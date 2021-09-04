import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

@HiveType()
class TodoItemGroup {
  TodoItemGroup({
    this.date,
    this.modifiedTime,
    this.todoItems,
  });

  DateTime? date;
  DateTime? modifiedTime;
  List<TodoItem>? todoItems;
}

class TodoItem {
  TodoItem({
    this.color,
    this.time,
    this.text,
  });
  Color? color;
  DateTime? time;
  String? text;
}
