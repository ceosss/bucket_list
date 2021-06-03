import 'package:bucket_list/model/todo.model.dart';
import 'package:bucket_list/widget/todo.widget.dart';
import 'package:flutter/material.dart';

class Todos extends StatelessWidget {
  const Todos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: dummyTodos.length,
      itemBuilder: (context, index) => Todo(
        data: dummyTodos[index],
      ),
    );
  }
}
