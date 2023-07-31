part of 'todo_list.bloc.dart';

abstract class TodoList2State {
  List<Widget> todoList;

  TodoList2State({required this.todoList});
}

class TodoList2Initial extends TodoList2State {
  TodoList2Initial({required List<Widget> todoListInitial})
      : super(todoList: todoListInitial);
}

class TodoListUpdated extends TodoList2State {
  TodoListUpdated({required List<Widget> todoListUpdated})
      : super(todoList: todoListUpdated);
}
