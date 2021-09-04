// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtodo_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoItemGroupAdapter extends TypeAdapter<TodoItemGroup> {
  @override
  final int typeId = 0;

  @override
  TodoItemGroup read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoItemGroup(
      date: fields[0] as DateTime?,
      modifiedTime: fields[1] as DateTime?,
      todoItems: (fields[2] as List?)?.cast<TodoItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, TodoItemGroup obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.modifiedTime)
      ..writeByte(2)
      ..write(obj.todoItems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoItemGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TodoItemAdapter extends TypeAdapter<TodoItem> {
  @override
  final int typeId = 1;

  @override
  TodoItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoItem(
      color: fields[0] as Color?,
      time: fields[1] as DateTime?,
      text: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TodoItem obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
