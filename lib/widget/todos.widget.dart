import 'package:bucket_list/widget/todo.widget.dart';
import 'package:flutter/material.dart';

class Todos extends StatelessWidget {
  const Todos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Todo(),
          Todo(),
          Todo(),
          Todo(),
          Todo(),
          Todo(),
          Todo(),
        ],
      ),
    );
  }
}
