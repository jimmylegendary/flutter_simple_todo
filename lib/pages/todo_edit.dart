import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/models/mtodo_item.dart';
import 'package:flutter_simple_todo/widgets/atoms/colored_circle.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void showTodoEditor({
  required BuildContext context,
  required DateTime date,
  DateTime? modifiedTime,
  TodoItem? todoItem,
}) {
  final _timeTextController = TextEditingController();
  final _textTextController = TextEditingController();

  if (modifiedTime != null)
    _timeTextController.text = DateFormat('hh시 mm분').format(modifiedTime);
  if (todoItem != null) _textTextController.text = todoItem.text!;
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: FittedBox(
          child: Column(
            children: [
              Row(
                children: [
                  ColoredCircle(),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '시간 입력',
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
                      controller: _timeTextController,
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
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
                  SizedBox(
                    width: 5,
                  ),
                  ColoredCircle(),
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
                  },
                  child: Text('확인'),
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}
