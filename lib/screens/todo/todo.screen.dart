import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Widget> todoList = [];
  final TextEditingController todoController = TextEditingController();
  final ScrollController listBuilderController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Todo'),
        ),
        body: Column(children: [
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
            child:
                ElevatedButton(onPressed: saveTodo, child: const Text("Save")),
          ),
          Expanded(
              child: SizedBox(
                  width: 300,
                  height: 500,
                  child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: ((context, index) => todoList[index]),
                  )))
        ]));
  }

  void saveTodo() {
    final String value = todoController.text;
    setState(() {
      todoList.add(
        Text("${todoList.length + 1}. $value",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      );
      todoController.text = '';
    });
  }
}

// Text(todoList[index],
//   style: const TextStyle(
//       fontSize: 24, fontWeight: FontWeight.bold))