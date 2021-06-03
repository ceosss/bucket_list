import 'package:bucket_list/model/todo.model.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  final TodoModel data;
  Todo({Key key, @required this.data}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
          top: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ),
      child: Row(
        children: [
          CircularCheckBox(
              value: widget.data.done,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              onChanged: (bool x) {
                // someBooleanValue = !someBooleanValue;
              }),
          Expanded(
            child: Text(
              widget.data.todo,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.drag_handle_rounded,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 15,
                  height: 60,
                  color: widget.data.color,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
