import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
part 'todo_list.event.dart';
part 'todo_list.state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(TodoListInitial(todoList: [])) {
    on<AddItem>(_addItem);
  }

  void _addItem(AddItem event, Emitter<TodoListState> emit) {
    state.todoList.add(Text("${state.todoList.length + 1}. ${event.item}",
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));

    emit(TodoListUpdated(todoList: state.todoList));
  }
}
