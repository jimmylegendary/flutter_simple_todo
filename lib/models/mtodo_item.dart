import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'mtodo_item.g.dart';

@HiveType(typeId: 0)
class TodoItemGroup extends HiveObject {
  TodoItemGroup({
    this.date,
    this.modifiedTime,
    this.todoItems,
  });

  @HiveField(0)
  DateTime? date;

  @HiveField(1)
  DateTime? modifiedTime;

  @HiveField(2)
  List<TodoItem>? todoItems;
}

@HiveType(typeId: 1)
class TodoItem extends HiveObject {
  TodoItem({
    this.color,
    this.time,
    this.text,
  });

  @HiveField(0)
  Color? color;

  @HiveField(1)
  DateTime? time;

  @HiveField(2)
  String? text;
}
