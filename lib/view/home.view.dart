import 'package:bucket_list/widget/categories.widget.dart';
import 'package:bucket_list/widget/head.widget.dart';
import 'package:bucket_list/widget/todos.widget.dart';
import 'package:flutter/material.dart';

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
            Container(
              child: Text(
                "Todo / Done",
                style: Theme.of(context).textTheme.headline2,
              ),
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
