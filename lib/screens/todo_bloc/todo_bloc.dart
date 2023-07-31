import 'package:bloc_try/bloc/todo_list-cube/todo_list.bloc.dart';
import 'package:bloc_try/bloc/todo_list/todo_list.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBlocScreen extends StatefulWidget {
  const TodoBlocScreen({super.key});

  @override
  State<TodoBlocScreen> createState() => _TodoBlocScreenState();
}

class _TodoBlocScreenState extends State<TodoBlocScreen> {
  final List<Widget> todoList = [];
  final TextEditingController todoController = TextEditingController();
  final ScrollController listBuilderController = ScrollController();

  final TodoListBloc todoListBloc = TodoListBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => todoListBloc)],
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Todo BLOC'),
            ),
            body: BlocBuilder<TodoListBloc, TodoListState>(
                builder: ((context, state) {
              if (state is TodoList2Initial) {
                return const Text('Es initial');
              }
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "ej: walk in the park"),
                    controller: todoController,
                  ),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        final String value = todoController.text;
                        todoListBloc.add(AddItem(item: value));
                        todoController.text = '';
                      },
                      child: const Text("Save")),
                ),
                Expanded(
                    child: SizedBox(
                        width: 300,
                        height: 500,
                        child: ListView.builder(
                          itemCount: state.todoList.length,
                          itemBuilder: ((context, index) =>
                              state.todoList[index]),
                        )))
              ]);
            }))));
  }
}
