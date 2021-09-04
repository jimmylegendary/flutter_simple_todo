import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/controllers/todo_controller.dart';
import 'package:flutter_simple_todo/models/mtodo_item.dart';
import 'package:flutter_simple_todo/widgets/atoms/colored_circle.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

DateTime convertTodToDt(TimeOfDay tod) {
  final now = DateTime.now();
  return DateTime(
    now.year,
    now.month,
    now.day,
    tod.hour,
    tod.minute,
  );
}

void showTodoEditor({
  required BuildContext context,
  required DateTime date,
  DateTime? modifiedTime,
  TodoItem? todoItem,
}) {
  final _textTextController = TextEditingController();
  String _selectedTime = '${TimeOfDay.now().hour}시 ${TimeOfDay.now().minute}분';
  Color _selectedColor = todoItem?.color ?? Colors.grey;
  DateTime _selectedDateTime = date;
  final controller = Get.find<TodoHomeController>();

  if (modifiedTime != null)
    _selectedTime = DateFormat('hh시 mm분').format(modifiedTime);
  if (todoItem != null) _textTextController.text = todoItem.text!;
  showDialog(
    context: context,
    builder: (context) {
      var box = Hive.box<TodoItemGroup>('TodoList');
      return StatefulBuilder(builder: (context, StateSetter setState) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          content: FittedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    ColoredCircle(
                      color: _selectedColor,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 50,
                      child: GestureDetector(
                        child: Text(
                          _selectedTime,
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                        onTap: () {
                          Future<TimeOfDay?> selectedTime = showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          selectedTime.then(
                            (timeOfDay) {
                              setState(
                                () {
                                  _selectedTime =
                                      '${timeOfDay?.hour}시 ${timeOfDay?.minute}분';
                                  if (timeOfDay != null)
                                    _selectedDateTime =
                                        convertTodToDt(timeOfDay);
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '텍스트 입력',
                          hintStyle: TextStyle(
                            fontSize: 8,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 10,
                        ),
                        cursorWidth: 1,
                        controller: _textTextController,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColoredCircle(
                      color: Colors.red,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.red;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.orange,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.orange;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.yellow,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.yellow;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.green,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.green;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.blue,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.blue;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.purple,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.purple;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColoredCircle(
                      color: Colors.red.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.red.shade100;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.orange.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.orange.shade100;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.yellow.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.yellow.shade100;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.green.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.green.shade100;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.blue.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.blue.shade100;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ColoredCircle(
                      color: Colors.purple.shade100,
                      onTab: () {
                        setState(() {
                          _selectedColor = Colors.purple.shade100;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('삭제'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                      var item = box.get(date.hashCode);
                      if (item != null) {
                        item.todoItems?.add(
                          TodoItem(
                            color: _selectedColor,
                            time: _selectedDateTime,
                            text: _textTextController.text,
                          ),
                        );
                        item.modifiedTime = DateTime.now();
                        box.put(date.hashCode, item);
                      } else {
                        item = TodoItemGroup(
                          date: date,
                          modifiedTime: DateTime.now(),
                          todoItems: [
                            TodoItem(
                              color: _selectedColor,
                              time: _selectedDateTime,
                              text: _textTextController.text,
                            ),
                          ],
                        );
                        box.put(
                          date.hashCode,
                          item,
                        );
                      }
                      controller.todoItemGroup.add(item);
                    },
                    child: Text('확인'),
                  ),
                ),
              ],
            )
          ],
        );
      });
    },
  );
}
