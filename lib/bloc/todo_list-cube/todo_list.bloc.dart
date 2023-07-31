import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

part 'todo_list.event.dart';
part 'todo_list.state.dart';

class TodoList2Bloc extends Bloc<TodoList2Event, TodoList2State> {
  TodoList2Bloc() : super(TodoList2Initial(todoListInitial: [])) {
    on<AddItemIntoList>((event, emit) {
      state.todoList.add(Text(event.item));

      emit(TodoListUpdated(todoListUpdated: state.todoList));
    });
  }
}
