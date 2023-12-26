import 'package:flutter/material.dart';
import 'package:json/screen/todos/provider/todos_provider.dart';
import 'package:provider/provider.dart';

import '../../../util/color.dart';
import '../../comments/provider/comments_provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TodoProvider? providerr;
  TodoProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<TodoProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerw = context.watch<TodoProvider>();
    providerr = context.read<TodoProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          centerTitle: true,
          title: const Text(
            'Todos',
            style:TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.comment.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.comment[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.comment[index].title}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
