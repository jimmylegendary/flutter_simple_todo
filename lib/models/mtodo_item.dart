import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'mtodo_item.g.dart';

@HiveType(typeId: 0)
class TodoItemGroup extends HiveObject {
  TodoItemGroup({
    required this.date,
    required this.modifiedTime,
    required this.todoItems,
  });

  @HiveField(0)
  DateTime date;

  @HiveField(1)
  DateTime modifiedTime;

  @HiveField(2)
  List<TodoItem> todoItems;
}

@HiveType(typeId: 1)
class TodoItem extends HiveObject {
  TodoItem({
    required this.color,
    required this.time,
    required this.text,
  });

  @HiveField(0)
  @HiveType(typeId: 2)
  Color color;

  @HiveField(1)
  DateTime time;

  @HiveField(2)
  String text;
}
