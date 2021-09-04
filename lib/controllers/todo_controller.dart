import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/models/mtodo_item.dart';
import 'package:get/get.dart';

class TodoHomeController extends GetxController {
  var todoItemGroup = [
    TodoItemGroup(
      date: DateTime.now(),
      modifiedTime: DateTime.now(),
      todoItems: [
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
      ],
    ),
    TodoItemGroup(
      date: DateTime.now(),
      modifiedTime: DateTime.now(),
      todoItems: [
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
      ],
    ),
    TodoItemGroup(
      date: DateTime.now(),
      modifiedTime: DateTime.now(),
      todoItems: [
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
        TodoItem(
          color: Colors.grey,
          time: DateTime.now(),
          text: "스터디 하기",
        ),
      ],
    ),
  ].obs;
}

class TodoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TodoHomeController());
  }
}
