part of 'todo_list.bloc.dart';

@immutable
sealed class TodoListEvent {}

final class AddItem extends TodoListEvent {
  final String item;

  AddItem({required this.item});
}
