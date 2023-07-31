part of 'todo_list.bloc.dart';

sealed class TodoList2Event {}

class AddItemIntoList extends TodoList2Event {
  final String item;

  AddItemIntoList({required this.item});
}
