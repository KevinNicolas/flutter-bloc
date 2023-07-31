import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/todo');
            },
            child: const Text('Go to todo list'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/todo-bloc');
            },
            child: const Text('Go to BLOC todo list'),
          ),
        ]),
      ),
    );
  }
}
