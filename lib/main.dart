import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/controllers/todo_controller.dart';
import 'package:flutter_simple_todo/models/mtodo_item.dart';
import 'package:flutter_simple_todo/pages/todo_home.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoItemGroupAdapter());
  Hive.registerAdapter(TodoItemAdapter());
  await Hive.openBox<TodoItemGroup>('TodoList');
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TodoApp',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => TodoHome(),
          binding: TodoHomeBinding(),
        ),
      ],
    );
  }
}
