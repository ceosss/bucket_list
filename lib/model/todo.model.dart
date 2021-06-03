import 'package:flutter/material.dart';

class TodoModel {
  String todo;
  bool done;
  Color color;
  String category;
  TodoModel({
    @required this.todo,
    @required this.done,
    @required this.color,
    @required this.category,
  });
}

List<TodoModel> dummyTodos = [
  TodoModel(
    todo: "Skydive",
    done: false,
    color: Colors.green,
    category: "Adventure",
  ),
  TodoModel(
    todo: "Go to Shanghai",
    done: false,
    color: Colors.yellow,
    category: "Travel",
  ),
  TodoModel(
    todo: "Take hot air baloon",
    done: true,
    color: Colors.lightBlue,
    category: "Adventure",
  ),
];
