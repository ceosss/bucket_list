import 'package:bucket_list/widget/categories.widget.dart';
import 'package:bucket_list/widget/head.widget.dart';
import 'package:bucket_list/widget/todos.widget.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _toggle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Head(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Categories(),
            ),
            SizedBox(height: 20),
            ToggleSwitch(
              initialLabelIndex: _toggle,
              labels: ['Todo', 'Done'],
              cornerRadius: 50,
              activeBgColor: Theme.of(context).accentColor,
              inactiveBgColor: Colors.grey.withOpacity(0.5),
              inactiveFgColor: Colors.white,
              fontSize: 16,
              onToggle: (index) {
                // Update toggle
                setState(() {
                  _toggle = index;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Todos(),
            ),
          ],
        ),
      ),
    );
  }
}
