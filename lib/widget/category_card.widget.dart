import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  CategoryCard({
    Key key,
    @required this.name,
  }) : super(key: key);
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:
          _randomColor.randomColor(colorBrightness: ColorBrightness.dark),
      child: Text(
        name.toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
