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
              initialLabelIndex: 0,
              labels: ['Todo', 'Done'],
              cornerRadius: 50,
              activeBgColor: Theme.of(context).accentColor,
              inactiveBgColor: Colors.grey.withOpacity(0.5),
              inactiveFgColor: Colors.white,
              fontSize: 16,
              onToggle: (index) {
                print('switched to: $index');
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
