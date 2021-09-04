import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/controllers/todo_controller.dart';
import 'package:flutter_simple_todo/widgets/modules/todo_appbar.dart';
import 'package:flutter_simple_todo/widgets/modules/todo_item_list.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class TodoHome extends GetView<TodoHomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: TodoAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: controller.todoItemGroup.length > 0
                      ? ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    DateFormat('yyyy년 MM월 dd일').format(
                                      controller.todoItemGroup[index].date ??
                                          DateTime.now(),
                                    ),
                                  ),
                                  Text(
                                    DateFormat('오전 hh시 mm분 수정').format(
                                      controller.todoItemGroup[index]
                                              .modifiedTime ??
                                          DateTime.now(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TodoItemList(
                                    index: index,
                                    date: controller.todoItemGroup[index].date,
                                    modifiedTime: controller
                                        .todoItemGroup[index].modifiedTime,
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: controller.todoItemGroup.length,
                        )
                      : Container(),
                ),
              ],
            ),
          )),
    );
  }
}
