import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/models/mtodo_item.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class TodoHomeController extends GetxController {
  RxList<TodoItemGroup> todoItemGroup = <TodoItemGroup>[].obs;

  init() {
    var todobox = Hive.box<TodoItemGroup>('TodoList');
    if (todobox.isNotEmpty) {
      for (var i = 0; i < todobox.length; i++) {
        final item = todobox.getAt(i);
        todoItemGroup.add(
          TodoItemGroup(
            date: item?.date,
            modifiedTime: item?.modifiedTime,
            todoItems: item?.todoItems,
          ),
        );
      }
    }
  }
}

class TodoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TodoHomeController());
    Get.find<TodoHomeController>().init();
  }
}
