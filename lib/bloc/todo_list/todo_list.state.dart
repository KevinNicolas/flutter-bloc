part of 'todo_list.bloc.dart';

abstract class TodoListState {
  List<Widget> todoList;
  TodoListState({required this.todoList});
}

class TodoListInitial extends TodoListState {
  TodoListInitial({required List<Widget> todoList}) : super(todoList: todoList);
}

class TodoListUpdated extends TodoListState {
  TodoListUpdated({required List<Widget> todoList}) : super(todoList: todoList);
}
