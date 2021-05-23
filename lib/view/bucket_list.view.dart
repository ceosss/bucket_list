import 'package:bucket_list/view/home.view.dart';
import 'package:flutter/material.dart';

class BucketList extends StatelessWidget {
  BucketList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          accentColor: Color(0xff1E292F),
          scaffoldBackgroundColor: Color(0xff1E292F),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headline2: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(fontSize: 17),
            bodyText2: TextStyle(),
          )),
      home: Home(),
    );
  }
}
