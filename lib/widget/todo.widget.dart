import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  Todo({Key key}) : super(key: key);

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
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          Expanded(
            child: Text(
              "Hello",
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
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 15,
                  height: 60,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
